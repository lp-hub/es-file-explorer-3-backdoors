package com.estrongs.android.ui.preference.esswitch;

import android.widget.CompoundButton;

/* loaded from: classes.dex */
class b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ SwitchPreference f2416a;

    private b(SwitchPreference switchPreference) {
        this.f2416a = switchPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (SwitchPreference.a(this.f2416a, Boolean.valueOf(z))) {
            this.f2416a.a(z);
        } else {
            compoundButton.setChecked(!z);
        }
    }
}
