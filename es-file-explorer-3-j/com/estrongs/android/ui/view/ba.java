package com.estrongs.android.ui.view;

import android.view.animation.Animation;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba extends com.estrongs.android.widget.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2628a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ az f2629b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(az azVar, String str) {
        this.f2629b = azVar;
        this.f2628a = str;
    }

    @Override // com.estrongs.android.widget.a, android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        bb bbVar;
        String str;
        Map map;
        String str2;
        boolean z;
        bb bbVar2;
        bbVar = this.f2629b.d;
        if (bbVar != null) {
            bbVar2 = this.f2629b.d;
            bbVar2.b();
        }
        String str3 = this.f2628a;
        str = this.f2629b.f;
        if (str3.equals(str)) {
            z = this.f2629b.i;
            if (!z) {
                this.f2629b.g = false;
            }
        } else {
            az azVar = this.f2629b;
            map = this.f2629b.c;
            str2 = this.f2629b.f;
            azVar.a(((com.estrongs.android.ui.e.a) map.get(str2)).a());
        }
        this.f2629b.g = false;
    }

    @Override // com.estrongs.android.widget.a, android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        bb bbVar;
        bb bbVar2;
        this.f2629b.g = true;
        bbVar = this.f2629b.d;
        if (bbVar != null) {
            bbVar2 = this.f2629b.d;
            bbVar2.a();
        }
    }
}
