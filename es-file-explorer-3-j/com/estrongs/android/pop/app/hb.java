package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.widget.MediaController;

/* loaded from: classes.dex */
class hb extends MediaController {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f865a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hb(PopVideoPlayer popVideoPlayer, Context context) {
        super(context);
        this.f865a = popVideoPlayer;
    }

    @Override // android.widget.MediaController, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        boolean z = keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 0;
        if ((keyCode == 4 || keyCode == 82) && z) {
            this.f865a.v = true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.MediaController
    public void hide() {
        boolean f;
        View view;
        boolean z;
        f = this.f865a.f();
        if (!f) {
            this.f865a.v = false;
            try {
                view = this.f865a.p;
                view.setVisibility(4);
            } catch (Exception e) {
            }
            super.hide();
            return;
        }
        z = this.f865a.v;
        if (!z) {
            this.f865a.v = false;
        } else {
            this.f865a.v = false;
            this.f865a.a();
        }
    }

    @Override // android.widget.MediaController
    public void show() {
        View view;
        view = this.f865a.p;
        view.setVisibility(0);
        super.show();
    }
}
