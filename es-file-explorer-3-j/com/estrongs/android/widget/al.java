package com.estrongs.android.widget;

import android.app.Activity;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.view.bs;
import com.estrongs.android.view.bu;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al extends bu {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2892a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public al(ah ahVar, Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f2892a = ahVar;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.bu
    public int r() {
        return C0000R.layout.image_picker_folder_item;
    }
}
