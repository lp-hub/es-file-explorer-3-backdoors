package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyThemeActivity f2541a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ModifyThemeActivity modifyThemeActivity) {
        this.f2541a = modifyThemeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        Intent intent = new Intent(this.f2541a, (Class<?>) ThemeColorActivity.class);
        intent.putExtra("set_what_color", 1);
        i = this.f2541a.f2508b;
        intent.putExtra("theme_data_index", i);
        this.f2541a.startActivityForResult(intent, 268439586);
    }
}
