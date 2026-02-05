package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyThemeActivity f2547a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(ModifyThemeActivity modifyThemeActivity) {
        this.f2547a = modifyThemeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        Intent intent = new Intent(this.f2547a, (Class<?>) ThemeColorActivity.class);
        intent.putExtra("set_what_color", 2);
        i = this.f2547a.f2508b;
        intent.putExtra("theme_data_index", i);
        this.f2547a.startActivityForResult(intent, 268439586);
    }
}
