package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class av implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESActivity f1206a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.pcs.aw f1207b;
    final /* synthetic */ List c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(ESActivity eSActivity, com.estrongs.android.ui.pcs.aw awVar, List list) {
        this.f1206a = eSActivity;
        this.f1207b = awVar;
        this.c = list;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z) {
            if (this.f1206a instanceof FileExplorerActivity) {
                FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.f1206a;
                fileExplorerActivity.l();
                com.estrongs.android.ui.pcs.az azVar = fileExplorerActivity.t() instanceof com.estrongs.android.ui.pcs.az ? (com.estrongs.android.ui.pcs.az) fileExplorerActivity.t() : null;
                if (azVar != null && com.estrongs.android.util.ak.aq(azVar.c())) {
                    azVar.a(this.f1207b.h() + "/files");
                }
            }
            aj.a(this.f1206a, this.f1207b, (List<com.estrongs.fs.g>) this.c);
        }
    }
}
