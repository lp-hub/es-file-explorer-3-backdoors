package com.estrongs.android.view;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.ui.drag.DragGrid;

/* loaded from: classes.dex */
public class bp implements com.estrongs.android.widget.d {

    /* renamed from: a, reason: collision with root package name */
    int f2784a = 0;

    /* renamed from: b, reason: collision with root package name */
    String f2785b;
    String c;
    final /* synthetic */ ar d;

    /* JADX INFO: Access modifiers changed from: protected */
    public bp(ar arVar) {
        this.d = arVar;
        this.f2785b = this.d.ad.getString(C0000R.string.detail_item);
        this.c = this.d.ad.getString(C0000R.string.detail_items);
    }

    private bn c(View view) {
        bn bnVar = new bn(this.d);
        bnVar.h = (TextView) view.findViewById(C0000R.id.message);
        bnVar.g = (ImageView) view.findViewById(C0000R.id.view);
        bnVar.i = (CheckBox) view.findViewById(C0000R.id.checkbox);
        bnVar.i.setClickable(false);
        bnVar.i.setChecked(false);
        bnVar.h.setTextColor(this.d.ab);
        bnVar.f = view;
        return bnVar;
    }

    private bn d(View view) {
        bn bnVar = new bn(this.d);
        bnVar.h = (TextView) view.findViewById(C0000R.id.message);
        this.d.ad.getResources().getDisplayMetrics();
        boolean a2 = com.estrongs.android.pop.utils.ca.a(this.d.ad);
        boolean z = this.d.ad.getResources().getConfiguration().orientation == 1;
        if (a2 && !z) {
            bnVar.h.setLines(2);
        }
        bnVar.h.setTextColor(this.d.ab);
        bnVar.i = (CheckBox) view.findViewById(C0000R.id.checkbox);
        bnVar.i.setClickable(false);
        bnVar.i.setChecked(false);
        bnVar.f = view;
        bnVar.g = (ImageView) view.findViewById(C0000R.id.view);
        bnVar.c = (TextView) view.findViewById(C0000R.id.detail1);
        bnVar.f2780a = (TextView) view.findViewById(C0000R.id.detail2);
        bnVar.f2781b = (TextView) view.findViewById(C0000R.id.detail3);
        return bnVar;
    }

    @Override // com.estrongs.android.widget.d
    public View a() {
        float f;
        float f2;
        float a2;
        float f3;
        float f4;
        float a3;
        float f5;
        float f6;
        float a4;
        if (this.d.k == 0) {
            View inflate = this.d.af.inflate(C0000R.layout.grid_view_item, (ViewGroup) null, false);
            TextView textView = (TextView) inflate.findViewById(C0000R.id.message);
            f5 = this.d.as;
            if (f5 == 0.0f) {
                a4 = this.d.a(textView, this.d.B(), "abcwwww");
                this.d.as = a4;
            }
            f6 = this.d.as;
            textView.setTextSize(0, f6);
            return inflate;
        }
        if (this.d.k == 1) {
            View inflate2 = this.d.af.inflate(C0000R.layout.grid_view_item_medium, (ViewGroup) null, false);
            TextView textView2 = (TextView) inflate2.findViewById(C0000R.id.message);
            f3 = this.d.at;
            if (f3 == 0.0f) {
                a3 = this.d.a(textView2, this.d.B(), "abcwww");
                this.d.at = a3;
            }
            f4 = this.d.at;
            textView2.setTextSize(0, f4);
            return inflate2;
        }
        if (this.d.k == 2) {
            this.f2784a = 0;
            View inflate3 = this.d.af.inflate(C0000R.layout.grid_view_item_small, (ViewGroup) null, false);
            TextView textView3 = (TextView) inflate3.findViewById(C0000R.id.message);
            f = this.d.au;
            if (f == 0.0f) {
                a2 = this.d.a(textView3, this.d.B(), "abcww");
                this.d.au = a2;
            }
            f2 = this.d.au;
            textView3.setTextSize(0, f2);
            return inflate3;
        }
        if (this.d.k == 3) {
            this.f2784a = 1;
            return this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_item, (ViewGroup) null, false);
        }
        if (this.d.k == 4) {
            this.f2784a = 1;
            return this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_item_medium, (ViewGroup) null, false);
        }
        if (this.d.k == 5) {
            this.f2784a = 1;
            return this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_item_small, (ViewGroup) null, false);
        }
        if (this.d.k != 6) {
            return this.d.k == 7 ? this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_details_item_medium, (ViewGroup) null, false) : this.d.k == 8 ? this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_details_item_small, (ViewGroup) null, false) : this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_item, (ViewGroup) null, false);
        }
        this.f2784a = 1;
        return this.d.af.inflate(C0000R.layout.grid_view_item_horizontal_details_item, (ViewGroup) null, false);
    }

    @Override // com.estrongs.android.widget.d
    public View a(com.estrongs.fs.g gVar) {
        return a();
    }

    @Override // com.estrongs.android.widget.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public bn b(View view) {
        bn c = this.d.k < 6 ? c(view) : d(view);
        c.d = this.d.k;
        return c;
    }

    @Override // com.estrongs.android.widget.d
    public void a(com.estrongs.android.widget.e eVar, int i) {
        com.estrongs.android.ui.drag.h hVar;
        boolean z;
        boolean z2;
        boolean z3;
        com.estrongs.android.ui.theme.al alVar;
        com.estrongs.android.ui.theme.al alVar2;
        bn bnVar = (bn) eVar;
        com.estrongs.fs.g e = this.d.e(i);
        if (e == null) {
            return;
        }
        com.estrongs.fs.g a2 = e instanceof com.estrongs.fs.impl.m.a ? ((com.estrongs.fs.impl.m.a) e).a() : e;
        ((DragGrid) bnVar.f).a(a2);
        if (eVar.h instanceof EllipsizedTextView) {
            ((EllipsizedTextView) eVar.h).setEllipsize(TextUtils.TruncateAt.END);
            ((EllipsizedTextView) eVar.h).a((CharSequence) a2.getName());
        } else {
            if (com.estrongs.android.pop.m.W) {
                eVar.h.setEllipsize(TextUtils.TruncateAt.END);
            }
            eVar.h.setText(a2.getName());
        }
        eVar.h.setTextColor(this.d.ab);
        if (a2 instanceof com.estrongs.fs.impl.b.c) {
            int d = ((com.estrongs.fs.impl.b.c) a2).d();
            if (3 == d) {
                TextView textView = eVar.h;
                alVar2 = this.d.an;
                textView.setTextColor(alVar2.d(C0000R.color.appmanager_content_backup_text));
            } else if (2 == d) {
                TextView textView2 = eVar.h;
                alVar = this.d.an;
                textView2.setTextColor(alVar.d(C0000R.color.appmanager_content_olderbackup_text));
            }
        }
        com.estrongs.android.d.d.a(eVar.g.getDrawable());
        eVar.g.setImageDrawable(com.estrongs.android.d.d.d(a2));
        eVar.g.setTag(a2);
        if (com.estrongs.android.d.d.c(a2)) {
            if (com.estrongs.android.d.d.a(a2)) {
                eVar.g.setImageDrawable(com.estrongs.android.d.d.a(a2, true));
            } else if (com.estrongs.android.d.d.b(a2)) {
                boolean[] zArr = {false};
                Drawable a3 = com.estrongs.android.d.d.a(a2, true, zArr);
                eVar.g.setImageDrawable(a3);
                if (zArr[0]) {
                    com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(a2), a3, true);
                }
            } else if ((i == 0 && com.estrongs.a.b.a.a(10).indexOf("makeAndAddView") >= 0) || i > 0) {
                this.d.i(i);
                if (this.d.J != null) {
                    this.d.J.a(i, a2, eVar.g);
                }
            }
        }
        if (com.estrongs.fs.c.d.c(a2)) {
            ((ESImageView) eVar.g).a(this.d.ad.getResources().getDrawable(C0000R.drawable.pcs_icon_share));
        } else if (a2.isLink()) {
            ((ESImageView) eVar.g).a(this.d.ad.getResources().getDrawable(C0000R.drawable.icon_folder_shortcut));
        }
        if ((a2 instanceof com.estrongs.fs.impl.pcs.b) && com.estrongs.android.ui.pcs.bt.c()) {
            ((ESImageView) eVar.g).a(this.d.ad.getResources().getDrawable(C0000R.drawable.pcs_message_one));
        }
        if (bnVar.c != null) {
            z3 = this.d.f2749b;
            if (z3) {
                com.estrongs.fs.l fileType = a2.getFileType();
                if (com.estrongs.fs.l.i.equals(fileType) || com.estrongs.fs.l.j.equals(fileType)) {
                    bnVar.c.setText(C0000R.string.bt_class_computer);
                } else if (com.estrongs.fs.l.k.equals(fileType) || com.estrongs.fs.l.l.equals(fileType)) {
                    bnVar.c.setText(C0000R.string.location_phone);
                } else if (com.estrongs.fs.l.m.equals(fileType) || com.estrongs.fs.l.n.equals(fileType)) {
                    bnVar.c.setText(C0000R.string.bt_class_unkown);
                } else {
                    bnVar.c.setText(com.estrongs.android.util.ak.a(a2.getPath()));
                }
            } else if (a2.getFileType().a()) {
                if (a2.getExtra("child_count") != null) {
                    bnVar.c.setText(a2.getExtra("child_count") + " " + this.f2785b);
                } else {
                    bnVar.c.setText(C0000R.string.category_folder);
                }
            } else if (a2 instanceof com.estrongs.fs.impl.b.c) {
                bnVar.c.setText(((com.estrongs.fs.impl.b.c) a2).a());
            } else if (a2.length() >= 1 || !(a2 instanceof com.estrongs.fs.impl.pcs.a)) {
                bnVar.c.setText(com.estrongs.fs.c.d.c(a2.length()));
            } else {
                bnVar.c.setText(C0000R.string.progress_downloading);
            }
        }
        if (bnVar.f2780a != null) {
            z2 = this.d.f2749b;
            if (z2) {
                bnVar.f2780a.setVisibility(8);
            } else if (a2 instanceof com.estrongs.fs.impl.b.c) {
                bnVar.f2780a.setText(com.estrongs.fs.c.d.c(a2.length()));
            } else {
                bnVar.f2780a.setText(com.estrongs.fs.c.d.a(a2));
                bnVar.f2780a.setVisibility(0);
            }
        }
        if (bnVar.f2781b != null) {
            z = this.d.f2749b;
            if (z) {
                bnVar.f2781b.setVisibility(8);
            } else {
                bnVar.f2781b.setText(a2.lastModified() <= 0 ? this.d.ad.getString(C0000R.string.property_na) : ar.H.format(Long.valueOf(a2.lastModified())));
                bnVar.f2781b.setVisibility(0);
            }
        }
        CheckBox checkBox = eVar.i;
        if (!this.d.l) {
            checkBox.setVisibility(4);
            eVar.f.setBackgroundDrawable(null);
            return;
        }
        Rect rect = new Rect();
        eVar.f.getHitRect(rect);
        checkBox.setVisibility(0);
        if (!this.d.h(i)) {
            checkBox.setChecked(false);
            eVar.f.setBackgroundDrawable(null);
            com.estrongs.android.ui.drag.h remove = this.d.o.remove(this.d.e(i));
            if (remove != null) {
                remove.e();
                return;
            }
            return;
        }
        checkBox.setChecked(true);
        if (i != 0) {
            com.estrongs.android.ui.drag.h hVar2 = this.d.o.get(this.d.g(i));
            if (hVar2 == null) {
                com.estrongs.android.ui.drag.h hVar3 = new com.estrongs.android.ui.drag.h();
                hVar3.a(i);
                hVar3.a((DragGrid) eVar.f);
                Drawable background = hVar3.b().getBackground();
                hVar3.b().setBackgroundResource(C0000R.drawable.blank);
                hVar3.a(com.estrongs.android.ui.d.a.a(hVar3.b()));
                hVar3.b().setBackgroundDrawable(background);
                this.d.o.put(this.d.g(i), hVar3);
            } else {
                hVar2.a(i);
                hVar2.a((DragGrid) eVar.f);
                if (hVar2.c() == null) {
                    Drawable background2 = hVar2.b().getBackground();
                    hVar2.b().setBackgroundResource(C0000R.drawable.blank);
                    hVar2.a(com.estrongs.android.ui.d.a.a(hVar2.b()));
                    hVar2.b().setBackgroundDrawable(background2);
                }
            }
        } else if (!rect.isEmpty()) {
            com.estrongs.android.ui.drag.h hVar4 = this.d.o.get(this.d.g(i));
            if (hVar4 == null) {
                hVar = new com.estrongs.android.ui.drag.h();
                hVar.a(i);
                hVar.a((DragGrid) eVar.f);
                this.d.o.put(this.d.g(i), hVar);
            } else {
                hVar = hVar4;
            }
            com.estrongs.android.ui.drag.h hVar5 = new com.estrongs.android.ui.drag.h();
            hVar5.a(i);
            hVar5.a((DragGrid) eVar.f);
            hVar.a(rect, hVar5, eVar.f);
        }
        eVar.f.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(this.d.ad).a(C0000R.drawable.main_content_icon_bg_click));
    }

    @Override // com.estrongs.android.widget.d
    public boolean a(com.estrongs.android.widget.e eVar) {
        return eVar == null || ((bn) eVar).d != this.d.k;
    }
}
