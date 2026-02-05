package com.estrongs.android.pop.app;

import android.widget.CompoundButton;

/* loaded from: classes.dex */
class ct implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ OpenRecomm f639a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ct(OpenRecomm openRecomm) {
        this.f639a = openRecomm;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f639a.i = z;
    }
}
