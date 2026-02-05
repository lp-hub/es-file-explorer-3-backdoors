package com.estrongs.android.view;

import android.R;
import android.graphics.drawable.Drawable;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ew;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class x extends cq {

    /* renamed from: a, reason: collision with root package name */
    private LinearLayout f2858a;

    /* renamed from: b, reason: collision with root package name */
    private Button f2859b;
    private Button c;
    List<com.estrongs.fs.g> d;
    n e;
    com.estrongs.android.d.i f;
    protected LinearLayout g;
    LinearLayout.LayoutParams h;
    protected BaseAdapter i;
    private boolean j;
    private com.estrongs.android.ui.theme.al k;

    public x(n nVar, List<com.estrongs.fs.g> list, boolean z) {
        super(nVar.a());
        this.d = new LinkedList();
        this.j = true;
        this.f = null;
        this.g = null;
        this.h = new LinearLayout.LayoutParams(0, -2);
        this.d.addAll(list);
        this.e = nVar;
        this.j = z;
        e();
    }

    private void e() {
        this.k = com.estrongs.android.ui.theme.al.a(this.ad);
        this.f2858a = (LinearLayout) l(C0000R.id.gridview_item_clipboard);
        this.h.weight = 1.0f;
        if (this.i == null) {
            this.i = b();
        }
        this.i.notifyDataSetChanged();
        this.f2859b = (Button) l(C0000R.id.clipboard_button_paste);
        this.f2859b.setBackgroundDrawable(a(C0000R.drawable.clipboard_button_paste_bg, C0000R.drawable.clipboard_button_paste_bg_click));
        this.c = (Button) l(C0000R.id.clipboard_button_delete);
        this.c.setBackgroundDrawable(a(C0000R.drawable.clipboard_button_delete_bg, C0000R.drawable.clipboard_button_delete_bg_click));
        this.f2859b.setOnClickListener(new y(this));
        this.c.setOnClickListener(new z(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f = new ac(this, "ThumnailLoader - ClipboardItem");
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.item_listview_clipboard;
    }

    public Drawable a(int i, int i2) {
        return this.k.a(new com.estrongs.android.ui.theme.am[]{new com.estrongs.android.ui.theme.am(new int[]{R.attr.state_focused, R.attr.state_pressed}, i2), new com.estrongs.android.ui.theme.am(new int[]{R.attr.state_pressed}, i2), new com.estrongs.android.ui.theme.am(new int[]{R.attr.state_focused}, i2), new com.estrongs.android.ui.theme.am(new int[0], i)});
    }

    public void a(n nVar) {
        this.e = nVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(List<com.estrongs.fs.g> list) {
        this.e.f();
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.ad;
        if (this.j) {
            com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(this.ad), list, fileExplorerActivity.v());
            iVar.setDescription(String.format(this.ad.getString(C0000R.string.copy_task_description), com.estrongs.android.util.ak.bv(fileExplorerActivity.u())));
            iVar.a(true);
            new ew(this.ad, this.ad.getString(C0000R.string.progress_copying), iVar).show();
            iVar.execute();
        } else {
            com.estrongs.fs.b.y yVar = new com.estrongs.fs.b.y(com.estrongs.fs.d.a(this.ad), list, fileExplorerActivity.v());
            yVar.setDescription(String.format(this.ad.getString(C0000R.string.move_task_description), com.estrongs.android.util.ak.bv(fileExplorerActivity.u())));
            yVar.a(true);
            new ew(this.ad, this.ad.getString(C0000R.string.progress_moving), yVar).show();
            yVar.execute();
        }
        if ("paste_mode".equals(fileExplorerActivity.i.b())) {
            fileExplorerActivity.s = false;
            fileExplorerActivity.i.a("normal_mode", (Boolean) true);
            fileExplorerActivity.j = "normal_mode";
        }
    }

    protected BaseAdapter b() {
        return new aa(this);
    }

    public void c() {
        a(this.d);
        if (this.j) {
            return;
        }
        this.e.b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        this.f2858a.removeAllViews();
        for (int i = 0; i < this.i.getCount(); i++) {
            if (i % 4 == 0) {
                this.g = new LinearLayout(this.ad);
                if (i == 0) {
                    this.g.setPadding(0, 12, 0, 0);
                }
                this.g.setOrientation(0);
                this.f2858a.addView(this.g);
            }
            this.g.addView(this.i.getView(i, null, null), this.h);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return xVar.d.size() == this.d.size() && xVar.d.containsAll(this.d);
    }

    public int hashCode() {
        Iterator<com.estrongs.fs.g> it = this.d.iterator();
        int i = 0;
        while (it.hasNext()) {
            com.estrongs.fs.g next = it.next();
            i += next == null ? 0 : next.hashCode();
        }
        return i;
    }
}
