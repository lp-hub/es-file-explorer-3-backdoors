package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.drag.DragGrid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2747a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(an anVar) {
        this.f2747a = anVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (!this.f2747a.l) {
            if (this.f2747a.h != null) {
                this.f2747a.h.onItemClick(adapterView, view, i, j);
                return;
            }
            return;
        }
        com.estrongs.android.widget.e eVar = (com.estrongs.android.widget.e) view.getTag();
        CheckBox checkBox = eVar.i;
        checkBox.setChecked(!checkBox.isChecked());
        this.f2747a.c(i);
        if (!this.f2747a.h(i)) {
            this.f2747a.o.remove(this.f2747a.g(i));
            eVar.f.setBackgroundDrawable(null);
            return;
        }
        com.estrongs.android.ui.drag.h hVar = new com.estrongs.android.ui.drag.h();
        hVar.a(i);
        hVar.a((DragGrid) eVar.f);
        eVar.f.setBackgroundResource(C0000R.drawable.blank);
        hVar.a(com.estrongs.android.ui.d.a.a(eVar.f));
        this.f2747a.o.put(this.f2747a.g(i), hVar);
        eVar.f.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(this.f2747a.ad).a(C0000R.drawable.main_content_icon_bg_click));
    }
}
