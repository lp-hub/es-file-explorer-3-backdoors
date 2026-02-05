package com.baidu.sapi2.social.model;

import com.baidu.sapi2.social.config.Sex;
import com.baidu.sapi2.social.config.SocialType;

/* loaded from: classes.dex */
public class SocialToken {
    public String headURL;
    public boolean isBinded;
    public Sex sex;
    public SocialType type;
    public String username;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("mUsername:");
        stringBuffer.append(this.username);
        stringBuffer.append("\n");
        stringBuffer.append("isBinded:");
        stringBuffer.append(this.isBinded);
        stringBuffer.append("\n");
        stringBuffer.append("sex:");
        stringBuffer.append(this.sex.getName());
        stringBuffer.append("\n");
        stringBuffer.append("headURL:");
        stringBuffer.append(this.headURL);
        stringBuffer.append("\n");
        stringBuffer.append("type:");
        stringBuffer.append(this.type.getName());
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }
}
