package com.estrongs.android.ui.theme;

import android.view.View;
import com.estrongs.android.ui.view.ColorPickerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2561a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(ThemeColorActivity themeColorActivity) {
        this.f2561a = themeColorActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ColorPickerView colorPickerView;
        colorPickerView = this.f2561a.g;
        colorPickerView.a(-16777216);
    }
}
