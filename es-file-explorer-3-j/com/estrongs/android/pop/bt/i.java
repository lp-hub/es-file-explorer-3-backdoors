package com.estrongs.android.pop.bt;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i extends b.b.f {

    /* renamed from: a, reason: collision with root package name */
    Timer f1109a;

    /* renamed from: b, reason: collision with root package name */
    boolean f1110b;
    boolean c;
    b.a.a.a d;
    final /* synthetic */ g e;

    private i(g gVar) {
        this.e = gVar;
        this.f1109a = new Timer();
        this.f1110b = false;
        this.c = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ i(g gVar, h hVar) {
        this(gVar);
    }

    @Override // b.b.f
    public int a(b.b.c cVar, b.b.c cVar2) {
        this.f1110b = true;
        this.f1109a.cancel();
        return 160;
    }

    @Override // b.b.f
    public int a(b.b.c cVar, b.b.c cVar2, boolean z, boolean z2) {
        return super.a(cVar, cVar2, z, z2);
    }

    /* JADX WARN: Incorrect condition in loop: B:16:0x007a */
    @Override // b.b.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(b.b.d dVar) {
        g gVar;
        k kVar;
        File file;
        File f;
        boolean z;
        int read;
        k kVar2;
        File f2;
        k kVar3;
        k kVar4;
        int i = 0;
        try {
            b.b.c h = dVar.h();
            String str = (String) h.a(1);
            String str2 = (String) h.a(66);
            if (str == null && str2 == null) {
                return 192;
            }
            this.e.a("Receiving " + str);
            Long l = (Long) h.a(195);
            if (l != null) {
                kVar3 = this.e.e;
                kVar3.b(0);
                kVar4 = this.e.e;
                kVar4.a(l.intValue());
            }
            if (str == null) {
                f2 = g.f();
                file = File.createTempFile("temp", "tmp", f2);
            } else {
                f = g.f();
                file = new File(f, str);
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            InputStream a2 = dVar.a();
            while (!z && (read = a2.read()) != -1) {
                fileOutputStream.write(read);
                i++;
                if (l != null && i % 100 == 0) {
                    kVar2 = this.e.e;
                    kVar2.b(i);
                }
            }
            dVar.e();
            fileOutputStream.close();
            this.e.a("Received " + str);
            this.c = true;
            return 160;
        } catch (IOException e) {
            Log.d("OBEXOppServer", "OBEX Server onPut error", e);
            return FTPReply.SYSTEM_STATUS;
        } finally {
            kVar = this.e.e;
            kVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f1110b) {
            return;
        }
        Log.d("OBEXOppServer", "OBEX connection timeout");
        try {
            this.d.e();
        } catch (IOException e) {
        }
        if (this.c) {
            return;
        }
        this.e.a("Disconnected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b.a.a.a aVar) {
        this.e.a("Client connected");
        this.d = aVar;
        if (this.f1110b) {
            return;
        }
        this.f1109a.schedule(new j(this), 30000L);
    }

    @Override // b.b.f
    public void a(byte[] bArr) {
        Log.d("OBEXOppServer", "OBEX AuthFailure " + new String(bArr));
    }

    @Override // b.b.f
    public int b(b.b.d dVar) {
        int i;
        try {
            b.b.c h = dVar.h();
            String str = (String) h.a(66);
            i = str == null ? 192 : str.equals("x-obex/capability") ? 160 : 211;
        } catch (IOException e) {
            Log.d("OBEXOppServer", "OBEX Server onGet error", e);
            i = 211;
        }
        return i;
    }

    @Override // b.b.f
    public void b(b.b.c cVar, b.b.c cVar2) {
        if (!this.c) {
            this.e.a("Disconnected");
        }
        this.f1110b = false;
    }

    @Override // b.b.f
    public int c(b.b.c cVar, b.b.c cVar2) {
        return super.c(cVar, cVar2);
    }
}
