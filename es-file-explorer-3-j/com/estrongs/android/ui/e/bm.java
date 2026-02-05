package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.io.model.ArchiveEntryFile;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class bm implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f2011a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(w wVar) {
        this.f2011a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.view.e eVar;
        if (this.f2011a.k.t() != null && (this.f2011a.k.t() instanceof com.estrongs.android.view.e) && (eVar = (com.estrongs.android.view.e) this.f2011a.k.t()) != null && !eVar.m()) {
            if ((eVar.o() instanceof ArchiveEntryFile) && ((ArchiveEntryFile) eVar.o()).isRoot() && (eVar.p() instanceof com.estrongs.io.archive.rar.a) && ((com.estrongs.io.archive.rar.a) eVar.p()).k()) {
                eVar.a((List<com.estrongs.fs.g>) new ArrayList(), true);
            } else {
                eVar.a(eVar.h(), false);
            }
        }
        return true;
    }
}
