package com.estrongs.fs.b;

import com.baidu.sapi2.loginshare.Utils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
class af extends Thread {

    /* renamed from: a, reason: collision with root package name */
    String f2968a;

    /* renamed from: b, reason: collision with root package name */
    int f2969b;
    final /* synthetic */ ae c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(ae aeVar, String str, int i) {
        super("Find Thread:" + str);
        this.c = aeVar;
        this.f2968a = str;
        this.f2969b = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        Throwable th;
        String[][] strArr;
        String[][] strArr2;
        int i;
        int i2;
        String[][] strArr3;
        int i3;
        int i4;
        String[][] strArr4;
        String[][] strArr5;
        int i5;
        int i6;
        String[][] strArr6;
        int i7;
        int i8;
        String[][] strArr7;
        String[][] strArr8;
        int i9;
        int i10;
        String[][] strArr9;
        int i11;
        int i12;
        try {
            try {
                String str2 = Utils.http + this.f2968a + ":" + com.estrongs.a.b.d.f201a + "/hostname";
                InetAddress byName = InetAddress.getByName(this.f2968a);
                Socket socket = new Socket();
                socket.connect(new InetSocketAddress(byName, com.estrongs.a.b.d.f201a), 2000);
                if (!socket.isConnected()) {
                    throw new Exception("connect timeout!");
                }
                socket.setSoTimeout(10000);
                DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
                DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
                dataOutputStream.write(("GET /hostname HTTP/1.1\r\nConnection: Keep-Alive\r\nAccept-Encoding: gzip\r\nUser-Agent: Dalvik\r\nHost: localhost\r\nContent-Length: " + (com.estrongs.a.b.d.f202b.length() + SocketClient.NETASCII_EOL.length()) + SocketClient.NETASCII_EOL + SocketClient.NETASCII_EOL).getBytes("utf-8"));
                dataOutputStream.write(com.estrongs.a.b.d.f202b.getBytes());
                dataOutputStream.write(SocketClient.NETASCII_EOL.getBytes());
                if (dataInputStream.readLine().indexOf("200 OK") == -1) {
                    throw new Exception();
                }
                boolean z = false;
                while (true) {
                    String readLine = dataInputStream.readLine();
                    if (readLine.length() == 0) {
                        break;
                    } else if (readLine.equals("Server: ES Name Response Server")) {
                        z = true;
                    }
                }
                if (!z) {
                    throw new Exception();
                }
                String readLine2 = dataInputStream.readLine();
                try {
                    socket.close();
                    strArr7 = ae.c;
                    synchronized (strArr7) {
                        if (readLine2 != null) {
                            strArr9 = ae.c;
                            int i13 = this.f2969b;
                            i11 = ae.f2966a;
                            String[] strArr10 = strArr9[i13 / i11];
                            int i14 = this.f2969b;
                            i12 = ae.f2966a;
                            strArr10[i14 % i12] = this.f2968a + ":" + readLine2;
                        } else {
                            strArr8 = ae.c;
                            int i15 = this.f2969b;
                            i9 = ae.f2966a;
                            String[] strArr11 = strArr8[i15 / i9];
                            int i16 = this.f2969b;
                            i10 = ae.f2966a;
                            strArr11[i16 % i10] = null;
                        }
                        ae.a(this.c);
                    }
                } catch (Throwable th2) {
                    str = readLine2;
                    th = th2;
                    strArr4 = ae.c;
                    synchronized (strArr4) {
                        if (str != null) {
                            strArr6 = ae.c;
                            int i17 = this.f2969b;
                            i7 = ae.f2966a;
                            String[] strArr12 = strArr6[i17 / i7];
                            int i18 = this.f2969b;
                            i8 = ae.f2966a;
                            strArr12[i18 % i8] = this.f2968a + ":" + str;
                        } else {
                            strArr5 = ae.c;
                            int i19 = this.f2969b;
                            i5 = ae.f2966a;
                            String[] strArr13 = strArr5[i19 / i5];
                            int i20 = this.f2969b;
                            i6 = ae.f2966a;
                            strArr13[i20 % i6] = null;
                        }
                        ae.a(this.c);
                    }
                    throw th;
                }
            } catch (Exception e) {
                strArr = ae.c;
                synchronized (strArr) {
                    if (0 != 0) {
                        strArr3 = ae.c;
                        int i21 = this.f2969b;
                        i3 = ae.f2966a;
                        String[] strArr14 = strArr3[i21 / i3];
                        int i22 = this.f2969b;
                        i4 = ae.f2966a;
                        strArr14[i22 % i4] = this.f2968a + ":" + ((String) null);
                    } else {
                        strArr2 = ae.c;
                        int i23 = this.f2969b;
                        i = ae.f2966a;
                        String[] strArr15 = strArr2[i23 / i];
                        int i24 = this.f2969b;
                        i2 = ae.f2966a;
                        strArr15[i24 % i2] = null;
                    }
                    ae.a(this.c);
                }
            }
        } catch (Throwable th3) {
            str = null;
            th = th3;
        }
    }
}
