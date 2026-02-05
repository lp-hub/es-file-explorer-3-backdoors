package com.estrongs.android.pop.bt;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.estrongs.android.pop.q;
import com.estrongs.android.util.ak;
import com.estrongs.bluetooth.parser.OBEXElement;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.UUID;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final UUID f1098a = UUID.fromString("00001106-0000-1000-8000-00805F9B34FB");
    private static final byte[] j = {-7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 82, 84, 0, -36, -98, 9};
    private b.b.g c;
    private Context f;
    private final String h;
    private boolean d = false;
    private boolean e = false;
    private boolean g = false;
    private k i = new b(this);

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.bluetooth.parser.a f1099b = new com.estrongs.bluetooth.parser.a();

    public a(Context context) {
        this.f = context;
        this.h = q.a(context).B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<OBEXElement> a(String str, String str2) {
        ArrayList<OBEXElement> arrayList = new ArrayList<>();
        File file = (str2 == null || str2.length() <= 0) ? new File(str) : new File(str, str2);
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        File[] listFiles = file.listFiles();
        if (arrayList != null) {
            for (File file2 : listFiles) {
                if (file2 != null) {
                    OBEXElement oBEXElement = new OBEXElement();
                    oBEXElement.a(file2.getName());
                    oBEXElement.a(file2.isDirectory() ? OBEXElement.OBEXElementType.FOLDER : OBEXElement.OBEXElementType.FILE);
                    oBEXElement.a(file2.length());
                    oBEXElement.b(file2.lastModified());
                    arrayList.add(oBEXElement);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.i.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(byte[] bArr) {
        if (bArr == null || bArr.length != j.length) {
            return false;
        }
        for (int i = 0; i < j.length; i++) {
            if (j[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        String aY = ak.aY(str);
        return !aY.startsWith(this.h) ? this.h : aY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(String str) {
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        if (!file.isDirectory()) {
            return file.delete();
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (!c(file2.getAbsolutePath())) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        return new File(str).exists();
    }

    private boolean e() {
        try {
            return Integer.parseInt(Build.VERSION.SDK) >= 5;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(String str) {
        return new File(str).mkdirs();
    }

    public void a() {
        this.d = false;
        try {
            if (e()) {
                this.c = com.estrongs.bluetooth.c.a("FTP", f1098a);
                this.g = true;
            }
            try {
                this.e = true;
                int i = 0;
                int i2 = 0;
                while (!this.d) {
                    c cVar = new c(this, null);
                    int i3 = i + 1;
                    try {
                        try {
                            Log.d("OBEXFtpServer", "Accepting OBEX ftp connections");
                            cVar.a(this.c.a(cVar), i3);
                            i = i3;
                            i2 = 0;
                        } catch (InterruptedIOException e) {
                            this.d = true;
                        }
                    } catch (Throwable th) {
                        if ("Stack closed".equals(th.getMessage())) {
                            this.d = true;
                        }
                        if (this.d) {
                            c();
                            Log.d("OBEXFtpServer", "OBEX Server finished!");
                            this.e = false;
                            return;
                        } else {
                            i2++;
                            Log.d("OBEXFtpServer", "acceptAndOpen ", th);
                            i = i3;
                        }
                    }
                }
                c();
                Log.d("OBEXFtpServer", "OBEX Server finished!");
                this.e = false;
            } catch (Throwable th2) {
                c();
                Log.d("OBEXFtpServer", "OBEX Server finished!");
                this.e = false;
                throw th2;
            }
        } catch (IOException e2) {
            Log.e("OBEXFtpServer", "Unable to create notifier");
            throw e2;
        }
    }

    public boolean b() {
        return this.e;
    }

    public void c() {
        Log.d("xxxxxxxxxx", "close");
        this.d = true;
        try {
            if (this.c != null) {
                this.c.e();
                if (!e()) {
                }
            }
            this.e = false;
            Log.d("OBEXFtpServer", "OBEX ServerConnection closed");
        } catch (Throwable th) {
            Log.d("OBEXFtpServer", "OBEX Server stop error", th);
        }
    }
}
