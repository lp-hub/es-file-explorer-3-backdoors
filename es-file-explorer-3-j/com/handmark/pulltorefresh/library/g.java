package com.handmark.pulltorefresh.library;

import com.handmark.pulltorefresh.library.PullToRefreshBase;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public /* synthetic */ class g {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f3283a;

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f3284b;
    static final /* synthetic */ int[] c;
    static final /* synthetic */ int[] d = new int[PullToRefreshBase.AnimationStyle.values().length];

    static {
        try {
            d[PullToRefreshBase.AnimationStyle.ROTATE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            d[PullToRefreshBase.AnimationStyle.FLIP.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        c = new int[PullToRefreshBase.Mode.values().length];
        try {
            c[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            c[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            c[PullToRefreshBase.Mode.MANUAL_REFRESH_ONLY.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        try {
            c[PullToRefreshBase.Mode.BOTH.ordinal()] = 4;
        } catch (NoSuchFieldError e6) {
        }
        f3284b = new int[PullToRefreshBase.State.values().length];
        try {
            f3284b[PullToRefreshBase.State.RESET.ordinal()] = 1;
        } catch (NoSuchFieldError e7) {
        }
        try {
            f3284b[PullToRefreshBase.State.PULL_TO_REFRESH.ordinal()] = 2;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f3284b[PullToRefreshBase.State.RELEASE_TO_REFRESH.ordinal()] = 3;
        } catch (NoSuchFieldError e9) {
        }
        try {
            f3284b[PullToRefreshBase.State.REFRESHING.ordinal()] = 4;
        } catch (NoSuchFieldError e10) {
        }
        try {
            f3284b[PullToRefreshBase.State.MANUAL_REFRESHING.ordinal()] = 5;
        } catch (NoSuchFieldError e11) {
        }
        try {
            f3284b[PullToRefreshBase.State.OVERSCROLLING.ordinal()] = 6;
        } catch (NoSuchFieldError e12) {
        }
        f3283a = new int[PullToRefreshBase.Orientation.values().length];
        try {
            f3283a[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
        } catch (NoSuchFieldError e13) {
        }
        try {
            f3283a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
        } catch (NoSuchFieldError e14) {
        }
    }
}
