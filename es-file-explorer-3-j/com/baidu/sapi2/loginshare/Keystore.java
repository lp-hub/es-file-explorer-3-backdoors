package com.baidu.sapi2.loginshare;

import com.baidu.sapi2.BDAccountManager;

/* loaded from: classes.dex */
public class Keystore {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getBduss() {
        return "bduss";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getCheckTime() {
        return "checkTime";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDeviceToken() {
        return "device_token";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDisplayname() {
        return BDAccountManager.KEY_DISPLAY_NAME;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getEmail() {
        return BDAccountManager.KEY_EMAIL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getEngyptFileName() {
        return "android_sapi_loginshare";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getExtra() {
        return "extra";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getFileName() {
        return "loginshare.json";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getIsEnable() {
        return "isEnable";
    }

    static String getIsFirstBoot() {
        return "isValid";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getIsSocialAccount() {
        return "isSocialAccount";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getIsValid() {
        return "isValid";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getJson() {
        return "json";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getLoginAction() {
        return "baidu.share.action.ACTION_LOGIN";
    }

    public static String getLogoutAction() {
        return "baidu.share.action.ACTION_LOGOUT";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getOtherBduss() {
        return "otherBduss";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getPhoneNumber() {
        return "phoneNumber";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getPtoken() {
        return BDAccountManager.KEY_PTOKEN;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSocialAccounts() {
        return "socialAccounts";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getStatisticsAppUrl() {
        return "http://passport.baidu.com/v2/intercomm/statistic";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getStatisticsUserUrl() {
        return "http://passport.baidu.com/v2/intercomm/statistic";
    }

    public static String getSyncAction() {
        return "baidu.share.action.ACTION_LOGIN_SYNC";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSyncReplyAction() {
        return "baidu.share.action.ACTION_LOGIN_SYNC_REPLY";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getUrl() {
        return "http://passport.baidu.com/v2/intercomm/switch";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getUsername() {
        return BDAccountManager.KEY_USERNAME;
    }
}
