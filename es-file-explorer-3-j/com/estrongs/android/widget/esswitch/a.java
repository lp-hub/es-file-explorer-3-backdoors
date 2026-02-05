package com.estrongs.android.widget.esswitch;

import android.content.Context;
import android.util.Log;
import android.view.View;
import java.util.Locale;

/* loaded from: classes.dex */
public class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f2916a;

    /* renamed from: b, reason: collision with root package name */
    private Locale f2917b;

    public a(Context context) {
        this.f2917b = context.getResources().getConfiguration().locale;
    }

    @Override // com.estrongs.android.widget.esswitch.b
    public CharSequence a(CharSequence charSequence, View view) {
        if (!this.f2916a) {
            Log.w("AllCapsTransformationMethod", "Caller did not enable length changes; not transforming text");
            return charSequence;
        }
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f2917b);
        }
        return null;
    }

    @Override // com.estrongs.android.widget.esswitch.c
    public void a(boolean z) {
        this.f2916a = z;
    }
}
