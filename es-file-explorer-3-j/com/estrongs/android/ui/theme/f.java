package com.estrongs.android.ui.theme;

import android.view.View;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyThemeActivity f2542a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ModifyThemeActivity modifyThemeActivity) {
        this.f2542a = modifyThemeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g(this.f2542a, com.estrongs.android.pop.b.b(), new g(this, com.estrongs.android.pop.q.a(this.f2542a).p()));
        gVar.a(this.f2542a.getText(C0000R.string.action_select));
        gVar.a(this.f2542a.getString(C0000R.string.confirm_cancel), new h(this));
        gVar.a(new i(this));
        gVar.h();
        this.f2542a.d = gVar;
    }
}
