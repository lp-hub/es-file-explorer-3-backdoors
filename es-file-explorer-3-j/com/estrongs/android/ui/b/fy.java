package com.estrongs.android.ui.b;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class fy implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1840a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fw f1841b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fy(fw fwVar, com.estrongs.a.a aVar) {
        this.f1841b = fwVar;
        this.f1840a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Long[] lArr = (Long[]) this.f1841b.f1837a.b(this.f1840a.getTaskResult());
        ev evVar = new ev(this.f1841b.f1837a.getContext(), lArr[0].longValue(), lArr[1].longValue());
        evVar.setSingleButton(this.f1841b.f1837a.getContext().getString(C0000R.string.confirm_ok), null);
        evVar.show();
    }
}
