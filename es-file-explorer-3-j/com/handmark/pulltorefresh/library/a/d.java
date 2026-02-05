package com.handmark.pulltorefresh.library.a;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

/* loaded from: classes.dex */
/* synthetic */ class d {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f3274a = new int[PullToRefreshBase.Mode.values().length];

    static {
        try {
            f3274a[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f3274a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
