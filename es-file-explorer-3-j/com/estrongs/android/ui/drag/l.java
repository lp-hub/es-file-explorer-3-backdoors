package com.estrongs.android.ui.drag;

import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private DragLayer f1957a;

    /* renamed from: b, reason: collision with root package name */
    private List<DragWindowView> f1958b = new ArrayList();
    private d c;
    private boolean d;
    private FileExplorerActivity e;

    public l(FileExplorerActivity fileExplorerActivity, DragLayer dragLayer, d dVar) {
        this.f1957a = dragLayer;
        this.c = dVar;
        this.e = fileExplorerActivity;
        this.d = this.e.getResources().getConfiguration().orientation == 1;
        try {
            b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(DragWindowView dragWindowView, int i) {
        if (dragWindowView == null) {
            return;
        }
        this.f1958b.add(dragWindowView);
        dragWindowView.a(i);
    }

    private void b() {
        int i = 0;
        if (this.d) {
            LinearLayout[] linearLayoutArr = {(LinearLayout) this.f1957a.findViewById(C0000R.id.row1), (LinearLayout) this.f1957a.findViewById(C0000R.id.row2), (LinearLayout) this.f1957a.findViewById(C0000R.id.row3)};
            while (i < linearLayoutArr.length) {
                a((DragWindowView) linearLayoutArr[i].findViewById(C0000R.id.grid1), (i * 3) + 0);
                a((DragWindowView) linearLayoutArr[i].findViewById(C0000R.id.grid2), (i * 3) + 1);
                a((DragWindowView) linearLayoutArr[i].findViewById(C0000R.id.grid3), (i * 3) + 2);
                i++;
            }
        } else {
            LinearLayout[] linearLayoutArr2 = {(LinearLayout) this.f1957a.findViewById(C0000R.id.row1), (LinearLayout) this.f1957a.findViewById(C0000R.id.row2)};
            while (i < linearLayoutArr2.length) {
                a((DragWindowView) linearLayoutArr2[i].findViewById(C0000R.id.grid1), (i * 2) + 0);
                a((DragWindowView) linearLayoutArr2[i].findViewById(C0000R.id.grid2), (i * 2) + 1);
                a((DragWindowView) linearLayoutArr2[i].findViewById(C0000R.id.grid3), (i * 2) + 2);
                a((DragWindowView) linearLayoutArr2[i].findViewById(C0000R.id.grid4), (i * 2) + 3);
                a((DragWindowView) linearLayoutArr2[i].findViewById(C0000R.id.grid5), (i * 2) + 4);
                i++;
            }
        }
        Iterator<DragWindowView> it = this.f1958b.iterator();
        while (it.hasNext()) {
            it.next().a(this.e);
        }
    }

    public void a() {
        int c = com.estrongs.android.ui.d.e.c();
        for (int i = 0; i < c; i++) {
            DragWindowView dragWindowView = this.f1958b.get(i);
            dragWindowView.setVisibility(0);
            dragWindowView.a();
            this.c.a((o) dragWindowView);
        }
        while (c < this.f1958b.size()) {
            this.f1958b.get(c).setVisibility(4);
            c++;
        }
    }
}
