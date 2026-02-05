package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class co extends ag {

    /* renamed from: a, reason: collision with root package name */
    private static co f1706a = null;

    /* renamed from: b, reason: collision with root package name */
    private LinearLayout f1707b;

    public co(Context context) {
        super(context);
        setTitle(this.mContext.getResources().getString(C0000R.string.action_new));
        this.f1707b = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.window_new_network_chose, (ViewGroup) null);
        setContentView(this.f1707b);
        GridView gridView = (GridView) this.f1707b.findViewById(C0000R.id.gridview_window_newnetwork_chose);
        gridView.setAdapter((ListAdapter) new com.estrongs.android.ui.a.d(this.mContext));
        gridView.setOnItemClickListener(new cp(this));
    }
}
