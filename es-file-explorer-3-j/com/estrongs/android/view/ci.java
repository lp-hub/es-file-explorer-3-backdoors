package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ci extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ch f2811a;

    /* renamed from: b, reason: collision with root package name */
    private int f2812b = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(ch chVar) {
        this.f2811a = chVar;
    }

    private void a(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        ProgressBar progressBar;
        ProgressBar progressBar2;
        int i;
        int i2;
        int i3;
        double a2;
        int i4;
        String valueOf;
        int i5;
        int i6;
        String valueOf2;
        View view;
        ProgressBar progressBar3;
        ProgressBar progressBar4;
        int i7;
        ProgressBar progressBar5;
        int i8;
        View view2;
        int i9;
        ProgressBar progressBar6;
        String str;
        boolean z;
        String str2;
        View view3;
        int i10;
        String valueOf3;
        int i11;
        View view4;
        ProgressBar progressBar7;
        int i12;
        int i13;
        int i14;
        double a3;
        int i15;
        String valueOf4;
        int i16;
        int i17;
        String valueOf5;
        View view5;
        ProgressBar progressBar8;
        int i18;
        ProgressBar progressBar9;
        int i19;
        View view6;
        int i20;
        switch (message.what) {
            case 1:
                if (this.f2811a.f2809a) {
                    i20 = this.f2811a.m;
                    valueOf5 = com.estrongs.fs.c.d.c(i20);
                } else {
                    i17 = this.f2811a.m;
                    valueOf5 = String.valueOf(i17);
                }
                view5 = this.f2811a.j;
                if (view5 != null) {
                    view6 = this.f2811a.j;
                    view6.setVisibility(0);
                }
                if (this.f2811a.g != null) {
                    this.f2811a.g.setText(valueOf5);
                }
                progressBar8 = this.f2811a.i;
                progressBar8.setIndeterminate(false);
                i18 = this.f2811a.m;
                if (i18 > Integer.MAX_VALUE) {
                    this.f2812b = 100;
                }
                progressBar9 = this.f2811a.i;
                i19 = this.f2811a.m;
                progressBar9.setMax(i19 / this.f2812b);
                return;
            case 2:
            default:
                return;
            case 3:
                view3 = this.f2811a.k;
                if (view3 != null) {
                    view4 = this.f2811a.k;
                    view4.setVisibility(0);
                }
                if (this.f2811a.h != null) {
                    StringBuilder sb = new StringBuilder();
                    if (this.f2811a.f2809a) {
                        i11 = this.f2811a.l;
                        valueOf3 = com.estrongs.fs.c.d.c(i11);
                    } else {
                        i10 = this.f2811a.l;
                        valueOf3 = String.valueOf(i10);
                    }
                    this.f2811a.h.setText(sb.append(valueOf3).append("/s").toString());
                    return;
                }
                return;
            case 4:
                progressBar7 = this.f2811a.i;
                i12 = this.f2811a.n;
                progressBar7.setProgress(i12 / this.f2812b);
                if (this.f2811a.f != null) {
                    TextView textView = this.f2811a.f;
                    if (this.f2811a.f2809a) {
                        i16 = this.f2811a.n;
                        valueOf4 = com.estrongs.fs.c.d.c(i16);
                    } else {
                        i15 = this.f2811a.n;
                        valueOf4 = String.valueOf(i15);
                    }
                    textView.setText(valueOf4);
                }
                TextView textView2 = this.f2811a.e;
                StringBuilder sb2 = new StringBuilder();
                ch chVar = this.f2811a;
                i13 = this.f2811a.n;
                i14 = this.f2811a.m;
                a3 = chVar.a(i13, i14);
                textView2.setText(sb2.append(String.valueOf((int) a3)).append("%").toString());
                return;
            case 5:
                z = this.f2811a.p;
                if (z) {
                    return;
                }
                TextView textView3 = this.f2811a.d;
                str2 = this.f2811a.o;
                textView3.setText(str2);
                return;
            case 6:
                progressBar6 = this.f2811a.i;
                progressBar6.setIndeterminate(true);
                return;
            case 7:
                if (this.f2811a.f2809a) {
                    i9 = this.f2811a.q;
                    valueOf2 = com.estrongs.fs.c.d.c(i9);
                } else {
                    i6 = this.f2811a.q;
                    valueOf2 = String.valueOf(i6);
                }
                view = this.f2811a.j;
                if (view != null) {
                    view2 = this.f2811a.j;
                    view2.setVisibility(0);
                }
                if (this.f2811a.g != null) {
                    this.f2811a.g.setText(valueOf2);
                }
                progressBar3 = this.f2811a.i;
                progressBar3.setVisibility(0);
                progressBar4 = this.f2811a.i;
                progressBar4.setIndeterminate(false);
                i7 = this.f2811a.q;
                if (i7 > Integer.MAX_VALUE) {
                    this.f2812b = 100;
                }
                progressBar5 = this.f2811a.i;
                i8 = this.f2811a.q;
                progressBar5.setMax(i8 / this.f2812b);
                return;
            case 8:
                progressBar2 = this.f2811a.i;
                i = this.f2811a.r;
                progressBar2.setProgress(i / this.f2812b);
                if (this.f2811a.f != null) {
                    TextView textView4 = this.f2811a.f;
                    if (this.f2811a.f2809a) {
                        i5 = this.f2811a.r;
                        valueOf = com.estrongs.fs.c.d.c(i5);
                    } else {
                        i4 = this.f2811a.r;
                        valueOf = String.valueOf(i4);
                    }
                    textView4.setText(valueOf);
                }
                StringBuilder sb3 = new StringBuilder();
                ch chVar2 = this.f2811a;
                i2 = this.f2811a.r;
                i3 = this.f2811a.q;
                a2 = chVar2.a(i2, i3);
                this.f2811a.e.setText(sb3.append(String.valueOf((int) a2)).append("%").toString());
                return;
            case 9:
                this.f2811a.p = true;
                TextView textView5 = this.f2811a.d;
                str = this.f2811a.o;
                textView5.setText(str);
                return;
            case 10:
                progressBar = this.f2811a.i;
                progressBar.setIndeterminate(true);
                a(this.f2811a.g, null);
                a(this.f2811a.f, null);
                a(this.f2811a.e, null);
                a(this.f2811a.d, null);
                a(this.f2811a.h, null);
                return;
        }
    }
}
