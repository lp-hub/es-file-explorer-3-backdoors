package com.estrongs.android.pop.view;

import java.util.List;

/* loaded from: classes.dex */
class l implements com.estrongs.android.view.aq<com.estrongs.fs.g> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1418a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(FileExplorerActivity fileExplorerActivity) {
        this.f1418a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.view.aq
    public void a(List<com.estrongs.fs.g> list) {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                break;
            }
            if (list.get(i).getFileType().a()) {
                z = true;
                break;
            }
            i++;
        }
        this.f1418a.a(list.size(), z);
    }
}
