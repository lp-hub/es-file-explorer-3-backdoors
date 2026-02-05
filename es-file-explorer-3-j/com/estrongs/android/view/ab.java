package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ab implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2725a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ aa f2726b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(aa aaVar, int i) {
        this.f2726b = aaVar;
        this.f2725a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        try {
            this.f2726b.f2724a.e.f();
            FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.f2726b.f2724a.ad;
            if (!fileExplorerActivity.C()) {
                fileExplorerActivity.d(C0000R.string.paste_not_allow_msg);
                return;
            }
            com.estrongs.fs.g gVar = this.f2726b.f2724a.d.get(this.f2725a);
            z = this.f2726b.f2724a.j;
            if (!z) {
                this.f2726b.f2724a.d.remove(gVar);
                fileExplorerActivity.z.remove(gVar);
                if (this.f2726b.f2724a.d.size() == 0) {
                    this.f2726b.f2724a.e.b(this.f2726b.f2724a);
                } else {
                    this.f2726b.f2724a.i.notifyDataSetChanged();
                }
            }
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(gVar);
            this.f2726b.f2724a.a(arrayList);
        } catch (IndexOutOfBoundsException e) {
        }
    }
}
