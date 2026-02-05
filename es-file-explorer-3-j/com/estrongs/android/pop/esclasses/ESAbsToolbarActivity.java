package com.estrongs.android.pop.esclasses;

import android.view.View;
import com.estrongs.android.pop.p;
import com.estrongs.android.pop.q;
import com.estrongs.android.view.ar;

/* loaded from: classes.dex */
public abstract class ESAbsToolbarActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    protected boolean f1119a = true;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f1120b = false;

    protected abstract View a();

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ar arVar) {
        if (p.a() > 8) {
            arVar.a(new a(this, arVar.ad()));
        }
    }

    public void a(boolean z) {
        this.f1120b = z;
    }

    protected abstract View b();

    public void b(boolean z) {
        this.f1119a = z;
        if (z) {
            if (a() != null) {
                a().setVisibility(0);
            }
            if (b() != null) {
                b().setVisibility(0);
            }
        } else {
            if (a() != null) {
                a().setVisibility(8);
            }
            if (b() != null) {
                b().setVisibility(8);
            }
        }
        c(this.f1119a);
    }

    protected abstract void c(boolean z);

    public boolean c() {
        return this.f1120b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean d() {
        return this.f1119a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean e();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean f() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void g();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        q.a(this).f(!this.f1119a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1119a = !q.a(this).v();
        b(this.f1119a);
    }
}
