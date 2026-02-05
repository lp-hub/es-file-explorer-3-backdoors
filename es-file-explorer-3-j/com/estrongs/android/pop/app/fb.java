package com.estrongs.android.pop.app;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f796a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(PopPreferenceActivity popPreferenceActivity) {
        this.f796a = popPreferenceActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f796a.o.setEnabled(false);
        try {
            this.f796a.dismissDialog(102);
            com.estrongs.android.ui.view.z.a(this.f796a, C0000R.string.delete_text_success, 0).show();
        } catch (IllegalArgumentException e) {
        }
    }
}
