package com.baidu.sapi2.share;

import android.content.Context;
import android.content.Intent;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.log.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShareSender {
    private Context mContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShareSender(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    private static boolean isValidModel(ShareModel shareModel) {
        if (shareModel == null || shareModel.mAction == null || shareModel.mAction.equals("")) {
            return false;
        }
        return shareModel.mData == null || shareModel.mData.get(Keystore.getAction()) == null;
    }

    private static boolean sendBroadcast(Context context, Intent intent, String str, String str2, String str3, long j, HashMap<String, String> hashMap) {
        try {
            intent.putExtra(Keystore.getAction(), NativeCrypto.encrypt(context, str));
            intent.putExtra(Keystore.getFrom(), NativeCrypto.encrypt(context, str2));
            intent.putExtra(Keystore.getTimestamp(), NativeCrypto.encrypt(context, j + ""));
            intent.putExtra(Keystore.getReceiver(), NativeCrypto.encrypt(context, str3));
            String str4 = null;
            if (hashMap != null && hashMap.size() > 0) {
                str4 = new JSONObject(hashMap).toString();
            }
            intent.putExtra(Keystore.getData(), NativeCrypto.encrypt(context, str4));
            intent.addFlags(32);
            context.sendBroadcast(intent, Keystore.getPermission());
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        this.mContext = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean share(ShareModel shareModel) {
        return share(shareModel, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean share(ShareModel shareModel, ArrayList<String> arrayList) {
        boolean z;
        boolean z2;
        if (!isValidModel(shareModel)) {
            return false;
        }
        String str = shareModel.mAction;
        String packageName = this.mContext.getPackageName();
        long currentTimeMillis = System.currentTimeMillis();
        String str2 = null;
        if (arrayList != null) {
            str2 = new String();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                str2 = str2 + arrayList.get(i).replace(Keystore.getSplit(), "") + Keystore.getSplit();
            }
            if (str2.length() > 0) {
                str2 = str2.substring(0, str2.length() - 1);
            }
        }
        if (str.equals(com.baidu.sapi2.loginshare.Keystore.getSyncAction())) {
            boolean sendBroadcast = sendBroadcast(this.mContext, new Intent(Keystore.getIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
            z2 = sendBroadcast(this.mContext, new Intent(Keystore.getNewIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
            Logger.d("Send old and new broadcast!" + str);
            z = sendBroadcast;
        } else if (str.equals(com.baidu.sapi2.loginshare.Keystore.getLogoutAction())) {
            if (SapiHelper.getInstance().getToken().isSocialAccount) {
                boolean sendBroadcast2 = sendBroadcast(this.mContext, new Intent(Keystore.getIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
                z2 = sendBroadcast(this.mContext, new Intent(Keystore.getNewIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
                Logger.d("Send old and new broadcast!" + str);
                z = sendBroadcast2;
            } else {
                boolean sendBroadcast3 = sendBroadcast(this.mContext, new Intent(Keystore.getIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
                Logger.d("Send old broadcast!" + str);
                z = sendBroadcast3;
                z2 = true;
            }
        } else if (SapiHelper.getInstance().getToken().isSocialAccount) {
            z2 = sendBroadcast(this.mContext, new Intent(Keystore.getNewIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
            Logger.d("Send new broadcast!" + str);
            z = true;
        } else {
            boolean sendBroadcast4 = sendBroadcast(this.mContext, new Intent(Keystore.getIntentAction()), str, packageName, str2, currentTimeMillis, shareModel.mData);
            Logger.d("Send old broadcast!" + str);
            z = sendBroadcast4;
            z2 = true;
        }
        return z && z2;
    }
}
