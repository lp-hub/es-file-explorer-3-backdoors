package com.estrongs.android.pop.app;

import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dl extends com.estrongs.android.pop.app.a.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopAudioPlayer f686a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dl(PopAudioPlayer popAudioPlayer, PopAudioPlayer popAudioPlayer2) {
        super(popAudioPlayer2);
        this.f686a = popAudioPlayer;
    }

    @Override // com.estrongs.android.pop.app.a.a
    public void a() {
        ImageView imageView;
        imageView = this.f686a.C;
        imageView.setImageResource(C0000R.drawable.toolbar_menu_collapse);
    }
}
