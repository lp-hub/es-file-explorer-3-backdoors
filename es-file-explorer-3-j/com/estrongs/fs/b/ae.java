package com.estrongs.fs.b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.fr;
import java.lang.reflect.Array;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

/* loaded from: classes.dex */
public class ae extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    private static int f2966a = 64;

    /* renamed from: b, reason: collision with root package name */
    private static int f2967b = 256;
    private static String[][] c = (String[][]) Array.newInstance((Class<?>) String.class, f2967b / f2966a, f2966a);
    private byte[] d;
    private long e;
    private Context f;

    private ae(Context context) {
        this.canRestart = false;
        this.d = a(context);
        this.f = context;
        setDescription(context.getString(C0000R.string.progress_scanning));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ long a(ae aeVar) {
        long j = aeVar.e;
        aeVar.e = 1 + j;
        return j;
    }

    public static ae a(Activity activity, com.estrongs.a.a.k kVar, com.estrongs.a.a.h hVar, boolean z) {
        ae aeVar = new ae(activity);
        aeVar.addTaskStatusChangeListener(kVar);
        aeVar.addProgressListener(hVar);
        if (z) {
            new fr(activity, activity.getString(C0000R.string.progress_scanning), aeVar).show();
            aeVar.execute();
        } else {
            aeVar.execute();
        }
        return aeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(byte[] bArr, String str) {
        int i = bArr[0] >= 0 ? bArr[0] : f2967b + bArr[0];
        int i2 = bArr[1] >= 0 ? bArr[1] : f2967b + bArr[1];
        int i3 = bArr[2] >= 0 ? bArr[2] : f2967b + bArr[2];
        int i4 = bArr[3] >= 0 ? bArr[3] : f2967b + bArr[3];
        synchronized (c) {
            c[i4 / f2966a][i4 % f2966a] = "" + i + "." + i2 + "." + i3 + "." + i4 + ":" + str;
        }
    }

    @SuppressLint({"NewApi"})
    public static byte[] a(Context context) {
        byte[] hardwareAddress;
        WifiInfo connectionInfo;
        int ipAddress;
        int i = Build.VERSION.SDK_INT;
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null && (ipAddress = connectionInfo.getIpAddress()) != 0) {
            return new byte[]{(byte) (ipAddress >> 0), (byte) (ipAddress >> 8), (byte) (ipAddress >> 16), (byte) (ipAddress >> 24)};
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                String upperCase = nextElement.getName().toUpperCase();
                if (!upperCase.equalsIgnoreCase("lo") && !upperCase.startsWith("RMNET") && !upperCase.startsWith("PPP") && (i < 9 || ((hardwareAddress = nextElement.getHardwareAddress()) != null && hardwareAddress.length == 6 && nextElement.isUp()))) {
                    Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement2 = inetAddresses.nextElement();
                        if (!nextElement2.isLoopbackAddress() && !(nextElement2 instanceof Inet6Address)) {
                            return nextElement2.getAddress();
                        }
                    }
                }
            }
        } catch (Exception e) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String[] b(Context context) {
        String str;
        Object obj = null;
        byte[] a2 = a(context);
        synchronized (c) {
            if (a2 != 0) {
                int i = a2[0] >= 0 ? a2[0] : f2967b + a2[0];
                int i2 = a2[1] >= 0 ? a2[1] : f2967b + a2[1];
                int i3 = a2[2] >= 0 ? a2[2] : f2967b + a2[2];
                String str2 = "" + i + "." + i2 + "." + i3;
                String str3 = str2 + "." + (a2[3] >= 0 ? a2[3] : f2967b + a2[3]);
                int i4 = 0;
                while (true) {
                    if (i4 >= f2967b) {
                        str = str3;
                        obj = a2;
                        break;
                    }
                    if (c[i4 / f2966a][i4 % f2966a] != null && !c[i4 / f2966a][i4 % f2966a].startsWith(str2)) {
                        str = str3;
                        break;
                    }
                    i4++;
                }
            } else {
                str = null;
                obj = a2;
            }
            if (obj == null) {
                for (int i5 = 0; i5 < f2967b; i5++) {
                    c[i5 / f2966a][i5 % f2966a] = null;
                }
                return new String[0];
            }
            int i6 = 0;
            for (int i7 = 0; i7 < f2967b; i7++) {
                if (c[i7 / f2966a][i7 % f2966a] != null) {
                    int indexOf = c[i7 / f2966a][i7 % f2966a].indexOf(":");
                    if (!(indexOf >= 0 ? c[i7 / f2966a][i7 % f2966a].substring(0, indexOf) : c[i7 / f2966a][i7 % f2966a]).equals(str)) {
                        i6++;
                    }
                }
            }
            String[] strArr = new String[i6];
            int i8 = 0;
            for (int i9 = 0; i9 < f2967b; i9++) {
                if (c[i9 / f2966a][i9 % f2966a] != null) {
                    int indexOf2 = c[i9 / f2966a][i9 % f2966a].indexOf(":");
                    if (!(indexOf2 >= 0 ? c[i9 / f2966a][i9 % f2966a].substring(0, indexOf2) : c[i9 / f2966a][i9 % f2966a]).equals(str)) {
                        strArr[i8] = c[i9 / f2966a][i9 % f2966a];
                        i8++;
                    }
                }
            }
            return strArr;
        }
    }

    @Override // com.estrongs.a.a
    public boolean canPause() {
        return false;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 2:
                this.processData.f += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                onProgress(this.processData);
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b6, code lost:
    
        java.lang.Thread.sleep(500);
     */
    @Override // com.estrongs.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean task() {
        if (this.d == null) {
            return false;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        int i = 0;
        while (true) {
            if (currentTask != null && currentTask.taskStopped()) {
                return false;
            }
            int i2 = this.d[0] >= 0 ? this.d[0] : f2967b + this.d[0];
            int i3 = this.d[1] >= 0 ? this.d[1] : f2967b + this.d[1];
            int i4 = this.d[2] >= 0 ? this.d[2] : f2967b + this.d[2];
            currentTask.sendMessage(2, 1L, this.f.getString(C0000R.string.lan_scan_running));
            synchronized (c) {
                this.e = 0L;
            }
            for (int i5 = 0; i5 < f2966a; i5++) {
                int i6 = (f2966a * i) + i5;
                new af(this, "" + i2 + "." + i3 + "." + i4 + "." + i6, i6).start();
            }
            while (true) {
                synchronized (c) {
                    if (this.e == f2966a) {
                        break;
                    }
                }
            }
            int i7 = i + 1;
            if (i7 >= f2967b / f2966a) {
                return true;
            }
            i = i7;
        }
    }
}
