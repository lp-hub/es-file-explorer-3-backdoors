package com.gmail.yuyang226.flickr.oauth;

import com.gmail.yuyang226.flickr.FlickrException;
import com.gmail.yuyang226.flickr.d.d;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class a {
    public static String a(String str, String str2, String str3) {
        Mac mac = Mac.getInstance("HmacSHA1");
        if (str3 == null) {
            str3 = "";
        }
        mac.init(new SecretKeySpec((String.valueOf(str2) + "&" + str3).getBytes(), "HmacSHA1"));
        return new String(com.gmail.yuyang226.flickr.d.a.a(mac.doFinal(str.getBytes("UTF-8"))));
    }

    public static String a(String str, String str2, List<com.gmail.yuyang226.flickr.a> list) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("&");
        stringBuffer.append(d.a(str2));
        stringBuffer.append("&");
        Collections.sort(list, new b());
        return stringBuffer.append(d.a(a(list, "UTF-8"))).toString();
    }

    public static String a(String str, String str2, List<com.gmail.yuyang226.flickr.a> list, String str3, String str4) {
        try {
            return a(a(str, str2.toLowerCase(Locale.US), list), str3, str4);
        } catch (UnsupportedEncodingException e) {
            throw new FlickrException(e);
        } catch (IllegalStateException e2) {
            throw new FlickrException(e2);
        } catch (InvalidKeyException e3) {
            throw new FlickrException(e3);
        } catch (NoSuchAlgorithmException e4) {
            throw new FlickrException(e4);
        }
    }

    public static String a(List<com.gmail.yuyang226.flickr.a> list, String str) {
        StringBuilder sb = new StringBuilder();
        for (com.gmail.yuyang226.flickr.a aVar : list) {
            Object b2 = aVar.b();
            if (!(aVar instanceof com.gmail.yuyang226.flickr.c.a)) {
                String a2 = d.a(aVar.a());
                String valueOf = String.valueOf(b2);
                String a3 = valueOf != null ? d.a(valueOf) : "";
                if (sb.length() > 0) {
                    sb.append("&");
                }
                sb.append(a2);
                sb.append("=");
                sb.append(a3);
            }
        }
        return sb.toString();
    }

    public static void a(List<com.gmail.yuyang226.flickr.a> list) {
        b(list);
        d(list);
        c(list);
        e(list);
    }

    private static void b(List<com.gmail.yuyang226.flickr.a> list) {
        list.add(new com.gmail.yuyang226.flickr.a(OAuth.OAUTH_NONCE, Long.toString(System.nanoTime())));
    }

    private static void c(List<com.gmail.yuyang226.flickr.a> list) {
        list.add(new com.gmail.yuyang226.flickr.a(OAuth.OAUTH_SIGNATURE_METHOD, "HMAC-SHA1"));
    }

    private static void d(List<com.gmail.yuyang226.flickr.a> list) {
        list.add(new com.gmail.yuyang226.flickr.a(OAuth.OAUTH_TIMESTAMP, String.valueOf(System.currentTimeMillis() / 1000)));
    }

    private static void e(List<com.gmail.yuyang226.flickr.a> list) {
        list.add(new com.gmail.yuyang226.flickr.a(OAuth.OAUTH_VERSION, OAuth.VERSION_1_0));
    }
}
