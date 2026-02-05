package com.estrongs.android.ui.theme;

import android.view.View;
import com.estrongs.android.ui.view.ColorPickerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class v implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2562a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(ThemeColorActivity themeColorActivity) {
        this.f2562a = themeColorActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ColorPickerView colorPickerView;
        colorPickerView = this.f2562a.g;
        colorPickerView.a(-1);
    }
}
