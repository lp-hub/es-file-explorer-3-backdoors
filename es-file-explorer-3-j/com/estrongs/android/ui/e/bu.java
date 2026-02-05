package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class bu extends a {
    public bu(Context context, boolean z) {
        super(context, z);
    }

    public void a(View view) {
        this.c.addView(view, new ViewGroup.LayoutParams(-1, -1));
    }
}
