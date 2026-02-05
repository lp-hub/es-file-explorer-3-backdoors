package com.estrongs.android.ui.preference.fragments;

import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ad implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f2439a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ac acVar) {
        this.f2439a = acVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.d();
        }
        try {
            FileExplorerActivity.E().N();
            this.f2439a.f2438a.getActivity().finish();
        } catch (Exception e) {
        }
    }
}
