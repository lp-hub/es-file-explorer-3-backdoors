package com.estrongs.android.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.util.Log;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/* loaded from: classes.dex */
public class ai {
    @SuppressLint({"NewApi"})
    private static String a() {
        int i = Build.VERSION.SDK_INT;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                String upperCase = nextElement.getName().toUpperCase();
                if (!upperCase.equalsIgnoreCase("lo") && !upperCase.startsWith("RMNET") && !upperCase.startsWith("PPP") && (i < 9 || (nextElement.getHardwareAddress() != null && nextElement.isUp()))) {
                    Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement2 = inetAddresses.nextElement();
                        if (!nextElement2.isLoopbackAddress() && (nextElement2 instanceof Inet4Address)) {
                            byte[] address = nextElement2.getAddress();
                            return (address[0] & 255) + "." + (address[1] & 255) + "." + (address[2] & 255) + "." + (address[3] & 255);
                        }
                    }
                }
            }
        } catch (SocketException e) {
            Log.e("WifiPreference IpAddress", e.toString());
        }
        return null;
    }

    public static String a(Context context) {
        if (!b(context)) {
            return a();
        }
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo == null || connectionInfo.getIpAddress() == 0) {
            return null;
        }
        int ipAddress = connectionInfo.getIpAddress();
        return (ipAddress & 255) + "." + ((ipAddress >> 8) & 255) + "." + ((ipAddress >> 16) & 255) + "." + ((ipAddress >> 24) & 255);
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
