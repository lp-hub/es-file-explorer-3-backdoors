package com.estrongs.android.ui.b;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1702a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1703b;
    final /* synthetic */ String c;
    final /* synthetic */ boolean d;
    final /* synthetic */ String e;
    final /* synthetic */ cf f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(cf cfVar, String str, String str2, String str3, boolean z, String str4) {
        this.f = cfVar;
        this.f1702a = str;
        this.f1703b = str2;
        this.c = str3;
        this.d = z;
        this.e = str4;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean a2;
        String str;
        boolean z;
        Context context;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        Handler handler;
        String str8;
        String str9;
        Handler handler2;
        String str10 = null;
        a2 = this.f.a(this.f1702a, this.f1703b, this.c);
        if (!a2) {
            handler2 = this.f.h;
            handler2.post(new cm(this));
            return;
        }
        if (this.d) {
            str = com.estrongs.fs.impl.i.b.h("s3", null);
            str10 = com.estrongs.android.util.ak.a("s3", str, "fake", com.estrongs.android.util.ak.Y(this.f1702a));
        } else {
            str = null;
        }
        String str11 = this.e;
        if (this.e.length() != 0) {
            str = str11;
        } else if (!this.d) {
            str = this.f1703b;
        }
        z = this.f.k;
        if (z) {
            str8 = this.f.l;
            if (str8 != null) {
                com.estrongs.android.pop.q a3 = com.estrongs.android.pop.q.a(FexApplication.f325a);
                str9 = this.f.l;
                a3.a(str9, false);
            }
        }
        context = this.f.c;
        com.estrongs.android.pop.q a4 = com.estrongs.android.pop.q.a(context);
        if (!this.d) {
            str10 = this.f1702a;
        }
        a4.a(str10, str);
        com.estrongs.android.util.a a5 = com.estrongs.android.util.a.a();
        str2 = this.f.g;
        if (!str2.equals("ubuntu")) {
            str3 = this.f.g;
            if (!str3.equals("s3")) {
                str4 = this.f.g;
                if (!str4.equals("vdisk")) {
                    str5 = this.f.g;
                    if (!str5.equals("yandex")) {
                        str6 = this.f.g;
                        if (!str6.equals("sugarsync")) {
                            str7 = this.f.g;
                            if (str7.equals("kanbox") && a5 != null) {
                                a5.a("酷盘_Create", "酷盘_Create");
                            }
                        } else if (a5 != null) {
                            a5.a("Sugarsync_Create", "Sugarsync_Create");
                        }
                    } else if (a5 != null) {
                        a5.a("Yandex_Create", "Yandex_Create");
                    }
                } else if (a5 != null) {
                    a5.a("新浪微盘_Create", "新浪微盘_Create");
                }
            } else if (a5 != null) {
                a5.a("S3_Create", "S3_Create");
            }
        } else if (a5 != null) {
            a5.a("UbuntuOne_Create", "UbuntuOne_Create");
        }
        handler = this.f.h;
        handler.post(new cn(this));
    }
}
