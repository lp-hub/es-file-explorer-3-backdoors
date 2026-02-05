package com.baidu.share.message.token;

import java.util.HashMap;

/* loaded from: classes.dex */
public class ShareToken {
    public static final String KEY_TIMESTAMP = "timestamp";
    public static final String KEY_TOKEN = "token";
    public static final String NORMALIZED_TOKEN = "_Normalized_Token_";
    public static final int STATUS_INVALID = 2;
    public static final int STATUS_PREVERIFIED = 0;
    public static final int STATUS_VALID = 1;
    public int mStatus;
    public long mTimestamp;
    public String mToken;

    public ShareToken(String str, long j, int i) {
        this.mToken = null;
        this.mTimestamp = 0L;
        this.mStatus = 0;
        this.mToken = str;
        this.mTimestamp = j;
        this.mStatus = i;
    }

    public HashMap<String, String> toHashMap() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(KEY_TOKEN, this.mToken);
        hashMap.put(KEY_TIMESTAMP, new StringBuilder().append(this.mTimestamp).toString());
        return hashMap;
    }
}
