package com.estrongs.android.ui.preference;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CustomListPreference f2404a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(CustomListPreference customListPreference) {
        this.f2404a = customListPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f2404a.f2392b = i;
        this.f2404a.onClick(dialogInterface, -1);
    }
}
