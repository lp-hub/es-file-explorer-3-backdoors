package com.estrongs.android.pop.app.a;

import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f410a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar) {
        this.f410a = aVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        PopAudioPlayer popAudioPlayer;
        a aVar = this.f410a;
        a aVar2 = this.f410a;
        popAudioPlayer = this.f410a.p;
        aVar.f386b = new x(aVar2, popAudioPlayer);
        this.f410a.f386b.show();
        this.f410a.d();
        return true;
    }
}
