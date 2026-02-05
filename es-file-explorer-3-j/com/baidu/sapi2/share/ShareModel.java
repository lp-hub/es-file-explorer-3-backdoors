package com.baidu.sapi2.share;

import java.util.HashMap;

/* loaded from: classes.dex */
public class ShareModel {
    public String mAction;
    public HashMap<String, String> mData = new HashMap<>();
    public String mFrom;
    public long mTimestamp;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("action:");
        stringBuffer.append(this.mAction);
        stringBuffer.append("\n");
        stringBuffer.append("from:");
        stringBuffer.append(this.mFrom);
        stringBuffer.append("\n");
        stringBuffer.append("timestamp:");
        stringBuffer.append(this.mTimestamp);
        stringBuffer.append("\n");
        stringBuffer.append("data:");
        stringBuffer.append(this.mData);
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }
}
