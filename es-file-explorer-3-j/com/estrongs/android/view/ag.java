package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f2734a;

    /* renamed from: b, reason: collision with root package name */
    private int f2735b = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar) {
        this.f2734a = afVar;
    }

    private void a(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        View view;
        View view2;
        View view3;
        TextView textView;
        int i;
        TextView textView2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        TextView textView3;
        TextView textView4;
        TextView textView5;
        TextView textView6;
        TextView textView7;
        ProgressBar progressBar;
        ProgressBar progressBar2;
        TextView textView8;
        TextView textView9;
        TextView textView10;
        TextView textView11;
        TextView textView12;
        TextView textView13;
        TextView textView14;
        TextView textView15;
        ProgressBar progressBar3;
        long j;
        long j2;
        long j3;
        double a2;
        TextView textView16;
        long j4;
        ProgressBar progressBar4;
        long j5;
        View view4;
        TextView textView17;
        String str;
        String str2;
        TextView textView18;
        String str3;
        TextView textView19;
        TextView textView20;
        String str4;
        TextView textView21;
        String str5;
        String str6;
        TextView textView22;
        TextView textView23;
        TextView textView24;
        ProgressBar progressBar5;
        long j6;
        TextView textView25;
        long j7;
        long j8;
        double a3;
        ProgressBar progressBar6;
        long j9;
        ProgressBar progressBar7;
        long j10;
        ProgressBar progressBar8;
        ProgressBar progressBar9;
        String str7 = null;
        switch (message.what) {
            case 1:
                progressBar6 = this.f2734a.i;
                progressBar6.setIndeterminate(false);
                j9 = this.f2734a.C;
                if (j9 > 2147483647L) {
                    this.f2735b = 100;
                }
                progressBar7 = this.f2734a.i;
                j10 = this.f2734a.C;
                progressBar7.setMax((int) (j10 / this.f2735b));
                return;
            case 2:
            case 3:
            default:
                return;
            case 4:
                progressBar5 = this.f2734a.i;
                j6 = this.f2734a.D;
                progressBar5.setProgress((int) (j6 / this.f2735b));
                textView25 = this.f2734a.r;
                StringBuilder sb = new StringBuilder();
                af afVar = this.f2734a;
                j7 = this.f2734a.D;
                j8 = this.f2734a.C;
                a3 = afVar.a(j7, j8);
                textView25.setText(sb.append(String.valueOf((int) a3)).append("%").toString());
                return;
            case 5:
                if (this.f2734a.d != null) {
                    textView24 = this.f2734a.k;
                    textView24.setText(this.f2734a.d);
                } else {
                    textView17 = this.f2734a.k;
                    str = this.f2734a.E;
                    textView17.setText(str);
                }
                if (this.f2734a.e != null) {
                    textView22 = this.f2734a.l;
                    textView22.setVisibility(0);
                    textView23 = this.f2734a.l;
                    textView23.setText(this.f2734a.e);
                } else {
                    str2 = this.f2734a.F;
                    if (str2 != null) {
                        str3 = this.f2734a.F;
                        if (!"".equals(str3)) {
                            textView19 = this.f2734a.l;
                            textView19.setVisibility(0);
                            textView20 = this.f2734a.l;
                            str4 = this.f2734a.F;
                            textView20.setText(str4);
                        }
                    }
                    textView18 = this.f2734a.l;
                    textView18.setVisibility(8);
                }
                textView21 = this.f2734a.m;
                str5 = this.f2734a.G;
                if (str5 != null) {
                    StringBuilder append = new StringBuilder().append(" : ");
                    str6 = this.f2734a.G;
                    str7 = append.append(str6).toString();
                }
                textView21.setText(str7);
                return;
            case 6:
                view4 = this.f2734a.x;
                view4.setVisibility(8);
                return;
            case 7:
                j4 = this.f2734a.H;
                if (j4 > 2147483647L) {
                    this.f2735b = 100;
                }
                progressBar4 = this.f2734a.j;
                j5 = this.f2734a.H;
                progressBar4.setMax((int) (j5 / this.f2735b));
                return;
            case 8:
                progressBar3 = this.f2734a.j;
                j = this.f2734a.I;
                progressBar3.setProgress((int) (j / this.f2735b));
                StringBuilder sb2 = new StringBuilder();
                af afVar2 = this.f2734a;
                j2 = this.f2734a.I;
                j3 = this.f2734a.H;
                a2 = afVar2.a(j2, j3);
                String sb3 = sb2.append(String.valueOf((int) a2)).append("%").toString();
                textView16 = this.f2734a.s;
                textView16.setText(sb3);
                return;
            case 9:
                textView2 = this.f2734a.t;
                i2 = this.f2734a.J;
                a(textView2, String.valueOf(i2));
                i3 = this.f2734a.J;
                i4 = this.f2734a.K;
                if (i3 == i4) {
                    i5 = this.f2734a.K;
                    if (i5 == 1) {
                        textView6 = this.f2734a.s;
                        textView6.setVisibility(0);
                        textView7 = this.f2734a.s;
                        textView7.setText(C0000R.string.task_waiting_done);
                        return;
                    }
                    i6 = this.f2734a.K;
                    if (i6 > 1) {
                        textView4 = this.f2734a.r;
                        textView4.setVisibility(0);
                        textView5 = this.f2734a.r;
                        textView5.setText(C0000R.string.task_waiting_done);
                        return;
                    }
                    i7 = this.f2734a.K;
                    if (i7 <= 0) {
                        textView3 = this.f2734a.r;
                        textView3.setVisibility(8);
                        return;
                    }
                    return;
                }
                return;
            case 10:
                textView = this.f2734a.u;
                i = this.f2734a.K;
                a(textView, String.valueOf(i));
                return;
            case 11:
                progressBar = this.f2734a.i;
                progressBar.setIndeterminate(true);
                progressBar2 = this.f2734a.j;
                progressBar2.setIndeterminate(true);
                textView8 = this.f2734a.k;
                a(textView8, null);
                textView9 = this.f2734a.m;
                a(textView9, null);
                textView10 = this.f2734a.n;
                a(textView10, null);
                textView11 = this.f2734a.o;
                a(textView11, null);
                textView12 = this.f2734a.r;
                a(textView12, null);
                textView13 = this.f2734a.s;
                a(textView13, null);
                textView14 = this.f2734a.t;
                a(textView14, null);
                textView15 = this.f2734a.u;
                a(textView15, null);
                return;
            case 12:
                String valueOf = message.obj == null ? null : String.valueOf(message.obj);
                if (com.estrongs.android.util.aw.a((CharSequence) valueOf)) {
                    view3 = this.f2734a.B;
                    view3.setVisibility(8);
                    return;
                } else {
                    view = this.f2734a.B;
                    view.setVisibility(0);
                    view2 = this.f2734a.B;
                    ((TextView) view2.findViewById(C0000R.id.prompt_message)).setText(valueOf);
                    return;
                }
            case 13:
                progressBar8 = this.f2734a.i;
                progressBar8.setIndeterminate(false);
                progressBar9 = this.f2734a.j;
                progressBar9.setIndeterminate(false);
                return;
        }
    }
}
