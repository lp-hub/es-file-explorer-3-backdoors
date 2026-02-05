package com.estrongs.android.pop.app;

import android.content.Context;
import android.graphics.Canvas;
import android.util.Log;
import android.widget.FrameLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ed extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f712a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f713b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed(PopAudioPlayer popAudioPlayer, Context context) {
        super(context);
        this.f712a = popAudioPlayer;
        this.f713b = true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        try {
            super.draw(canvas);
        } catch (Throwable th) {
            Log.w("FileExplorerActivity", "containerEsFrameLayout.draw() catchs " + th.getMessage());
        }
        if (this.f713b) {
            post(new ee(this));
            this.f713b = false;
        }
    }
}
