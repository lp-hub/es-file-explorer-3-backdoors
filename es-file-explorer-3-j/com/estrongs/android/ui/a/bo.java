package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.SimpleSwitchButton;

/* loaded from: classes.dex */
class bo implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1533a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(s sVar) {
        this.f1533a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SimpleSwitchButton simpleSwitchButton = (SimpleSwitchButton) view.findViewById(C0000R.id.switchWidget);
        if (simpleSwitchButton != null) {
            simpleSwitchButton.setChecked(!simpleSwitchButton.isChecked());
        }
    }
}
