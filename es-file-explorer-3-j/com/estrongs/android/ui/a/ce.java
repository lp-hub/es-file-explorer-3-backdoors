package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.dm;

/* loaded from: classes.dex */
public class ce extends BaseAdapter implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.android.util.ay[] f1552a;

    /* renamed from: b, reason: collision with root package name */
    com.estrongs.android.util.ay[] f1553b;
    com.estrongs.android.ui.theme.al c;
    dm d;
    private Context e;
    private cg f;
    private com.estrongs.android.ui.h.a g;
    private boolean h;
    private boolean i = false;

    public ce(Context context, boolean z) {
        this.e = context;
        try {
            if (!com.estrongs.android.util.ax.c().a()) {
                com.estrongs.android.util.ax.c().b();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f1552a = com.estrongs.android.util.ax.c().e();
        this.c = com.estrongs.android.ui.theme.al.a(this.e);
        try {
            this.g = com.estrongs.android.ui.h.a.a(this.e);
            this.f = new cg(this.g);
            a();
        } catch (Exception e2) {
        }
    }

    private com.estrongs.android.util.ay a(int i) {
        int i2 = 0;
        try {
            if (this.f1553b != null) {
                if (i < this.f1553b.length) {
                    com.estrongs.android.util.ay ayVar = this.f1553b[i];
                    ayVar.c = true;
                    return ayVar;
                }
                i2 = this.f1553b.length;
            }
            if (this.h && this.i) {
                if (i == i2) {
                    return this.f;
                }
                i2++;
            }
            if (this.f1552a == null) {
                return null;
            }
            com.estrongs.android.util.ay ayVar2 = this.f1552a[i - i2];
            ayVar2.c = false;
            return ayVar2;
        } catch (Exception e) {
            return null;
        }
    }

    private void a() {
        boolean z = (!this.g.a() || this.f == null || this.f.a(this.g) == null) ? false : true;
        if (z != this.i) {
            this.i = z;
        }
    }

    private void a(com.estrongs.android.ui.h.c cVar) {
        if (!cVar.g()) {
            new com.estrongs.android.ui.h.h(this.e, cVar).a();
        } else if ("action_recomm_pcs".equals(cVar.b())) {
            b();
        } else {
            new com.estrongs.android.ui.h.h(this.e, cVar).a();
        }
        cVar.h(this.e);
    }

    private void b() {
        com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
        if (a2.d()) {
            c();
        } else {
            if (a2.c()) {
                return;
            }
            com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(this.e, true);
            aVar.a(new cf(this));
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            com.estrongs.android.view.ar t = FileExplorerActivity.E().t();
            if (t == null || t.c() == null || !com.estrongs.android.pop.m.I) {
                return;
            }
            t.a(com.estrongs.android.util.ak.g() + "/files/");
        } catch (Exception e) {
        }
    }

    public void a(dm dmVar) {
        this.d = dmVar;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void a(com.estrongs.android.util.ay[] ayVarArr) {
        this.f1553b = ayVarArr;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int length = this.f1552a != null ? 0 + this.f1552a.length : 0;
        if (this.f1553b != null) {
            length += this.f1553b.length;
        }
        try {
            return this.h ? this.i ? length + 1 : length : length;
        } catch (Exception e) {
            return length;
        }
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        com.estrongs.android.ui.h.c cVar;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.e).inflate(C0000R.layout.item_listview_history, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.image_item_listview_history);
        TextView textView = (TextView) view.findViewById(C0000R.id.text_listview_history);
        TextView textView2 = (TextView) view.findViewById(C0000R.id.path_item_listview_history);
        com.estrongs.android.util.ay a2 = a(i);
        if (a2 != null) {
            if (a2 instanceof cg) {
                com.estrongs.android.ui.h.c a3 = ((cg) a2).a(this.g);
                if (a3 != null) {
                    imageView.setImageBitmap(a3.a(this.e));
                    textView2.setVisibility(8);
                    view.setBackgroundResource(C0000R.drawable.background_history_category);
                    textView.setVisibility(0);
                    cVar = ((cg) a2).g;
                    textView.setText(cVar.c());
                }
            } else if (a2.c) {
                imageView.setImageDrawable(this.c.a(a2.f));
                String str = a2.f2688a;
                textView2.setVisibility(8);
                view.setBackgroundResource(C0000R.drawable.background_history_category);
                textView.setVisibility(0);
                String str2 = a2.e;
                if (a2.d && com.estrongs.android.pop.q.a(this.e).P()) {
                    long[] k = com.estrongs.fs.c.d.k(a2.f2688a);
                    str2 = String.format(str2 + " (%s/%s)", com.estrongs.fs.c.d.c((k[0] - k[1]) * k[2]), com.estrongs.fs.c.d.c(k[0] * k[2]));
                }
                textView.setText(str2);
            } else {
                if (com.estrongs.android.util.ak.aO(a2.f2688a)) {
                    imageView.setImageDrawable(com.estrongs.android.d.d.d(com.estrongs.fs.d.a(this.e).j(a2.f2688a)));
                } else if (!a2.f2688a.endsWith("/")) {
                    imageView.setImageDrawable(com.estrongs.android.d.d.a(String.valueOf(com.estrongs.android.util.av.a(a2.f2688a))));
                } else if (com.estrongs.android.util.ak.aq(a2.f2688a)) {
                    imageView.setImageDrawable(com.estrongs.android.d.d.a(com.estrongs.fs.l.E.c()));
                } else {
                    imageView.setImageDrawable(com.estrongs.android.d.d.a(com.estrongs.fs.l.D.c()));
                }
                String Y = com.estrongs.android.util.ak.Y(a2.f2688a);
                String B = Y == null ? com.estrongs.android.util.ak.B(a2.f2688a) : com.estrongs.android.util.ak.ae(a2.f2688a) + ":/" + Y;
                if (com.estrongs.android.util.ak.ao(B)) {
                    B = com.estrongs.android.util.ak.bv(B);
                }
                textView2.setText(B);
                textView2.setVisibility(0);
                view.setBackgroundResource(C0000R.drawable.popupbox_listview_selector);
                textView.setVisibility(8);
            }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.f1552a = com.estrongs.android.util.ax.c().e();
        try {
            if (this.g != null) {
                this.g.a(true);
            }
            a();
        } catch (Exception e) {
        }
        super.notifyDataSetChanged();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.util.ay a2 = a(i);
        if (a2 != null) {
            if (!(a2 instanceof cg)) {
                this.d.a(a2.f2688a, false);
                return;
            }
            try {
                com.estrongs.android.ui.h.c a3 = ((cg) a2).a(this.g);
                if (a3 != null) {
                    a(a3);
                    this.f.b(this.g);
                    notifyDataSetChanged();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.d.a(a2.f2688a, true);
        }
    }
}
