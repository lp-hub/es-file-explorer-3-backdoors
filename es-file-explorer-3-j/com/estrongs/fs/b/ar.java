package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.android.ui.b.ew;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar extends ew {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2983a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ar(ah ahVar, Activity activity, String str, com.estrongs.a.a aVar) {
        super(activity, str, aVar);
        this.f2983a = ahVar;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2983a.j = true;
    }
}
