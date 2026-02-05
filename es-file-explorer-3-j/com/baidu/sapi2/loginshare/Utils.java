package com.baidu.sapi2.loginshare;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import java.net.InetSocketAddress;
import java.net.Proxy;

/* loaded from: classes.dex */
public class Utils {
    public static final int DEFAULT_PROXY_PORT = 80;
    public static final String NET = "net";
    public static final String PROXY_IP = "10.0.0.172";
    public static final int TYPE_NET = 2;
    public static final int TYPE_UNKNOWN = 3;
    public static final int TYPE_WAP = 1;
    public static final String WAP = "wap";
    public static final String http = "http://";
    public static final String https = "https://";

    public static Proxy getProxy(Context context) {
        Cursor cursor;
        String string;
        if (!((WifiManager) context.getSystemService("wifi")).isWifiEnabled()) {
            try {
                try {
                    cursor = context.getContentResolver().query(Uri.parse("content://telephony/carriers/preferapn"), null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToNext() && (string = cursor.getString(cursor.getColumnIndex("proxy"))) != null && string.trim().length() > 0) {
                                Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(string, 80));
                                if (cursor == null || cursor.isClosed()) {
                                    return proxy;
                                }
                                cursor.close();
                                return proxy;
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = null;
                }
            } catch (Exception e) {
            }
        }
        return null;
    }

    public static boolean hasActiveNetwork(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return false;
        }
        return connectivityManager.getActiveNetworkInfo() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isValid(String str) {
        return str != null && str.length() > 0;
    }
}
