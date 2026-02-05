package com.estrongs.android.ui.c;

import android.app.Activity;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.view.ar;
import com.estrongs.android.view.bs;
import com.estrongs.fs.b.z;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class u extends ar {

    /* renamed from: a, reason: collision with root package name */
    private List<com.estrongs.fs.g> f1921a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.a.l f1922b;
    private List<f> c;

    public u(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f1921a = new LinkedList();
        this.f1922b = com.estrongs.a.l.a();
        this.c = new LinkedList();
    }

    private void n() {
        for (com.estrongs.a.a aVar : this.f1922b.b()) {
            if (aVar instanceof z) {
                if (aVar.getTaskStatus() == 3) {
                    aVar.resume();
                } else if (aVar.getTaskStatus() == 1 || aVar.getTaskStatus() == 5) {
                    aVar.execute();
                }
            }
        }
    }

    private void o() {
        for (com.estrongs.a.a aVar : this.f1922b.b()) {
            if (aVar.getTaskStatus() == 2 && (aVar instanceof z)) {
                aVar.requsestPause();
            }
        }
    }

    private int p() {
        List<com.estrongs.a.a> b2 = this.f1922b.b();
        this.f1921a.clear();
        Iterator<com.estrongs.a.a> it = b2.iterator();
        while (it.hasNext()) {
            this.f1921a.add(new k(it.next()));
        }
        b(this.f1921a);
        return this.f1921a.size();
    }

    public f a(com.estrongs.a.a aVar) {
        for (f fVar : this.c) {
            if (fVar.a() == aVar) {
                return fVar;
            }
        }
        return null;
    }

    @Override // com.estrongs.android.view.an
    public void a(int i) {
    }

    @Override // com.estrongs.android.view.ar
    public void a(String str) {
        this.w = str;
        this.x = new com.estrongs.fs.m(str);
        b(true);
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        o();
        super.a_();
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
        if (p() == 0) {
            f(C0000R.string.no_download_task_found_message);
        }
    }

    @Override // com.estrongs.android.view.ar
    public void b_() {
        o();
    }

    @Override // com.estrongs.android.view.ar
    public String c() {
        return this.w;
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g f() {
        return j();
    }

    @Override // com.estrongs.android.view.ar
    protected void i() {
        this.g.setNumColumns(1);
        this.g.setSelector(C0000R.drawable.background_content_grid);
        this.g.setCacheColorHint(0);
        this.g.setOnItemClickListener(new v(this));
        this.e = new w(this);
        this.g.setAdapter(this.e);
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g j() {
        return null;
    }

    @Override // com.estrongs.android.view.ar
    public void l() {
        n();
    }
}
