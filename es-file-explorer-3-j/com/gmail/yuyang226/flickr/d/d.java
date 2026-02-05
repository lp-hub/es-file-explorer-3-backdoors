package com.gmail.yuyang226.flickr.d;

import com.baidu.sapi2.loginshare.Utils;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class d {
    public static String a(String str) {
        String str2 = null;
        try {
            str2 = URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
        }
        StringBuffer stringBuffer = new StringBuffer(str2.length());
        int i = 0;
        while (i < str2.length()) {
            char charAt = str2.charAt(i);
            if (charAt == '*') {
                stringBuffer.append("%2A");
            } else if (charAt == '+') {
                stringBuffer.append("%20");
            } else if (charAt == '%' && i + 1 < str2.length() && str2.charAt(i + 1) == '7' && str2.charAt(i + 2) == 'E') {
                stringBuffer.append('~');
                i += 2;
            } else {
                stringBuffer.append(charAt);
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public static URL a(String str, int i, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Utils.http);
        stringBuffer.append(str);
        if (i > 0) {
            stringBuffer.append(":");
            stringBuffer.append(i);
        }
        if (str2 == null) {
            str2 = "/";
        }
        stringBuffer.append(str2);
        return new URL(stringBuffer.toString());
    }

    public static URL a(String str, int i, String str2, List<com.gmail.yuyang226.flickr.a> list) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Utils.http);
        stringBuffer.append(str);
        if ((i != 80) & (i > 0)) {
            stringBuffer.append(":");
            stringBuffer.append(i);
        }
        if (str2 == null) {
            str2 = "/";
        }
        stringBuffer.append(str2);
        Iterator<com.gmail.yuyang226.flickr.a> it = list.iterator();
        if (it.hasNext()) {
            stringBuffer.append("?");
        }
        while (it.hasNext()) {
            com.gmail.yuyang226.flickr.a next = it.next();
            stringBuffer.append(next.a());
            stringBuffer.append("=");
            Object b2 = next.b();
            if (b2 != null) {
                stringBuffer.append(a(b2.toString()));
            }
            if (it.hasNext()) {
                stringBuffer.append("&");
            }
        }
        return new URL(stringBuffer.toString());
    }
}
