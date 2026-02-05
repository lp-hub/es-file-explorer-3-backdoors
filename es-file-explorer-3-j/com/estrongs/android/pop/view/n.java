package com.estrongs.android.pop.view;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.drag.DragLayer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements com.estrongs.android.ui.drag.c {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1420a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(FileExplorerActivity fileExplorerActivity) {
        this.f1420a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.drag.c
    public void a(com.estrongs.android.ui.drag.j jVar, Object obj) {
        if (!com.estrongs.android.util.ak.Q(this.f1420a.u()) || com.estrongs.android.util.ak.X(this.f1420a.u())) {
            return;
        }
        List list = (List) obj;
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                this.f1420a.M().a(this.f1420a, arrayList);
                this.f1420a.l();
                return;
            } else {
                arrayList.add((com.estrongs.fs.impl.b.c) list.get(i2));
                i = i2 + 1;
            }
        }
    }

    @Override // com.estrongs.android.ui.drag.c
    public void b(com.estrongs.android.ui.drag.j jVar, Object obj) {
        DragLayer dragLayer;
        DragLayer dragLayer2;
        DragLayer dragLayer3;
        com.estrongs.android.ui.drag.d dVar;
        com.estrongs.android.ui.drag.d dVar2;
        com.estrongs.android.ui.drag.l lVar;
        DragLayer dragLayer4;
        FrameLayout frameLayout;
        DragLayer dragLayer5;
        DragLayer dragLayer6;
        DragLayer dragLayer7;
        com.estrongs.android.ui.drag.d dVar3;
        if (!com.estrongs.android.util.ak.Q(this.f1420a.u()) || com.estrongs.android.util.ak.X(this.f1420a.u())) {
            dragLayer = this.f1420a.aQ;
            if (dragLayer == null) {
                this.f1420a.aQ = (DragLayer) com.estrongs.android.pop.esclasses.e.a(this.f1420a).inflate(C0000R.layout.drag_multi_window, (ViewGroup) null);
                frameLayout = this.f1420a.ai;
                dragLayer5 = this.f1420a.aQ;
                frameLayout.addView(dragLayer5);
                dragLayer6 = this.f1420a.aQ;
                dragLayer6.setVisibility(0);
                FileExplorerActivity fileExplorerActivity = this.f1420a;
                FileExplorerActivity fileExplorerActivity2 = this.f1420a;
                dragLayer7 = this.f1420a.aQ;
                dVar3 = this.f1420a.az;
                fileExplorerActivity.aR = new com.estrongs.android.ui.drag.l(fileExplorerActivity2, dragLayer7, dVar3);
            } else {
                dragLayer2 = this.f1420a.aQ;
                dragLayer2.setVisibility(0);
            }
            dragLayer3 = this.f1420a.ay;
            if (dragLayer3 != null) {
                dragLayer4 = this.f1420a.ay;
                dragLayer4.setVisibility(8);
            }
            dVar = this.f1420a.az;
            dVar.b();
            dVar2 = this.f1420a.az;
            dVar2.c();
            lVar = this.f1420a.aR;
            lVar.a();
        }
    }
}
