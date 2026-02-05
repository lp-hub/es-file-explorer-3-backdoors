package com.baidu.sapi2.social.utils;

import android.text.TextUtils;
import java.util.List;
import org.apache.http.NameValuePair;

/* loaded from: classes.dex */
public class SocialClient {
    private static volatile SocialClient socialClient = null;

    public static SocialClient getInstance() {
        if (socialClient == null) {
            synchronized (SocialClient.class) {
                if (socialClient == null) {
                    socialClient = new SocialClient();
                }
            }
        }
        return socialClient;
    }

    public String createRequestParams(List<NameValuePair> list) {
        StringBuffer stringBuffer = new StringBuffer();
        for (NameValuePair nameValuePair : list) {
            if (!TextUtils.isEmpty(nameValuePair.getName()) && !TextUtils.isEmpty(nameValuePair.getValue())) {
                if (TextUtils.isEmpty(stringBuffer.toString())) {
                    stringBuffer.append(nameValuePair.getName()).append("=").append(nameValuePair.getValue());
                } else {
                    stringBuffer.append("&").append(nameValuePair.getName()).append("=").append(nameValuePair.getValue());
                }
            }
        }
        return stringBuffer.toString();
    }
}
