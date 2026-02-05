package com.estrongs.fs.b;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ev;

/* loaded from: classes.dex */
class aw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f2991a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ au f2992b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(au auVar, com.estrongs.a.a aVar) {
        this.f2992b = auVar;
        this.f2991a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Long[] lArr = (Long[]) this.f2992b.f2988a.b(this.f2991a.getTaskResult());
        ev evVar = new ev(this.f2992b.f2988a.f2986a, lArr[0].longValue(), lArr[1].longValue());
        evVar.setSingleButton(this.f2992b.f2988a.f2986a.getString(C0000R.string.confirm_ok), null);
        evVar.show();
    }
}
