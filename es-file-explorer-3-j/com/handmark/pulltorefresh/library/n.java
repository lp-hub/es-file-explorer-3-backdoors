package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.widget.HeaderGridView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n extends HeaderGridView implements com.handmark.pulltorefresh.library.a.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PullToRefreshGridView f3287a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(PullToRefreshGridView pullToRefreshGridView, Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3287a = pullToRefreshGridView;
    }

    @Override // com.handmark.pulltorefresh.library.a.a
    public void a(View view) {
        super.setEmptyView(view);
    }

    @Override // android.widget.AdapterView
    public void setEmptyView(View view) {
        this.f3287a.a(view);
    }
}
