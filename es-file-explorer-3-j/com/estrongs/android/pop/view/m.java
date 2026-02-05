package com.estrongs.android.pop.view;

import com.estrongs.android.pop.C0000R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements com.estrongs.android.ui.drag.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1419a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(FileExplorerActivity fileExplorerActivity) {
        this.f1419a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.drag.c
    public void a(com.estrongs.android.ui.drag.j jVar, Object obj) {
        boolean z;
        String u = this.f1419a.u();
        List list = (List) obj;
        if (com.estrongs.android.util.ak.aP(u)) {
            if (list.size() >= 2) {
                com.estrongs.android.ui.view.z.a(this.f1419a, C0000R.string.share_multiple_remote_file_error, 0).show();
                return;
            } else if (com.estrongs.android.util.ak.aJ(u)) {
                com.estrongs.android.ui.view.z.a(this.f1419a, C0000R.string.share_bluetooth_file_error, 0).show();
                return;
            }
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (((com.estrongs.fs.g) it.next()).getFileType().a()) {
                z = true;
                break;
            }
        }
        if (z) {
            com.estrongs.android.ui.view.z.a(this.f1419a, C0000R.string.can_not_send_folder, 0).show();
            return;
        }
        if (list.size() == 1) {
            com.estrongs.android.pop.utils.aj.a(this.f1419a, ((com.estrongs.fs.g) list.get(0)).getAbsolutePath());
            this.f1419a.l();
        } else if (list.size() > 1) {
            com.estrongs.android.pop.utils.aj.a(this.f1419a, com.estrongs.android.util.aw.a(list));
            this.f1419a.l();
        }
    }

    @Override // com.estrongs.android.ui.drag.c
    public void b(com.estrongs.android.ui.drag.j jVar, Object obj) {
    }
}
