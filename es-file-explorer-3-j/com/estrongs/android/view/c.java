package com.estrongs.android.view;

import com.estrongs.android.widget.HeaderGridView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

/* loaded from: classes.dex */
class c implements com.handmark.pulltorefresh.library.k<HeaderGridView> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2796a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f2796a = aVar;
    }

    @Override // com.handmark.pulltorefresh.library.k
    public void a(PullToRefreshBase<HeaderGridView> pullToRefreshBase) {
        new d(this.f2796a, null).execute(new Void[0]);
    }

    @Override // com.handmark.pulltorefresh.library.k
    public void b(PullToRefreshBase<HeaderGridView> pullToRefreshBase) {
        new d(this.f2796a, null).execute(new Void[0]);
    }
}
