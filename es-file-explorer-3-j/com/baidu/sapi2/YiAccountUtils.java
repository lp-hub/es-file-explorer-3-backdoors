package com.baidu.sapi2;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import com.baidu.sapi2.log.Logger;
import java.io.IOException;

/* loaded from: classes.dex */
public class YiAccountUtils {
    public static final String BAIDUACCOUNT_ACTION = "com.baidu.account";
    public static final String BAIDUACCOUNT_KEY = "com.baidu.account.key";
    public static final String BAIDUACCOUNT_TYPE = "com.baidu";
    private static YiAccountUtils mInstance = null;
    private static Object mSync = new Object();
    private Context mContext;
    private boolean mIsActivity;

    /* loaded from: classes.dex */
    public interface BaiduAccountCallback {
        void onLoginResult(int i);
    }

    /* loaded from: classes.dex */
    class MyAccountManagerCallback implements AccountManagerCallback<Bundle> {
        private String mAccountType;
        private Activity mActivity;
        private ITokenCallback mCallback;
        private boolean mIfAddAccount;
        public String mytoken = null;

        public MyAccountManagerCallback(ITokenCallback iTokenCallback, String str, boolean z, Activity activity) {
            this.mCallback = null;
            this.mCallback = iTokenCallback;
            this.mAccountType = str;
            this.mIfAddAccount = z;
            this.mActivity = activity;
        }

        private void endAll() {
            if (this.mCallback != null) {
                this.mCallback.onResult(this.mytoken);
            }
            if (this.mActivity instanceof Activity) {
                Intent intent = new Intent(YiAccountUtils.BAIDUACCOUNT_ACTION);
                intent.setComponent(this.mActivity.getComponentName());
                intent.putExtra(YiAccountUtils.BAIDUACCOUNT_KEY, this.mytoken);
                this.mActivity.sendBroadcast(intent);
            }
            notify();
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
            AccountManager accountManager;
            Account[] accountsByType;
            synchronized (this) {
                try {
                    this.mytoken = accountManagerFuture.getResult().getString("authtoken");
                    accountManager = AccountManager.get(YiAccountUtils.this.mContext);
                    accountsByType = accountManager.getAccountsByType(this.mAccountType);
                } catch (Exception e) {
                    endAll();
                }
                if (this.mIfAddAccount && this.mytoken == null && accountsByType.length > 0) {
                    accountManager.getAuthToken(accountsByType[0], "BDUSS", (Bundle) null, this.mActivity, this, (Handler) null);
                } else {
                    endAll();
                }
            }
        }
    }

    public YiAccountUtils(Context context) {
        this.mContext = context;
        this.mIsActivity = context instanceof Activity;
    }

    private Activity getActivity() {
        if (this.mIsActivity) {
            return (Activity) this.mContext;
        }
        return null;
    }

    private String getBaiduAccountDisplayName() {
        String yiUserData = getYiUserData(BDAccountManager.KEY_DISPLAY_NAME);
        return (yiUserData == null || (yiUserData != null && yiUserData.trim().length() == 0)) ? getUserName() : yiUserData;
    }

    public static YiAccountUtils getInstance(Context context) {
        synchronized (mSync) {
            if (mInstance == null) {
                mInstance = new YiAccountUtils(context);
            }
        }
        return mInstance;
    }

    private String getUserName() {
        Account[] accountsByType = AccountManager.get(this.mContext).getAccountsByType(BAIDUACCOUNT_TYPE);
        if (accountsByType == null || accountsByType.length <= 0 || accountsByType[0].name == null) {
            return null;
        }
        return accountsByType[0].name;
    }

    private String getYiUserData(String str) {
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.baidu.account.provider.AccountInfoProvider/accountInfo"), new String[]{str}, null, null, null);
            if (query != null && query.moveToFirst()) {
                return query.getString(query.getColumnIndex(str));
            }
        } catch (SQLiteException e) {
            Logger.w(e);
        }
        return null;
    }

    public String blockingGetBaiduAuthToken(boolean z) {
        AccountManager accountManager;
        Account[] accountsByType;
        if (isLogin() && (accountsByType = (accountManager = AccountManager.get(this.mContext)).getAccountsByType(BAIDUACCOUNT_TYPE)) != null && accountsByType.length > 0) {
            try {
                return accountManager.blockingGetAuthToken(accountsByType[0], "BDUSS", z);
            } catch (AuthenticatorException e) {
                Logger.w(e);
            } catch (OperationCanceledException e2) {
                Logger.w(e2);
            } catch (IOException e3) {
                Logger.w(e3);
            }
        }
        return null;
    }

    public int getNumOfAccounts(String str) {
        if (str == null || str.length() == 0) {
            str = BAIDUACCOUNT_TYPE;
        }
        return AccountManager.get(this.mContext).getAccountsByType(str).length;
    }

    public void getTokenAsync(String str, ITokenCallback iTokenCallback, Activity activity) {
        String str2 = (str == null || str.length() == 0) ? BAIDUACCOUNT_TYPE : str;
        Activity activity2 = activity == null ? getActivity() : activity;
        AccountManager accountManager = AccountManager.get(this.mContext);
        if (accountManager == null) {
            if (iTokenCallback != null) {
                iTokenCallback.onResult(null);
                return;
            }
            return;
        }
        Account[] accountsByType = accountManager.getAccountsByType(str2);
        Bundle bundle = new Bundle();
        bundle.putBoolean("PASSWDCK", true);
        MyAccountManagerCallback myAccountManagerCallback = new MyAccountManagerCallback(iTokenCallback, str2, accountsByType.length == 0, activity2);
        if (accountsByType.length != 0) {
            accountManager.getAuthToken(accountsByType[0], "BDUSS", (Bundle) null, activity2, myAccountManagerCallback, (Handler) null);
        } else {
            accountManager.addAccount(str2, "BDUSS", null, bundle, activity2, myAccountManagerCallback, null);
        }
    }

    public String getUserData(String str) {
        if (str == null || str.trim().length() == 0) {
            return null;
        }
        return str.equals(BDAccountManager.KEY_USERNAME) ? getUserName() : str.equals(BDAccountManager.KEY_DISPLAY_NAME) ? getBaiduAccountDisplayName() : getYiUserData(str);
    }

    public boolean hasYiAccount() {
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this.mContext).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equalsIgnoreCase(BAIDUACCOUNT_TYPE)) {
                return true;
            }
        }
        return false;
    }

    public void invalidateToken(String str, String str2) {
        if (str == null || str.length() == 0) {
            str = BAIDUACCOUNT_TYPE;
        }
        AccountManager accountManager = AccountManager.get(this.mContext);
        if (accountManager != null) {
            accountManager.invalidateAuthToken(str, str2);
        }
    }

    public boolean isLogin() {
        return hasYiAccount() && getNumOfAccounts(BAIDUACCOUNT_TYPE) > 0;
    }

    public void manageAccount() {
        Intent intent = new Intent("android.settings.SYNC_SETTINGS");
        intent.addFlags(268435456);
        this.mContext.startActivity(intent);
    }

    public void removeAccount() {
        AccountManager accountManager = AccountManager.get(this.mContext);
        Account[] accountsByType = accountManager.getAccountsByType(BAIDUACCOUNT_TYPE);
        if (accountsByType.length != 0) {
            accountManager.removeAccount(accountsByType[0], new AccountManagerCallback<Boolean>() { // from class: com.baidu.sapi2.YiAccountUtils.1
                @Override // android.accounts.AccountManagerCallback
                public void run(AccountManagerFuture<Boolean> accountManagerFuture) {
                    try {
                        accountManagerFuture.getResult();
                    } catch (Exception e) {
                        Logger.w(e);
                    }
                }
            }, null);
        }
    }

    public void setAccount(String str) {
        if (str == null || str.length() == 0) {
            str = BAIDUACCOUNT_TYPE;
        }
        AccountManager accountManager = AccountManager.get(this.mContext);
        if (accountManager != null) {
            Account[] accountsByType = accountManager.getAccountsByType(str);
            if (accountsByType.length == 1) {
                Intent intent = new Intent("android.settings.ACCOUNT_SYNC_SETTINGS");
                intent.addFlags(268435456);
                intent.putExtra("account", accountsByType[0]);
                this.mContext.startActivity(intent);
            }
        }
    }

    public void startFillNameActivity(Activity activity, int i, boolean z) {
        Intent intent = new Intent(Constants.SAPI_ACTION_FILLNAME);
        intent.setFlags(268435456);
        intent.putExtra("show_dialog", z);
        activity.startActivityForResult(intent, i);
    }
}
