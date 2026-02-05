package com.estrongs.android.ui.b;

import android.widget.RadioGroup;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class em implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ el f1785a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public em(el elVar) {
        this.f1785a = elVar;
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        en[] enVarArr;
        en[] enVarArr2;
        int intValue = ((Integer) radioGroup.getTag()).intValue();
        if (i == C0000R.id.readOnly) {
            enVarArr2 = this.f1785a.c;
            enVarArr2[intValue].c = "ro";
        } else {
            enVarArr = this.f1785a.c;
            enVarArr[intValue].c = "rw";
        }
    }
}
