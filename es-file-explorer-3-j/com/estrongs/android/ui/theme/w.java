package com.estrongs.android.ui.theme;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.ColorPickerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2563a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(ThemeColorActivity themeColorActivity) {
        this.f2563a = themeColorActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        int i2;
        ColorPickerView colorPickerView;
        int i3 = 0;
        i = this.f2563a.f2512b;
        if (i == 1) {
            i3 = this.f2563a.a(C0000R.color.background_default);
        } else {
            i2 = this.f2563a.f2512b;
            if (i2 == 2) {
                i3 = this.f2563a.a(C0000R.color.main_content_text);
            }
        }
        colorPickerView = this.f2563a.g;
        colorPickerView.a(i3);
    }
}
