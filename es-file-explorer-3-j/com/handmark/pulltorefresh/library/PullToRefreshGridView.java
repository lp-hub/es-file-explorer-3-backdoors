package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.HeaderGridView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;

/* loaded from: classes.dex */
public class PullToRefreshGridView extends PullToRefreshAdapterViewBase<HeaderGridView> {
    public PullToRefreshGridView(Context context) {
        super(context);
    }

    public PullToRefreshGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PullToRefreshGridView(Context context, PullToRefreshBase.Mode mode) {
        super(context, mode);
    }

    public PullToRefreshGridView(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.AnimationStyle animationStyle) {
        super(context, mode, animationStyle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final HeaderGridView a(Context context, AttributeSet attributeSet) {
        HeaderGridView oVar = Build.VERSION.SDK_INT >= 9 ? new o(this, context, attributeSet) : new n(this, context, attributeSet);
        oVar.setId(C0000R.id.gridview);
        return oVar;
    }

    @Override // com.handmark.pulltorefresh.library.PullToRefreshBase
    public final PullToRefreshBase.Orientation o() {
        return PullToRefreshBase.Orientation.VERTICAL;
    }
}
