package com.baidu.sapi2.loginshare;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.log.Logger;
import com.baidu.sapi2.share.IShareListener;
import com.baidu.sapi2.share.ShareAssistant;
import com.baidu.sapi2.share.ShareModel;
import com.baidu.sapi2.social.config.Sex;
import com.baidu.sapi2.social.config.SocialType;
import com.baidu.sapi2.social.model.SocialToken;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Sharer {
    private static final int DELAYED_TIME = 100;
    private Context mContext = null;
    private ShareAssistant mShareAssistant = null;
    private FileStorage mDataStorage = null;
    private Token mToken = null;
    private StatisticsHelper mStatisticsHelper = null;
    private EnableHelper mEnableHelper = new EnableHelper();
    private ListenerHelper mListenerHelper = new ListenerHelper();
    private String mValidTrue = "1";
    private String mValidFalse = "0";
    private String mIsSocialTrue = "1";
    private String mIsSocialFalse = "0";
    private String mEnableTrue = "1";
    private String mEnableFalse = "0";
    private volatile boolean mIsInit = false;
    private NetCheckHelper mNetCheckHelper = null;
    private volatile boolean mIsNetChecking = false;
    private ArrayList<ShareModel> mWaitingList = new ArrayList<>();
    private IShareListener mShareListener = new IShareListener() { // from class: com.baidu.sapi2.loginshare.Sharer.1
        @Override // com.baidu.sapi2.share.IShareListener
        public void onShareEvent(ShareModel shareModel) {
            String str = shareModel.mAction;
            if (Utils.isValid(str)) {
                if (Keystore.getLoginAction().equals(str)) {
                    Sharer.this.handleLogin(shareModel);
                    return;
                }
                if (Keystore.getLogoutAction().equals(str)) {
                    Sharer.this.handleLogout(shareModel);
                } else if (Keystore.getSyncAction().equals(str)) {
                    Sharer.this.handleSync(shareModel);
                } else if (Keystore.getSyncReplyAction().equals(str)) {
                    Sharer.this.handleSyncReply(shareModel);
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class NetCheckHelper implements Runnable {
        private static final String KEY_APPCOMMUNICATE = "appcommunicate";
        private static final int TIME_OUT = 5000;
        private String mBduss;
        private boolean mIsValid;

        NetCheckHelper(boolean z, String str) {
            this.mBduss = null;
            this.mIsValid = true;
            this.mIsValid = z;
            this.mBduss = str;
        }

        /* JADX WARN: Not initialized variable reg: 0, insn: 0x0093: MOVE (r1 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:27:0x0092 */
        /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private Boolean asyncConnect() {
            HttpURLConnection httpURLConnection;
            HttpURLConnection httpURLConnection2;
            boolean z;
            HttpURLConnection httpURLConnection3 = null;
            try {
                try {
                    httpURLConnection = (HttpURLConnection) new URL(Keystore.getUrl()).openConnection();
                    try {
                        httpURLConnection.setDoInput(false);
                        httpURLConnection.setDoOutput(true);
                        httpURLConnection.setUseCaches(false);
                        httpURLConnection.setReadTimeout(TIME_OUT);
                        httpURLConnection.setConnectTimeout(TIME_OUT);
                        httpURLConnection.setRequestMethod("GET");
                        httpURLConnection.connect();
                        if (httpURLConnection.getResponseCode() != 200) {
                            z = true;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } else {
                            InputStream inputStream = httpURLConnection.getInputStream();
                            byte[] bArr = new byte[inputStream.available()];
                            inputStream.read(bArr);
                            inputStream.close();
                            httpURLConnection.disconnect();
                            z = !"0".equals(new JSONObject(new String(bArr)).getString(KEY_APPCOMMUNICATE));
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        }
                    } catch (Exception e) {
                        z = true;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return z;
                    }
                } catch (Throwable th) {
                    httpURLConnection3 = httpURLConnection2;
                    th = th;
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnection3 != null) {
                }
                throw th;
            }
            return z;
        }

        private void onFinish(Boolean bool) {
            boolean booleanValue = bool.booleanValue();
            long currentTimeMillis = System.currentTimeMillis();
            Sharer.this.mEnableHelper.setEnable(booleanValue);
            Sharer.this.mEnableHelper.setCheckTime(currentTimeMillis);
            Sharer.this.mDataStorage.put(Keystore.getCheckTime(), currentTimeMillis + "");
            Sharer.this.mDataStorage.put(Keystore.getIsEnable(), booleanValue ? Sharer.this.mEnableTrue : Sharer.this.mEnableFalse);
            Sharer.this.mDataStorage.commit();
            ShareModel shareModel = null;
            synchronized (Sharer.this.mWaitingList) {
                int size = Sharer.this.mWaitingList.size();
                if (size > 0) {
                    shareModel = (ShareModel) Sharer.this.mWaitingList.get(size - 1);
                    Sharer.this.mWaitingList.clear();
                }
            }
            if (shareModel == null || Sharer.this.mShareAssistant == null || !Sharer.this.mShareAssistant.share(shareModel) || !this.mIsValid) {
                return;
            }
            Sharer.this.mStatisticsHelper.doUpload(1, this.mBduss);
        }

        @Override // java.lang.Runnable
        public void run() {
            Sharer.this.mIsNetChecking = true;
            onFinish(asyncConnect());
            Sharer.this.mIsNetChecking = false;
        }
    }

    private boolean check(ShareModel shareModel, boolean z, String str) {
        if (!SapiHelper.getInstance().isShare()) {
            return true;
        }
        if (hasCheckToday()) {
            boolean share = this.mEnableHelper.isEnable() ? this.mShareAssistant.share(shareModel) : false;
            if (share && z) {
                this.mStatisticsHelper.doUpload(1, str);
            }
            return share;
        }
        synchronized (this.mWaitingList) {
            this.mWaitingList.add(shareModel);
        }
        if (this.mIsNetChecking) {
            return true;
        }
        this.mNetCheckHelper = new NetCheckHelper(z, str);
        new Thread(this.mNetCheckHelper).start();
        return true;
    }

    private HashMap<SocialType, SocialToken> getSocialAccount(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray == null || jSONArray.length() == 0) {
                return null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = new JSONObject(jSONArray.optString(i));
                    SocialToken socialToken = new SocialToken();
                    socialToken.isBinded = jSONObject.optBoolean("isBinded");
                    socialToken.username = jSONObject.optString(BDAccountManager.KEY_USERNAME);
                    socialToken.sex = Sex.getSex(jSONObject.optInt("sex"));
                    socialToken.headURL = jSONObject.optString("headURL");
                    socialToken.type = SocialType.getSocialType(jSONObject.optInt("type"));
                    linkedHashMap.put(socialToken.type, socialToken);
                } catch (JSONException e) {
                }
            }
            return linkedHashMap;
        } catch (JSONException e2) {
            return null;
        }
    }

    private JSONArray getSocialAccount(HashMap<SocialType, SocialToken> hashMap) {
        if (hashMap == null || hashMap.size() == 0) {
            return new JSONArray();
        }
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry<SocialType, SocialToken> entry : hashMap.entrySet()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("isBinded", entry.getValue().isBinded);
                jSONObject.put(BDAccountManager.KEY_USERNAME, entry.getValue().username);
                jSONObject.put("sex", entry.getValue().sex);
                jSONObject.put("headURL", entry.getValue().headURL);
                jSONObject.put("type", entry.getValue().type.getType());
            } catch (JSONException e) {
                Logger.w(e);
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLogin(ShareModel shareModel) {
        HashMap<String, String> hashMap = shareModel.mData;
        Token token = new Token();
        for (String str : hashMap.keySet()) {
            if (Keystore.getUsername().equals(str)) {
                token.mUsername = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getEmail().equals(str)) {
                token.mEmail = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getPhoneNumber().equals(str)) {
                token.mPhoneNumber = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getBduss().equals(str)) {
                String str2 = hashMap.get(str);
                if (!Utils.isValid(str2)) {
                    return;
                } else {
                    token.mBduss = LoginShareCrypto.decrypt(this.mContext, str2);
                }
            } else if (Keystore.getPtoken().equals(str)) {
                token.mPtoken = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getJson().equals(str)) {
                token.mJson = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getDisplayname().equals(str)) {
                token.mDisplayname = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getIsSocialAccount().equals(str)) {
                token.isSocialAccount = this.mIsSocialTrue.equals(LoginShareCrypto.decrypt(this.mContext, hashMap.get(str)));
            } else if (Keystore.getSocialAccounts().equals(str)) {
                token.socialTokenMap = getSocialAccount(LoginShareCrypto.decrypt(this.mContext, hashMap.get(str)));
            } else if (Keystore.getDeviceToken().equals(str)) {
                String str3 = hashMap.get(str);
                if (!TextUtils.isEmpty(str3)) {
                    token.deviceToken = LoginShareCrypto.decrypt(this.mContext, str3);
                }
            } else {
                token.mExtras.put(str, LoginShareCrypto.decrypt(this.mContext, hashMap.get(str)));
            }
        }
        if (isValid(token)) {
            if (SapiHelper.getInstance().isLogin() && SapiHelper.getInstance().getToken().isSocialAccount && !token.isSocialAccount) {
                syncStorage(token.mBduss);
                return;
            }
            syncStorage(true, token.mDisplayname, token.mUsername, token.mEmail, token.mPhoneNumber, token.mBduss, token.mPtoken, token.mExtras, token.mJson, token.isSocialAccount, token.socialTokenMap, token.deviceToken);
            token.mEvent = LoginShareEvent.VALID;
            this.mToken = token;
            this.mStatisticsHelper.doUpload(2, token.mBduss);
            this.mListenerHelper.onLoginShareEvent(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLogout(ShareModel shareModel) {
        HashMap<String, String> hashMap = shareModel.mData;
        Token token = new Token();
        HashMap hashMap2 = new HashMap();
        for (String str : hashMap.keySet()) {
            if (Keystore.getUsername().equals(str)) {
                token.mUsername = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getEmail().equals(str)) {
                token.mEmail = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getPhoneNumber().equals(str)) {
                token.mPhoneNumber = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getBduss().equals(str)) {
                String str2 = hashMap.get(str);
                if (!Utils.isValid(str2)) {
                    return;
                } else {
                    token.mBduss = LoginShareCrypto.decrypt(this.mContext, str2);
                }
            } else if (Keystore.getPtoken().equals(str)) {
                token.mPtoken = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getDisplayname().equals(str)) {
                token.mDisplayname = LoginShareCrypto.decrypt(this.mContext, hashMap.get(str));
            } else if (Keystore.getIsSocialAccount().equals(str)) {
                token.isSocialAccount = this.mIsSocialTrue.equals(LoginShareCrypto.decrypt(this.mContext, hashMap.get(str)));
            } else if (Keystore.getSocialAccounts().equals(str)) {
                token.socialTokenMap = getSocialAccount(LoginShareCrypto.decrypt(this.mContext, hashMap.get(str)));
            } else if (Keystore.getDeviceToken().equals(str)) {
                String str3 = hashMap.get(str);
                if (!TextUtils.isEmpty(str3)) {
                    token.deviceToken = LoginShareCrypto.decrypt(this.mContext, str3);
                }
            } else {
                String str4 = hashMap.get(str);
                hashMap2.put(str, str4);
                token.mExtras.put(str, LoginShareCrypto.decrypt(this.mContext, str4));
            }
        }
        if (isValid(token)) {
            if (SapiHelper.getInstance().isLogin() && SapiHelper.getInstance().getToken().isSocialAccount && !token.isSocialAccount) {
                syncStorage(token.mBduss);
                return;
            }
            token.mEvent = LoginShareEvent.INVALID;
            syncStorage(false, token.mDisplayname, token.mUsername, token.mEmail, token.mPhoneNumber, token.mBduss, token.mPtoken, token.mExtras, token.mJson, token.isSocialAccount, token.socialTokenMap, token.deviceToken);
            this.mToken = token;
            this.mListenerHelper.onLoginShareEvent(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSync(ShareModel shareModel) {
        String str = shareModel.mFrom;
        if (Utils.isValid(this.mDataStorage.getString(Keystore.getIsValid()))) {
            String encrypt = LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getBduss()));
            if (Utils.isValid(encrypt)) {
                ShareModel shareModel2 = new ShareModel();
                shareModel2.mAction = Keystore.getSyncReplyAction();
                shareModel2.mData.put(Keystore.getIsValid(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getIsValid())));
                shareModel2.mData.put(Keystore.getUsername(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getUsername())));
                shareModel2.mData.put(Keystore.getEmail(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getEmail())));
                shareModel2.mData.put(Keystore.getPhoneNumber(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getPhoneNumber())));
                shareModel2.mData.put(Keystore.getBduss(), encrypt);
                shareModel2.mData.put(Keystore.getPtoken(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getPtoken())));
                shareModel2.mData.put(Keystore.getExtra(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getExtra())));
                shareModel2.mData.put(Keystore.getDisplayname(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getDisplayname())));
                shareModel2.mData.put(Keystore.getIsSocialAccount(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getIsSocialAccount())));
                shareModel2.mData.put(Keystore.getSocialAccounts(), this.mDataStorage.getString(Keystore.getSocialAccounts()));
                shareModel2.mData.put(Keystore.getDeviceToken(), LoginShareCrypto.encrypt(this.mContext, this.mDataStorage.getString(Keystore.getDeviceToken())));
                ArrayList<String> arrayList = new ArrayList<>();
                arrayList.add(str);
                this.mShareAssistant.share(shareModel2, arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSyncReply(ShareModel shareModel) {
        HashMap<String, String> hashMap = shareModel.mData;
        String str = hashMap.get(Keystore.getIsValid());
        String str2 = hashMap.get(Keystore.getUsername());
        String str3 = hashMap.get(Keystore.getEmail());
        String str4 = hashMap.get(Keystore.getPhoneNumber());
        String str5 = hashMap.get(Keystore.getBduss());
        String str6 = hashMap.get(Keystore.getPtoken());
        String str7 = hashMap.get(Keystore.getExtra());
        String str8 = hashMap.get(Keystore.getDisplayname());
        String str9 = hashMap.get(Keystore.getIsSocialAccount());
        String str10 = hashMap.get(Keystore.getSocialAccounts());
        String str11 = hashMap.get(Keystore.getDeviceToken());
        Token token = new Token();
        String decrypt = LoginShareCrypto.decrypt(this.mContext, str);
        String decrypt2 = LoginShareCrypto.decrypt(this.mContext, str2);
        String decrypt3 = LoginShareCrypto.decrypt(this.mContext, str3);
        String decrypt4 = LoginShareCrypto.decrypt(this.mContext, str4);
        String decrypt5 = LoginShareCrypto.decrypt(this.mContext, str5);
        String decrypt6 = LoginShareCrypto.decrypt(this.mContext, str6);
        String decrypt7 = LoginShareCrypto.decrypt(this.mContext, str7);
        String decrypt8 = LoginShareCrypto.decrypt(this.mContext, str8);
        String decrypt9 = LoginShareCrypto.decrypt(this.mContext, str9);
        String decrypt10 = LoginShareCrypto.decrypt(this.mContext, str10);
        String decrypt11 = LoginShareCrypto.decrypt(this.mContext, str11);
        if (Utils.isValid(decrypt) && Utils.isValid(decrypt5)) {
            if (Utils.isValid(decrypt7)) {
                HashMap<String, String> hashMap2 = new HashMap<>();
                try {
                    JSONObject jSONObject = new JSONObject(decrypt7);
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        hashMap2.put(next, jSONObject.optString(next));
                    }
                    token.mExtras = hashMap2;
                } catch (JSONException e) {
                    Logger.w(e);
                    return;
                }
            }
            token.mEvent = this.mValidTrue.equals(decrypt) ? LoginShareEvent.VALID : LoginShareEvent.INVALID;
            token.mUsername = decrypt2;
            token.mEmail = decrypt3;
            token.mPhoneNumber = decrypt4;
            token.mBduss = decrypt5;
            token.mPtoken = decrypt6;
            token.mDisplayname = decrypt8;
            token.isSocialAccount = this.mIsSocialTrue.equals(decrypt9);
            token.socialTokenMap = getSocialAccount(decrypt10);
            if (!TextUtils.isEmpty(decrypt11)) {
                token.deviceToken = decrypt11;
            }
            if (SapiHelper.getInstance().isLogin() && SapiHelper.getInstance().getToken().isSocialAccount && !token.isSocialAccount) {
                syncStorage(token.mBduss);
            } else if (syncStorage(this.mValidTrue.equals(decrypt), decrypt8, decrypt2, decrypt3, decrypt4, decrypt5, decrypt6, decrypt7, token.isSocialAccount, token.socialTokenMap, token.deviceToken)) {
                this.mToken = token;
                this.mListenerHelper.onLoginShareEvent(token);
            }
        }
    }

    private boolean hasCheckToday() {
        long checkTime = this.mEnableHelper.getCheckTime();
        Date date = new Date(System.currentTimeMillis());
        long time = new Date(date.getYear(), date.getMonth(), date.getDate()).getTime();
        return checkTime < 86400000 + time && checkTime >= time;
    }

    private static boolean isValid(Token token) {
        return token != null && token.mExtras != null && Utils.isValid(token.mBduss) && Utils.isValid(token.mPtoken);
    }

    private boolean syncStorage(String str) {
        if (this.mDataStorage == null || !this.mToken.isSocialAccount) {
            return false;
        }
        this.mDataStorage.put(Keystore.getOtherBduss(), str);
        return this.mDataStorage.commit();
    }

    private boolean syncStorage(boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z2, HashMap<SocialType, SocialToken> hashMap, String str8) {
        if (this.mDataStorage == null) {
            return false;
        }
        this.mDataStorage.put(Keystore.getIsValid(), z ? "1" : "0");
        this.mDataStorage.put(Keystore.getUsername(), str2);
        this.mDataStorage.put(Keystore.getEmail(), str3);
        this.mDataStorage.put(Keystore.getPhoneNumber(), str4);
        this.mDataStorage.put(Keystore.getBduss(), str5);
        this.mDataStorage.put(Keystore.getPtoken(), str6);
        if (Utils.isValid(str7)) {
            this.mDataStorage.put(Keystore.getExtra(), str7);
        }
        this.mDataStorage.put(Keystore.getDisplayname(), str);
        this.mDataStorage.put(Keystore.getIsSocialAccount(), z2 ? this.mIsSocialTrue : this.mIsSocialFalse);
        this.mDataStorage.put(Keystore.getSocialAccounts(), getSocialAccount(hashMap));
        if (!TextUtils.isEmpty(str8)) {
            this.mDataStorage.put(Keystore.getDeviceToken(), str8);
        }
        return this.mDataStorage.commit();
    }

    private boolean syncStorage(boolean z, String str, String str2, String str3, String str4, String str5, String str6, HashMap<String, String> hashMap, String str7, boolean z2, HashMap<SocialType, SocialToken> hashMap2, String str8) {
        if (this.mDataStorage == null) {
            return false;
        }
        this.mDataStorage.put(Keystore.getIsValid(), z ? "1" : "0");
        this.mDataStorage.put(Keystore.getUsername(), str2);
        this.mDataStorage.put(Keystore.getEmail(), str3);
        this.mDataStorage.put(Keystore.getPhoneNumber(), str4);
        this.mDataStorage.put(Keystore.getBduss(), str5);
        this.mDataStorage.put(Keystore.getPtoken(), str6);
        this.mDataStorage.put(Keystore.getJson(), str7);
        if (hashMap != null) {
            this.mDataStorage.put(Keystore.getExtra(), new JSONObject(hashMap).toString());
        }
        this.mDataStorage.put(Keystore.getDisplayname(), str);
        this.mDataStorage.put(Keystore.getIsSocialAccount(), z2 ? this.mIsSocialTrue : this.mIsSocialFalse);
        this.mDataStorage.put(Keystore.getSocialAccounts(), getSocialAccount(hashMap2));
        if (!TextUtils.isEmpty(str8)) {
            this.mDataStorage.put(Keystore.getDeviceToken(), str8);
        }
        return this.mDataStorage.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        if (this.mShareAssistant != null && this.mShareListener != null) {
            this.mShareAssistant.unRegistListener(this.mShareListener);
            this.mShareAssistant = null;
        }
        this.mStatisticsHelper = null;
        this.mContext = null;
        this.mIsInit = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getDeviceToken() {
        return this.mDataStorage == null ? "" : this.mDataStorage.getString("device_token");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Token getLastToken() {
        return this.mToken;
    }

    public String getOtherBduss() {
        if (this.mDataStorage != null) {
            return this.mDataStorage.getString(Keystore.getOtherBduss());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r2v49, types: [com.baidu.sapi2.loginshare.Sharer$2] */
    public void initial(Context context, String str, String str2) {
        if (this.mIsInit) {
            return;
        }
        if (context == null || !Utils.isValid(str) || !Utils.isValid(str2)) {
            throw new IllegalArgumentException("params cannot be null");
        }
        this.mContext = context;
        this.mStatisticsHelper = new StatisticsHelper(str, str2);
        this.mShareAssistant = ShareAssistant.getInstance(this.mContext);
        this.mShareAssistant.registListener(this.mShareListener);
        this.mDataStorage = new FileStorage(this.mContext);
        String string = this.mDataStorage.getString(Keystore.getIsValid());
        if (!Utils.isValid(string)) {
            this.mDataStorage.put(Keystore.getIsValid(), this.mValidFalse);
            this.mDataStorage.put(Keystore.getIsEnable(), this.mEnableTrue);
            this.mDataStorage.commit();
            this.mEnableHelper.setEnable(true);
            new Thread() { // from class: com.baidu.sapi2.loginshare.Sharer.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        sleep(100L);
                        if (Sharer.this.mToken != null || Sharer.this.mContext == null) {
                            return;
                        }
                        ShareModel shareModel = new ShareModel();
                        shareModel.mAction = Keystore.getSyncAction();
                        ShareAssistant.getInstance(Sharer.this.mContext).share(shareModel);
                    } catch (InterruptedException e) {
                        Logger.w(e);
                    }
                }
            }.start();
            this.mIsInit = true;
            return;
        }
        String string2 = this.mDataStorage.getString(Keystore.getIsEnable());
        String string3 = this.mDataStorage.getString(Keystore.getCheckTime());
        this.mEnableHelper.setEnable(this.mEnableTrue.equals(string2));
        try {
            this.mEnableHelper.setCheckTime(Long.parseLong(string3));
        } catch (Exception e) {
        }
        String string4 = this.mDataStorage.getString(Keystore.getUsername());
        String string5 = this.mDataStorage.getString(Keystore.getEmail());
        String string6 = this.mDataStorage.getString(Keystore.getPhoneNumber());
        String string7 = this.mDataStorage.getString(Keystore.getBduss());
        String string8 = this.mDataStorage.getString(Keystore.getPtoken());
        String string9 = this.mDataStorage.getString(Keystore.getExtra());
        String string10 = this.mDataStorage.getString(Keystore.getJson());
        String string11 = this.mDataStorage.getString(Keystore.getDisplayname());
        boolean equals = this.mIsSocialTrue.equals(this.mDataStorage.getString(Keystore.getIsSocialAccount()));
        String string12 = this.mDataStorage.getString(Keystore.getSocialAccounts());
        String string13 = this.mDataStorage.getString(Keystore.getDeviceToken());
        HashMap<String, String> hashMap = new HashMap<>();
        if (Utils.isValid(string9)) {
            try {
                JSONObject jSONObject = new JSONObject(string9);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.optString(next));
                }
            } catch (JSONException e2) {
                Logger.w(e2);
            }
        }
        this.mToken = new Token();
        this.mToken.mEvent = this.mValidTrue.equals(string) ? LoginShareEvent.VALID : LoginShareEvent.INVALID;
        this.mToken.mUsername = string4;
        this.mToken.mEmail = string5;
        this.mToken.mPhoneNumber = string6;
        this.mToken.mBduss = string7;
        this.mToken.mPtoken = string8;
        this.mToken.mExtras = hashMap;
        this.mToken.mJson = string10;
        this.mToken.mDisplayname = string11;
        this.mToken.isSocialAccount = equals;
        this.mToken.socialTokenMap = getSocialAccount(string12);
        this.mToken.deviceToken = string13;
        this.mIsInit = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean invalid(Token token) {
        if (!this.mIsInit || !isValid(token)) {
            return false;
        }
        String str = token.mUsername;
        String str2 = token.mEmail;
        String str3 = token.mPhoneNumber;
        String str4 = token.mBduss;
        String str5 = token.mPtoken;
        String str6 = token.mJson;
        String str7 = token.mDisplayname;
        String str8 = token.isSocialAccount ? this.mIsSocialTrue : this.mIsSocialFalse;
        String jSONArray = getSocialAccount(token.socialTokenMap).toString();
        String str9 = token.deviceToken;
        String encrypt = LoginShareCrypto.encrypt(this.mContext, str);
        String encrypt2 = LoginShareCrypto.encrypt(this.mContext, str2);
        String encrypt3 = LoginShareCrypto.encrypt(this.mContext, str3);
        String encrypt4 = LoginShareCrypto.encrypt(this.mContext, str4);
        String encrypt5 = LoginShareCrypto.encrypt(this.mContext, str5);
        String encrypt6 = LoginShareCrypto.encrypt(this.mContext, str6);
        HashMap hashMap = new HashMap();
        String encrypt7 = LoginShareCrypto.encrypt(this.mContext, str7);
        String encrypt8 = LoginShareCrypto.encrypt(this.mContext, str8);
        String encrypt9 = LoginShareCrypto.encrypt(this.mContext, jSONArray);
        String encrypt10 = LoginShareCrypto.encrypt(this.mContext, str9);
        ShareModel shareModel = new ShareModel();
        shareModel.mAction = Keystore.getLogoutAction();
        shareModel.mData.put(Keystore.getUsername(), encrypt);
        shareModel.mData.put(Keystore.getEmail(), encrypt2);
        shareModel.mData.put(Keystore.getPhoneNumber(), encrypt3);
        shareModel.mData.put(Keystore.getBduss(), encrypt4);
        shareModel.mData.put(Keystore.getPtoken(), encrypt5);
        shareModel.mData.put(Keystore.getJson(), encrypt6);
        shareModel.mData.put(Keystore.getDisplayname(), encrypt7);
        shareModel.mData.put(Keystore.getIsSocialAccount(), encrypt8);
        shareModel.mData.put(Keystore.getSocialAccounts(), encrypt9);
        shareModel.mData.put(Keystore.getDeviceToken(), encrypt10);
        for (String str10 : token.mExtras.keySet()) {
            String encrypt11 = LoginShareCrypto.encrypt(this.mContext, token.mExtras.get(str10));
            hashMap.put(str10, encrypt11);
            shareModel.mData.put(str10, encrypt11);
        }
        syncStorage(false, str7, str, str2, str3, str4, str5, token.mExtras, token.mJson, token.isSocialAccount, token.socialTokenMap, token.deviceToken);
        syncStorage("");
        token.mEvent = LoginShareEvent.INVALID;
        this.mToken = token;
        return check(shareModel, false, str4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityCreate() {
        if (this.mStatisticsHelper != null) {
            this.mStatisticsHelper.onActivityCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoginShareListener(ILoginShareListener iLoginShareListener) {
        this.mListenerHelper.setLoginShareListener(iLoginShareListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean valid(Token token) {
        if (!this.mIsInit || !isValid(token)) {
            return false;
        }
        String str = token.mUsername;
        String str2 = token.mEmail;
        String str3 = token.mPhoneNumber;
        String str4 = token.mBduss;
        String str5 = token.mPtoken;
        String str6 = token.mJson;
        String str7 = token.mDisplayname;
        String str8 = token.isSocialAccount ? this.mIsSocialTrue : this.mIsSocialFalse;
        String jSONArray = getSocialAccount(token.socialTokenMap).toString();
        String str9 = token.deviceToken;
        String encrypt = LoginShareCrypto.encrypt(this.mContext, str);
        String encrypt2 = LoginShareCrypto.encrypt(this.mContext, str2);
        String encrypt3 = LoginShareCrypto.encrypt(this.mContext, str3);
        String encrypt4 = LoginShareCrypto.encrypt(this.mContext, str4);
        String encrypt5 = LoginShareCrypto.encrypt(this.mContext, str5);
        String encrypt6 = LoginShareCrypto.encrypt(this.mContext, str6);
        HashMap hashMap = new HashMap();
        String encrypt7 = LoginShareCrypto.encrypt(this.mContext, str7);
        String encrypt8 = LoginShareCrypto.encrypt(this.mContext, str8);
        String encrypt9 = LoginShareCrypto.encrypt(this.mContext, jSONArray);
        String encrypt10 = LoginShareCrypto.encrypt(this.mContext, str9);
        ShareModel shareModel = new ShareModel();
        shareModel.mAction = Keystore.getLoginAction();
        shareModel.mData.put(Keystore.getUsername(), encrypt);
        shareModel.mData.put(Keystore.getEmail(), encrypt2);
        shareModel.mData.put(Keystore.getPhoneNumber(), encrypt3);
        shareModel.mData.put(Keystore.getBduss(), encrypt4);
        shareModel.mData.put(Keystore.getPtoken(), encrypt5);
        shareModel.mData.put(Keystore.getJson(), encrypt6);
        shareModel.mData.put(Keystore.getDisplayname(), encrypt7);
        shareModel.mData.put(Keystore.getIsSocialAccount(), encrypt8);
        shareModel.mData.put(Keystore.getSocialAccounts(), encrypt9);
        shareModel.mData.put(Keystore.getDeviceToken(), encrypt10);
        for (String str10 : token.mExtras.keySet()) {
            String encrypt11 = LoginShareCrypto.encrypt(this.mContext, token.mExtras.get(str10));
            hashMap.put(str10, encrypt11);
            shareModel.mData.put(str10, encrypt11);
        }
        syncStorage(true, str7, str, str2, str3, str4, str5, token.mExtras, token.mJson, token.isSocialAccount, token.socialTokenMap, token.deviceToken);
        token.mEvent = LoginShareEvent.VALID;
        this.mToken = token;
        return check(shareModel, true, str4);
    }
}
