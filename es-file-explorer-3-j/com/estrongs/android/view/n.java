package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.ESViewStub;
import com.estrongs.android.widget.SlidingDrawer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    public final SlidingDrawer f2846a;
    private boolean d;
    private Activity e;
    private ViewGroup f;
    private com.estrongs.android.ui.theme.al g;
    private x i = null;
    private static n c = null;
    private static LinkedList<x> h = new LinkedList<>();

    /* renamed from: b, reason: collision with root package name */
    public static boolean f2845b = false;

    private n(Activity activity) {
        this.e = activity;
        this.g = com.estrongs.android.ui.theme.al.a(this.e);
        ESViewStub eSViewStub = (ESViewStub) this.e.findViewById(C0000R.id.clipboard_stub);
        eSViewStub.b(C0000R.layout.clipboard);
        eSViewStub.a(C0000R.id.clipboard);
        eSViewStub.a(com.estrongs.android.pop.esclasses.e.a(this.e));
        this.f2846a = (SlidingDrawer) eSViewStub.a();
        ((TextView) this.f2846a.findViewById(C0000R.id.title)).setText(C0000R.string.location_clipboard);
        this.f = (ViewGroup) this.f2846a.findViewById(C0000R.id.clipboard_listview);
        Button button = (Button) this.f2846a.findViewById(C0000R.id.clipboard_button_pasteall);
        button.setCompoundDrawables(null, this.g.c(C0000R.drawable.clipboard_paste_all), null, null);
        button.setOnClickListener(new o(this));
        Button button2 = (Button) this.f2846a.findViewById(C0000R.id.clipboard_button_clear);
        button2.setCompoundDrawables(null, this.g.c(C0000R.drawable.clipboard_clear), null, null);
        button2.setOnClickListener(new p(this));
        Button button3 = (Button) this.f2846a.findViewById(C0000R.id.clipboard_button_close);
        button3.setCompoundDrawables(null, this.g.c(C0000R.drawable.drawer_close), null, null);
        button3.setOnClickListener(new q(this));
        CheckBox checkBox = (CheckBox) this.f2846a.findViewById(C0000R.id.checkbox_hide_clipboard);
        checkBox.setChecked(com.estrongs.android.pop.q.a(activity).t());
        checkBox.setOnCheckedChangeListener(new r(this));
        View findViewById = this.f2846a.findViewById(C0000R.id.hide_clipboard);
        findViewById.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(this.e).a(C0000R.drawable.clipboard_content_select_bg, C0000R.drawable.clipboard_toolbar_icon_bg_clcik));
        findViewById.setOnClickListener(new s(this, checkBox));
        if (h.size() <= 0) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= h.size()) {
                l();
                return;
            } else {
                h.get(i2).a(this);
                i = i2 + 1;
            }
        }
    }

    public static n a(Activity activity) {
        if (c == null) {
            c = new n(activity);
        }
        return c;
    }

    public static void g() {
        if (c != null && c.d) {
            c.d = false;
            if (c.f2846a.g()) {
                f2845b = true;
                c.f2846a.c();
            }
            c.f2846a.setVisibility(8);
            c.b();
            c.e();
        }
        c = null;
    }

    public static void j() {
        h.clear();
    }

    private void l() {
        this.f2846a.post(new w(this));
    }

    public Activity a() {
        return this.e;
    }

    public x a(List<com.estrongs.fs.g> list, boolean z) {
        x xVar = list.size() < 8 ? new x(this, list, z) : new t(this, this, list, z, list, z);
        a(xVar);
        h.add(0, xVar);
        this.i = xVar;
        l();
        return xVar;
    }

    public void a(x xVar) {
        x xVar2 = null;
        Iterator<x> it = h.iterator();
        while (it.hasNext()) {
            x next = it.next();
            if (!next.equals(xVar)) {
                next = xVar2;
            }
            xVar2 = next;
        }
        if (xVar2 != null) {
            h.remove(xVar2);
        }
    }

    public void b() {
        this.i = null;
        this.f.removeAllViews();
    }

    public void b(x xVar) {
        boolean z = h.size() > 0 && h.get(0) == xVar;
        if (this.i == xVar) {
            this.i = null;
        }
        h.remove(xVar);
        l();
        if ((z || h.isEmpty()) && (this.e instanceof FileExplorerActivity) && "paste_mode".equals(((FileExplorerActivity) this.e).i.b())) {
            ((FileExplorerActivity) this.e).i.a("normal_mode", (Boolean) true);
            ((FileExplorerActivity) this.e).j = "normal_mode";
            ((FileExplorerActivity) this.e).s = false;
        }
    }

    public void c() {
        this.d = true;
        this.f2846a.setVisibility(0);
    }

    public boolean d() {
        return this.f2846a.g();
    }

    public void e() {
        this.d = false;
        if (this.f2846a.g()) {
            this.f2846a.c();
        }
        this.f2846a.setVisibility(8);
    }

    public void f() {
        if (this.f2846a.g()) {
            this.f2846a.c();
        }
    }

    public int h() {
        return h.size();
    }

    public x i() {
        return this.i;
    }
}
