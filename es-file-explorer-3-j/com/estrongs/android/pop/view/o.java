package com.estrongs.android.pop.view;

import com.estrongs.android.pop.app.LocalFileSharingActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements com.estrongs.android.ui.drag.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1421a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(FileExplorerActivity fileExplorerActivity) {
        this.f1421a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.drag.c
    public void a(com.estrongs.android.ui.drag.j jVar, Object obj) {
        LocalFileSharingActivity.a(this.f1421a, (List<com.estrongs.fs.g>) obj);
    }

    @Override // com.estrongs.android.ui.drag.c
    public void b(com.estrongs.android.ui.drag.j jVar, Object obj) {
    }
}
