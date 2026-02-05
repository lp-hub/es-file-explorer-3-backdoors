package com.estrongs.android.pop.app;

import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.Date;

/* loaded from: classes.dex */
class by implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bx f550a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(bx bxVar) {
        this.f550a = bxVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.util.an anVar;
        this.f550a.f548a.setText(this.f550a.f.f546a.f355a.name);
        if (this.f550a.f.f546a.f355a.lastModifiedTime > 0) {
            long j = this.f550a.f.f546a.f355a.lastModifiedTime;
            if (j > 0) {
                TextView textView = this.f550a.f549b;
                anVar = this.f550a.f.c;
                textView.setText(anVar.a(new Date(j)));
            }
        } else {
            this.f550a.f549b.setText((CharSequence) null);
        }
        ((TextView) this.f550a.f.f546a.findViewById(C0000R.id.username)).setText(this.f550a.f.f546a.f355a.ownerUsername);
        if (this.f550a.f.f546a.f355a.description == null || "".equals(this.f550a.f.f546a.f355a.description)) {
            this.f550a.c.setVisibility(8);
        } else {
            this.f550a.c.setVisibility(0);
            this.f550a.c.setText(this.f550a.f.f546a.f355a.description);
        }
    }
}
