package com.estrongs.android.ui.f;

import android.content.Context;
import android.view.View;
import com.estrongs.android.widget.TranslateImageView;

/* loaded from: classes.dex */
class d extends f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2201a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(a aVar, Context context, View view, TranslateImageView translateImageView) {
        super(context, view, translateImageView);
        this.f2201a = aVar;
    }

    @Override // com.estrongs.android.ui.f.f
    public void a(boolean z) {
        this.f2201a.d(z);
    }

    @Override // com.estrongs.android.ui.f.f
    public boolean a() {
        return this.f2201a.b();
    }
}
