package com.estrongs.android.ui.e;

import android.content.Intent;
import android.os.Handler;
import android.view.MenuItem;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class af implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1975a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(w wVar) {
        this.f1975a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (com.estrongs.android.pop.app.a.aj.a().d()) {
            this.f1975a.f1968b.startActivity(new Intent(this.f1975a.f1968b, (Class<?>) PopAudioPlayer.class));
        } else {
            Handler handler = new Handler();
            com.estrongs.android.ui.b.de[] deVarArr = new com.estrongs.android.ui.b.de[1];
            handler.postDelayed(new ag(this, deVarArr), 500L);
            new ah(this, handler, deVarArr).start();
        }
        return true;
    }
}
