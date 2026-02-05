package com.estrongs.a.b;

import android.app.Activity;
import android.content.DialogInterface;
import com.dropbox.client2.exception.DropboxServerException;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.fs.b.as;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public class d {
    private Activity h;
    private static ServerSocket c = null;

    /* renamed from: a, reason: collision with root package name */
    public static int f201a = 42135;

    /* renamed from: b, reason: collision with root package name */
    public static String f202b = "ESuser";
    private static Object i = new Object();
    private static d j = null;
    private Socket d = null;
    private DataInputStream e = null;
    private DataOutputStream f = null;
    private String g = com.estrongs.android.pop.b.b();
    private String k = com.estrongs.android.pop.b.b();

    private d(Activity activity, String str) {
        this.h = activity;
        if (str != null) {
            f202b = str;
        }
        c = new ServerSocket(f201a, 10, null);
        new e(this).start();
    }

    public static d a(Activity activity, String str) {
        d dVar;
        synchronized (i) {
            if (j != null) {
                dVar = j;
            } else if (c != null) {
                dVar = null;
            } else {
                j = new d(activity, str);
                dVar = j;
            }
        }
        return dVar;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    public static String a(InputStream inputStream) {
        int read;
        byte[] bArr;
        byte[] bArr2 = 0 == 0 ? new byte[128] : null;
        int length = bArr2.length;
        byte[] bArr3 = bArr2;
        int i2 = 0;
        while (true) {
            read = inputStream.read();
            switch (read) {
                case -1:
                case 10:
                    break;
                case 13:
                    int read2 = inputStream.read();
                    if (read2 != 10 && read2 != -1) {
                        throw new IOException("Line reading error:no \\n!");
                    }
                    break;
                default:
                    int i3 = length - 1;
                    if (i3 < 0) {
                        bArr = new byte[i2 + 128];
                        i3 = (bArr.length - i2) - 1;
                        System.arraycopy(bArr3, 0, bArr, 0, i2);
                    } else {
                        bArr = bArr3;
                    }
                    bArr[i2] = (byte) read;
                    i2++;
                    length = i3;
                    bArr3 = bArr;
            }
        }
        if (read == -1 && i2 == 0) {
            throw new IOException("Line reading error: socket read error!");
        }
        return new String(bArr3, 0, i2);
    }

    public static void a() {
        synchronized (i) {
            if (j == null) {
                return;
            }
            if (c == null) {
                return;
            }
            c.close();
            c = null;
            j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, int i2, String str, as asVar) {
        j jVar = new j(this, activity, this.k, new h(this), asVar);
        jVar.a((CharSequence) str);
        jVar.c(activity.getString(C0000R.string.confirm_cancel), null);
        jVar.b(activity.getString(C0000R.string.confirm_ok), jVar);
        jVar.a((DialogInterface.OnDismissListener) jVar);
        jVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        as asVar = (as) obj;
        if (ESActivity.x() != null) {
            i iVar = new i(this, ESActivity.x(), asVar);
            iVar.setTitle(C0000R.string.message_confirm);
            iVar.setConfirmButton(this.h.getResources().getString(C0000R.string.confirm_ok), iVar);
            iVar.setCancelButton(this.h.getResources().getString(C0000R.string.confirm_cancel), iVar);
            iVar.show();
            return;
        }
        try {
            a(asVar.j.getOutputStream(), DropboxServerException._404_NOT_FOUND, "Not found");
            try {
                asVar.j.close();
            } catch (Exception e) {
            }
        } catch (Exception e2) {
            try {
                asVar.j.close();
            } catch (Exception e3) {
            }
        } catch (Throwable th) {
            try {
                asVar.j.close();
            } catch (Exception e4) {
            }
            throw th;
        }
    }

    public void a(OutputStream outputStream, int i2, String str) {
        String str2 = i2 == 200 ? "HTTP/1.1 200 OK\r\n" : "HTTP/1.1 404 Not Found\r\n";
        String str3 = "Content-Length: " + str.length() + SocketClient.NETASCII_EOL;
        outputStream.write(str2.getBytes());
        outputStream.write("Server: ES Name Response Server\r\n".getBytes());
        outputStream.write("Content-Type: text/html\r\n".getBytes());
        outputStream.write(str3.getBytes());
        outputStream.write("Connection: close\r\n".getBytes());
        outputStream.write(SocketClient.NETASCII_EOL.getBytes());
        outputStream.write(str.getBytes());
    }
}
