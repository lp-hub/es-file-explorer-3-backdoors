package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    ag f1885a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1886b;
    private View c;

    public w(Context context) {
        this.f1886b = context;
        this.c = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f1886b).inflate(C0000R.layout.window_new_network_chose, (ViewGroup) null);
        GridView gridView = (GridView) this.c.findViewById(C0000R.id.gridview_window_newnetwork_chose);
        gridView.setAdapter((ListAdapter) new com.estrongs.android.ui.a.b(this.f1886b));
        gridView.setOnItemClickListener(new x(this));
        this.f1885a = new aq(this.f1886b).a(C0000R.string.action_new).a(this.c).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, String str2) {
        String h;
        if (str2 == null || (h = com.estrongs.fs.impl.i.b.h(str, str2)) == null) {
            return false;
        }
        com.estrongs.android.pop.q.a(this.f1886b).a(com.estrongs.android.util.ak.a(str, h, "fake", "/"), h);
        return true;
    }

    public boolean a() {
        return this.f1885a != null && this.f1885a.isShowing();
    }

    public void b() {
        this.f1885a.show();
    }
}
