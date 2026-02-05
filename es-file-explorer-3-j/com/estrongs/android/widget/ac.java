package com.estrongs.android.widget;

import android.app.Activity;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.view.bs;
import com.estrongs.android.view.bu;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class ac extends bu {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f2884a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac(ab abVar, Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f2884a = abVar;
    }

    @Override // com.estrongs.android.view.bu, com.estrongs.android.view.an
    public void a(int i) {
        this.k = i;
        if (this.ad.getResources().getConfiguration().orientation == 1) {
            this.g.setNumColumns(3);
        } else {
            this.g.setNumColumns(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.bu
    public int al() {
        return C0000R.layout.image_picker_file_item;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.estrongs.android.view.an
    public void b(List<com.estrongs.fs.g> list) {
        ArrayList arrayList = new ArrayList();
        for (com.estrongs.fs.g gVar : list) {
            if (gVar instanceof CreateSiteFileObject) {
                arrayList.add(gVar);
            } else if (com.estrongs.android.util.ak.az(gVar.getPath()) && com.estrongs.android.util.ak.ah(gVar.getPath())) {
                arrayList.add(gVar);
            } else if (com.estrongs.android.util.ak.al(gVar.getPath()) && !com.estrongs.android.ui.pcs.aw.a().c()) {
                arrayList.add(gVar);
            }
        }
        list.removeAll(arrayList);
        if (this.p != null) {
            this.e.a(this.p);
        }
        this.e.a(list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.bu
    public int r() {
        return C0000R.layout.image_picker_folder_item;
    }
}
