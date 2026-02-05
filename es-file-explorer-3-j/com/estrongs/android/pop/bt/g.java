package com.estrongs.android.pop.bt;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.UUID;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public final UUID f1107a;

    /* renamed from: b, reason: collision with root package name */
    private b.b.g f1108b;
    private boolean c;
    private boolean d;
    private k e;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.e.a(str);
    }

    private boolean e() {
        try {
            return Integer.parseInt(Build.VERSION.SDK) >= 5;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File f() {
        return new File("/sdcard");
    }

    public void a() {
        this.c = false;
        try {
            if (e()) {
                this.f1108b = com.estrongs.bluetooth.c.a("OBEX Object Push", this.f1107a);
            }
            try {
                this.d = true;
                int i = 0;
                int i2 = 0;
                while (!this.c) {
                    i iVar = new i(this, null);
                    int i3 = i + 1;
                    try {
                        try {
                            iVar.a(this.f1108b.a(iVar));
                            i = i3;
                            i2 = 0;
                        } catch (Throwable th) {
                            if ("Stack closed".equals(th.getMessage())) {
                                this.c = true;
                            }
                            if (this.c) {
                                c();
                                this.d = false;
                                return;
                            } else {
                                i2++;
                                i = i3;
                            }
                        }
                    } catch (InterruptedIOException e) {
                        this.c = true;
                    }
                }
                c();
                this.d = false;
            } catch (Throwable th2) {
                c();
                this.d = false;
                throw th2;
            }
        } catch (IOException e2) {
            Log.e("OBEXOppServer", "Unable to create notifier");
            throw e2;
        }
    }

    public boolean b() {
        return this.d;
    }

    public void c() {
        this.c = true;
        try {
            if (this.f1108b != null) {
                this.f1108b.e();
            }
            this.d = false;
        } catch (Throwable th) {
            Log.d("OBEXOppServer", "OBEX Server stop error", th);
        }
    }
}
