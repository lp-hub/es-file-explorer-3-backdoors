package com.estrongs.android.pop.bt;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.estrongs.android.pop.q;
import com.estrongs.bluetooth.parser.OBEXElement;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Timer;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends b.b.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1101a;

    /* renamed from: b, reason: collision with root package name */
    private Timer f1102b;
    private boolean c;
    private boolean d;
    private b.a.a.a e;
    private String f;
    private String g;
    private int h;

    private c(a aVar) {
        this.f1101a = aVar;
        this.f1102b = new Timer();
        this.c = false;
        this.d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ c(a aVar, b bVar) {
        this(aVar);
    }

    private void c() {
    }

    @Override // b.b.f
    public int a(b.b.c cVar, b.b.c cVar2) {
        boolean a2;
        byte[] bArr;
        Log.d("OBEXFtpServer", "OBEX onConnect");
        if (cVar == null) {
            return 160;
        }
        try {
            byte[] bArr2 = (byte[]) cVar.a(70);
            if (bArr2 != null) {
                a2 = this.f1101a.a(bArr2);
                if (!a2) {
                    return 192;
                }
            }
            cVar2.a(203, new Long(this.h));
            bArr = a.j;
            cVar2.a(74, bArr);
            this.c = true;
            this.f1102b.cancel();
            return 160;
        } catch (IOException e) {
            return 192;
        }
    }

    @Override // b.b.f
    public int a(b.b.c cVar, b.b.c cVar2, boolean z, boolean z2) {
        String str;
        String b2;
        String str2;
        boolean d;
        String str3;
        Log.d("OBEXFtpServer", "OBEX onSetPath");
        if (!this.c) {
            return 164;
        }
        if (z) {
            this.g = this.f;
        }
        try {
            if (((Long) cVar.a(203)).longValue() != this.h) {
                return FTPReply.SYSTEM_STATUS;
            }
            String str4 = (String) cVar.a(1);
            if (str4 == null || str4.length() == 0) {
                if (!z && !z2) {
                    str2 = this.f1101a.h;
                    this.f = str2;
                } else {
                    if (!z || z2) {
                        return 192;
                    }
                    str = this.f1101a.h;
                    if (str.equals(this.f)) {
                        return 196;
                    }
                    b2 = this.f1101a.b(this.f);
                    this.f = b2;
                }
            } else if (str4.equals("/")) {
                str3 = this.f1101a.h;
                this.f = str3;
            } else {
                String str5 = this.f + str4 + "/";
                d = this.f1101a.d(str5);
                if (!z2 && !d) {
                    return 196;
                }
                this.f = str5;
                if (z2 && !d) {
                    this.f1101a.e(str5);
                }
            }
            return 160;
        } catch (IOException e) {
            return 192;
        }
    }

    @Override // b.b.f
    public int a(b.b.d dVar) {
        k kVar;
        String str;
        boolean z;
        k kVar2;
        k kVar3;
        k kVar4;
        int i = 0;
        Log.d("OBEXFtpServer", "OBEX onPut");
        try {
            if (!this.c) {
                return 164;
            }
            b.b.c h = dVar.h();
            if (((Long) h.a(203)).longValue() != this.h) {
                return FTPReply.SYSTEM_STATUS;
            }
            String str2 = (String) h.a(1);
            if (str2 != null) {
                Log.d("OBEXFtpServer", "name:" + str2);
                this.f1101a.a("Receiving " + str2);
                str = str2;
            } else {
                String str3 = "bt_received.tmp" + SystemClock.uptimeMillis();
                this.f1101a.a("Receiving file");
                str = str3;
            }
            Long l = (Long) h.a(195);
            if (l != null) {
                Log.d("OBEXFtpServer", "file lenght:" + l);
                kVar3 = this.f1101a.i;
                kVar3.b(0);
                kVar4 = this.f1101a.i;
                kVar4.a(l.intValue());
            }
            File file = new File(this.f, str);
            if (!file.exists()) {
                file.createNewFile();
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 65536);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(dVar.a(), 65536);
            byte[] bArr = new byte[65536];
            while (true) {
                z = this.f1101a.d;
                if (z) {
                    break;
                }
                int read = bufferedInputStream.read(bArr, 0, 65536);
                if (read == -1) {
                    Log.d("OBEXFtpServer", "EOS received");
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
                i += read;
                if (l != null && i % 100 == 0) {
                    kVar2 = this.f1101a.i;
                    kVar2.b(i);
                }
            }
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            dVar.e();
            Log.d("OBEXFtpServer", "file saved:" + file.getAbsolutePath());
            this.f1101a.a("Received " + str);
            this.d = true;
            c();
            return 160;
        } catch (IOException e) {
            Log.d("OBEXFtpServer", "OBEX Server onPut error", e);
            return FTPReply.SYSTEM_STATUS;
        } finally {
            Log.d("OBEXFtpServer", "OBEX onPut ends");
            kVar = this.f1101a.i;
            kVar.a();
        }
    }

    public void a() {
        Log.d("OBEXFtpServer", "OBEX notConnectedClose");
        if (this.c) {
            return;
        }
        Log.d("OBEXFtpServer", "OBEX connection timeout");
        try {
            this.e.e();
        } catch (IOException e) {
        }
        if (this.d) {
            return;
        }
        this.f1101a.a("Disconnected");
    }

    public void a(b.a.a.a aVar, int i) {
        Context context;
        Log.d("OBEXFtpServer", "Received OBEX connection");
        this.f1101a.a("Client connected");
        this.e = aVar;
        this.h = i;
        if (!this.c) {
            this.f1102b.schedule(new d(this), 60000L);
        }
        context = this.f1101a.f;
        this.f = q.a(context).B();
    }

    @Override // b.b.f
    public void a(byte[] bArr) {
        Log.d("OBEXFtpServer", "OBEX AuthFailure " + new String(bArr));
    }

    @Override // b.b.f
    public int b(b.b.d dVar) {
        String str;
        String str2;
        com.estrongs.bluetooth.parser.a aVar;
        ArrayList<OBEXElement> a2;
        Log.d("OBEXFtpServer", "OBEX onGet");
        try {
            if (!this.c) {
                return 164;
            }
            b.b.c h = dVar.h();
            if (h == null) {
                return 192;
            }
            String str3 = (String) h.a(66);
            String str4 = (String) h.a(1);
            if (((Long) h.a(203)).longValue() != this.h) {
                return FTPReply.SYSTEM_STATUS;
            }
            if (str3 != null && str3.equals("x-obex/folder-listing")) {
                aVar = this.f1101a.f1099b;
                a2 = this.f1101a.a(this.f, str4);
                byte[] bytes = aVar.a(a2).getBytes();
                b.b.c b2 = b();
                b2.a(203, new Long(this.h));
                b2.a(195, new Long(bytes.length));
                b2.a(1, str4);
                dVar.b(b2);
                DataOutputStream d = dVar.d();
                d.write(bytes, 0, bytes.length);
                d.flush();
                d.close();
                dVar.e();
                return 160;
            }
            if (str4 == null) {
                b.b.c h2 = dVar.h();
                h2.a(73, new byte[0]);
                dVar.b(h2);
                dVar.e();
                return 160;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(this.f, str4)), 65536);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(dVar.c(), 65536);
            byte[] bArr = new byte[65536];
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, 65536);
                if (read == -1) {
                    bufferedOutputStream.flush();
                    bufferedInputStream.close();
                    bufferedOutputStream.close();
                    dVar.e();
                    return 160;
                }
                bufferedOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            Log.d("OBEXFtpServer", "OBEX Server onGet error", e);
            return FTPReply.SYSTEM_STATUS;
        } finally {
            Log.d("OBEXFtpServer", "OBEX onGet ends");
        }
    }

    @Override // b.b.f
    public void b(b.b.c cVar, b.b.c cVar2) {
        Log.d("OBEXFtpServer", "OBEX onDisconnect");
        if (!this.d) {
            this.f1101a.a("Disconnected");
        }
        this.c = false;
    }

    @Override // b.b.f
    public int c(b.b.c cVar, b.b.c cVar2) {
        boolean d;
        boolean c;
        Log.d("OBEXFtpServer", "OBEX onDelete");
        if (!this.c) {
            return 164;
        }
        try {
            if (((Long) cVar.a(203)).longValue() != this.h) {
                return FTPReply.SYSTEM_STATUS;
            }
            String str = (String) cVar.a(1);
            if (str == null || str.equals("/")) {
                return 192;
            }
            String str2 = this.f + str + "/";
            d = this.f1101a.d(str2);
            if (!d) {
                return 196;
            }
            c = this.f1101a.c(str2);
            return c ? 160 : 195;
        } catch (IOException e) {
            return super.c(cVar, cVar2);
        }
    }
}
