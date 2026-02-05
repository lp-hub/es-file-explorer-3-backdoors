package com.estrongs.android.view;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;

/* loaded from: classes.dex */
class bf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.d.k f2765a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ be f2766b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bf(be beVar, com.estrongs.android.d.k kVar) {
        this.f2766b = beVar;
        this.f2765a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2765a.f.getDrawable() != this.f2765a.e) {
            this.f2766b.f2764b.b(this.f2765a);
            if (this.f2765a != null && com.estrongs.fs.c.d.c(this.f2765a.c)) {
                ((ESImageView) this.f2765a.f).a(this.f2766b.f2764b.ad.getResources().getDrawable(C0000R.drawable.pcs_icon_share));
            } else {
                if (this.f2765a == null || !this.f2765a.c.isLink()) {
                    return;
                }
                ((ESImageView) this.f2765a.f).a(this.f2766b.f2764b.ad.getResources().getDrawable(C0000R.drawable.icon_folder_shortcut));
            }
        }
    }
}
