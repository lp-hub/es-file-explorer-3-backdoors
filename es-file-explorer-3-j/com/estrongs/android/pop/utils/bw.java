package com.estrongs.android.pop.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.FexApplication;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.util.regex.Pattern;
import org.apache.http.entity.mime.MIME;

/* loaded from: classes.dex */
public class bw {

    /* renamed from: a, reason: collision with root package name */
    public static int f1242a = -1;

    /* renamed from: b, reason: collision with root package name */
    public static String f1243b = null;

    private static String a(InputStream inputStream) {
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return stringBuffer.toString();
            }
            stringBuffer.append(new String(bArr, 0, read));
        }
    }

    public static boolean a() {
        NetworkInfo activeNetworkInfo;
        f1243b = bx.a(FexApplication.a());
        if (f1243b != null && f1243b.length() != 0) {
            return true;
        }
        if (!((WifiManager) FexApplication.a().getSystemService("wifi")).isWifiEnabled() && (activeNetworkInfo = ((ConnectivityManager) FexApplication.a().getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            String extraInfo = activeNetworkInfo.getExtraInfo();
            if (f1242a == -1) {
                d();
            }
            return extraInfo != null && extraInfo.toLowerCase().contains(Utils.WAP) && f1242a == 2;
        }
        return false;
    }

    public static String b() {
        NetworkInfo activeNetworkInfo;
        if (f1243b != null && f1243b.length() != 0) {
            return f1243b;
        }
        if (!((WifiManager) FexApplication.a().getSystemService("wifi")).isWifiEnabled() && (activeNetworkInfo = ((ConnectivityManager) FexApplication.a().getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            String extraInfo = activeNetworkInfo.getExtraInfo();
            if (f1242a == -1) {
                d();
            }
            if (extraInfo != null && extraInfo.toLowerCase().contains(Utils.WAP) && f1242a == 2) {
                return e();
            }
            return null;
        }
        return null;
    }

    public static String c() {
        return f1243b;
    }

    private static void d() {
        String subscriberId = ((TelephonyManager) FexApplication.a().getSystemService(BDAccountManager.KEY_PHONE)).getSubscriberId();
        if (subscriberId == null) {
            return;
        }
        if (subscriberId.startsWith("46000") || subscriberId.startsWith("46002")) {
            f1242a = 1;
        } else if (subscriberId.startsWith("46001")) {
            f1242a = 2;
        } else if (subscriberId.startsWith("46003")) {
            f1242a = 3;
        }
    }

    private static String e() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://v.17186.cn/test.jsp").openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(Utils.PROXY_IP, 80)));
            if (httpURLConnection == null) {
                throw new IOException("URLConnection instance is null");
            }
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Accept", "*/*");
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            httpURLConnection.setRequestProperty(MIME.CONTENT_TYPE, "text/xml; charset=UTF-8");
            if (httpURLConnection.getResponseCode() != 200) {
                return null;
            }
            String a2 = a(httpURLConnection.getInputStream());
            String substring = a2.substring(a2.indexOf("<body>")).substring(7, 24).trim().substring(2);
            if (!Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$").matcher(substring).matches()) {
                return substring;
            }
            f1243b = substring;
            return substring;
        } catch (Exception e) {
            return null;
        }
    }
}
