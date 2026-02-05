package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.view.View;

@TargetApi(9)
/* loaded from: classes.dex */
public final class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(View view) {
        return view.getOverScrollMode() != 2;
    }
}
