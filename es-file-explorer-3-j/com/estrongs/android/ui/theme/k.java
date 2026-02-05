package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyThemeActivity f2548a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(ModifyThemeActivity modifyThemeActivity) {
        this.f2548a = modifyThemeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        Intent intent = new Intent(this.f2548a, (Class<?>) ThemeFolderActivity.class);
        i = this.f2548a.f2508b;
        intent.putExtra("theme_data_index", i);
        this.f2548a.startActivityForResult(intent, 268439587);
    }
}
