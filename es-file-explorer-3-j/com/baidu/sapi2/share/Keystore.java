package com.baidu.sapi2.share;

import com.baidu.share.message.token.ShareToken;
import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
public class Keystore {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getAction() {
        return "action";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getCacheSize() {
        return 15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getData() {
        return "data";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getFileName() {
        return "share.json";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getFrom() {
        return TypedMap.KEY_FROM;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getIntentAction() {
        return "baidu.intent.action.SHARE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getNewIntentAction() {
        return "baidu.intent.action.NEWSHARE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getPermission() {
        return "com.baidu.permission.SHARE";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getReceiver() {
        return "receiver";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSplit() {
        return ";";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getTimestamp() {
        return ShareToken.KEY_TIMESTAMP;
    }
}
