package com.estrongs.android.view;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ah implements com.estrongs.a.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f2736a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(af afVar) {
        this.f2736a = afVar;
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        com.estrongs.fs.g g;
        long j;
        String valueOf;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        if (iVar.i == 1 || iVar.i == 4) {
            String string = iVar.l ? this.f2736a.ad.getString(C0000R.string.task_progress_multi_item_message_size, new Object[]{this.f2736a.f2732a ? com.estrongs.fs.c.d.c(iVar.f) : String.valueOf(iVar.f)}) : "";
            if (iVar.i == 4) {
                this.f2736a.a(this.f2736a.ad.getString(C0000R.string.progress_connecting), this.f2736a.ad.getString(C0000R.string.task_progress_single_item_message, new Object[]{iVar.e < 1 ? this.f2736a.ad.getString(C0000R.string.progress_loading) : com.estrongs.fs.c.d.c(iVar.e)}));
            } else {
                this.f2736a.a(this.f2736a.ad.getString(C0000R.string.cal_file_count_and_size), this.f2736a.ad.getString(C0000R.string.task_progress_multi_item_message, new Object[]{Long.valueOf(iVar.d), string}));
            }
            this.f2736a.b((int) iVar.d);
            this.f2736a.f2733b.post(new ai(this, iVar));
            return;
        }
        if (iVar.i != 3) {
            if (!iVar.p) {
                this.f2736a.f2733b.post(new aj(this));
            }
            if (iVar.l) {
                if (iVar.e > 0) {
                    this.f2736a.a(iVar.e);
                }
                if (iVar.f >= 0) {
                    this.f2736a.b(iVar.f);
                }
            } else {
                if (iVar.c > 0) {
                    this.f2736a.a(iVar.c);
                }
                if (iVar.d >= 0) {
                    this.f2736a.b(iVar.d);
                }
            }
            if (iVar.g > 0 && iVar.l) {
                this.f2736a.c(iVar.g);
            }
            if (iVar.h > 0) {
                this.f2736a.d(iVar.h);
            }
            if (iVar.c > 0) {
                this.f2736a.b((int) iVar.c);
            }
            if (iVar.d > 0) {
                this.f2736a.a((int) iVar.d);
            }
            String d = com.estrongs.android.util.ak.d(iVar.f196a);
            if ((com.estrongs.android.util.ak.au(iVar.f196a) || com.estrongs.android.util.ak.aC(iVar.f196a)) && (g = com.estrongs.fs.a.b.a().g(iVar.f196a)) != null) {
                d = g.getName();
            }
            if (iVar.q != null) {
                d = iVar.q;
            }
            if (!iVar.o) {
                this.f2736a.G = d;
                this.f2736a.f2733b.post(new ak(this));
                this.f2736a.a(this.f2736a.ad.getString(C0000R.string.task_progress_message_name, new Object[]{iVar.j}), (String) null);
                return;
            }
            if (iVar.c != 1) {
                if (iVar.c > 1) {
                    this.f2736a.G = d;
                    this.f2736a.f2733b.post(new am(this, iVar));
                    if (this.f2736a.f2732a) {
                        j2 = this.f2736a.C;
                        valueOf = com.estrongs.fs.c.d.c(j2);
                    } else {
                        j = this.f2736a.C;
                        valueOf = String.valueOf(j);
                    }
                    this.f2736a.a(this.f2736a.ad.getString(C0000R.string.task_progress_message_name, new Object[]{iVar.j}), this.f2736a.ad.getString(C0000R.string.task_progress_multi_item_message, new Object[]{Long.valueOf(iVar.c), iVar.l ? this.f2736a.ad.getString(C0000R.string.task_progress_multi_item_message_size, new Object[]{valueOf}) : ""}));
                    return;
                }
                return;
            }
            String m = this.f2736a.m(C0000R.string.progress_loading);
            if (iVar.e > 0) {
                j6 = this.f2736a.H;
                if (j6 <= 0) {
                    this.f2736a.c(iVar.e);
                }
            }
            j3 = this.f2736a.H;
            if (j3 > 0) {
                if (this.f2736a.f2732a) {
                    j5 = this.f2736a.H;
                    m = com.estrongs.fs.c.d.c(j5);
                } else {
                    j4 = this.f2736a.H;
                    m = String.valueOf(j4);
                }
            }
            this.f2736a.a(this.f2736a.ad.getString(C0000R.string.task_progress_message_name, new Object[]{iVar.j}), iVar.l ? this.f2736a.ad.getString(C0000R.string.task_progress_single_item_message, new Object[]{m}) : null);
            this.f2736a.f2733b.post(new al(this, iVar));
        }
    }
}
