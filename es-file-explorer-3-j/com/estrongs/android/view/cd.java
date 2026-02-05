package com.estrongs.android.view;

import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class cd<T> extends com.estrongs.android.widget.c<T> {

    /* renamed from: a, reason: collision with root package name */
    int f2802a = 0;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bu f2803b;

    /* JADX INFO: Access modifiers changed from: protected */
    public cd(bu buVar) {
        this.f2803b = buVar;
    }

    @Override // com.estrongs.android.widget.c, android.widget.Adapter
    public int getCount() {
        return this.f2803b.d();
    }

    @Override // com.estrongs.android.widget.c, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        cg cgVar;
        cg cgVar2;
        View view2;
        com.estrongs.fs.g e = this.f2803b.e(i);
        if (e == null) {
            return view != null ? view : this.d.a(e);
        }
        if (e == null || !e.getFileType().a()) {
            this.f2802a = 2;
        } else {
            this.f2802a = 1;
        }
        if (e != null && e.getFileType().equals(com.estrongs.fs.l.L)) {
            this.f2802a = 3;
        }
        if (view == null || ((cg) view.getTag()).f2807a != this.f2802a || ((cg) view.getTag()).f2808b) {
            view = this.d.a(e);
            cgVar = (cg) this.d.b(view);
            cgVar.f2807a = this.f2802a;
            view.setTag(cgVar);
        } else {
            cgVar = (cg) view.getTag();
        }
        cgVar.j = getItem(i);
        if (this.f2802a == 3) {
            view.setVisibility(0);
            view2 = this.f2803b.af.inflate(C0000R.layout.image_folder_create_site, (ViewGroup) null, false);
            cg cgVar3 = (cg) this.d.b(view2);
            cgVar3.f2807a = this.f2802a;
            cgVar3.f2808b = true;
            view2.setTag(cgVar3);
            cgVar2 = cgVar3;
        } else {
            cgVar2 = cgVar;
            view2 = view;
        }
        if (this.e != null) {
            this.e.a((com.estrongs.android.ui.drag.o) view2);
        }
        this.d.a(cgVar2, i);
        return view2;
    }
}
