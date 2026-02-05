package com.estrongs.android.pop.app.compress;

import android.view.View;
import android.widget.RadioGroup;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f581a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(z zVar) {
        this.f581a = zVar;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        View view;
        View view2;
        View view3;
        View view4;
        if (radioGroup.getCheckedRadioButtonId() == C0000R.id.archive_type_gzip) {
            view3 = this.f581a.y;
            view3.setVisibility(8);
            view4 = this.f581a.z;
            view4.setVisibility(8);
            return;
        }
        if (radioGroup.getCheckedRadioButtonId() == C0000R.id.archive_type_zip) {
            view = this.f581a.y;
            view.setVisibility(0);
            view2 = this.f581a.z;
            view2.setVisibility(0);
        }
    }
}
