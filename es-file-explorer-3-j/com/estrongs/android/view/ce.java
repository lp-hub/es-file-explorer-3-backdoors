package com.estrongs.android.view;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;

/* loaded from: classes.dex */
public class ce implements com.estrongs.android.widget.d {

    /* renamed from: a, reason: collision with root package name */
    int f2804a = 0;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bu f2805b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ce(bu buVar) {
        this.f2805b = buVar;
    }

    @Override // com.estrongs.android.widget.d
    public View a() {
        return null;
    }

    @Override // com.estrongs.android.widget.d
    public View a(com.estrongs.fs.g gVar) {
        return (gVar == null || !gVar.getFileType().a()) ? this.f2805b.af.inflate(this.f2805b.al(), (ViewGroup) null, false) : this.f2805b.af.inflate(this.f2805b.r(), (ViewGroup) null, false);
    }

    @Override // com.estrongs.android.widget.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public cg b(View view) {
        cg cgVar = new cg();
        cgVar.h = (TextView) view.findViewById(C0000R.id.message);
        cgVar.g = (ImageView) view.findViewById(C0000R.id.view);
        cgVar.i = (CheckBox) view.findViewById(C0000R.id.checkbox);
        cgVar.i.setClickable(false);
        cgVar.i.setChecked(false);
        cgVar.f = view;
        View findViewById = view.findViewById(C0000R.id.type_icon);
        if (findViewById != null) {
            cgVar.c = (ImageView) findViewById;
        }
        return cgVar;
    }

    @Override // com.estrongs.android.widget.d
    public void a(com.estrongs.android.widget.e eVar, int i) {
        com.estrongs.fs.g e = this.f2805b.e(i);
        if (e == null) {
            return;
        }
        Object extra = e.getExtra("item_count");
        if (extra == null || com.estrongs.android.util.ak.at(this.f2805b.c())) {
            eVar.h.setText(e.getName());
        } else {
            eVar.h.setText(e.getName() + "(" + extra + ")");
        }
        if (e instanceof CreateSiteFileObject) {
            eVar.g.setImageDrawable(com.estrongs.android.d.d.e(e));
            return;
        }
        CheckBox checkBox = eVar.i;
        if (this.f2805b.A()) {
            checkBox.setVisibility(0);
            if (this.f2805b.h(i)) {
                checkBox.setChecked(true);
            } else {
                checkBox.setChecked(false);
                this.f2805b.E().remove(e);
            }
            if (this.f2805b.q() && !this.f2805b.p()) {
                eVar.h.setVisibility(0);
            }
        } else {
            checkBox.setVisibility(4);
            if (this.f2805b.q() && !this.f2805b.p()) {
                eVar.h.setVisibility(4);
            }
        }
        if (e.getFileType().a()) {
            cg cgVar = (cg) eVar;
            if (cgVar.c != null) {
                if (!com.estrongs.android.util.ak.az(e.getPath())) {
                    cgVar.c.setVisibility(8);
                } else if (com.estrongs.android.util.ak.ag(e.getPath())) {
                    cgVar.c.setImageResource(C0000R.drawable.icon_flickr);
                    cgVar.c.setVisibility(0);
                } else if (com.estrongs.android.util.ak.ah(e.getPath())) {
                    cgVar.c.setImageResource(C0000R.drawable.icon_instagram);
                    cgVar.c.setVisibility(0);
                } else if (com.estrongs.android.util.ak.ai(e.getPath())) {
                    cgVar.c.setImageResource(C0000R.drawable.icon_facebook);
                    cgVar.c.setVisibility(0);
                } else if (com.estrongs.android.util.ak.aj(e.getPath())) {
                    if (com.estrongs.android.util.ak.ak(e.getPath())) {
                        cgVar.g.setImageDrawable(com.estrongs.android.d.d.e(e));
                        cgVar.c.setVisibility(8);
                        return;
                    } else {
                        cgVar.c.setImageResource(C0000R.drawable.icon_pcs);
                        cgVar.c.setVisibility(0);
                    }
                }
            }
        }
        com.estrongs.android.d.d.a(eVar.g.getDrawable());
        eVar.g.setBackgroundColor(0);
        eVar.g.setImageDrawable(null);
        eVar.g.setTag(e);
        com.estrongs.fs.g a2 = bu.a(e, true);
        if (a2 != null && com.estrongs.android.d.d.a(a2)) {
            eVar.g.setBackgroundColor(-5921371);
            eVar.g.setImageDrawable(com.estrongs.android.d.d.a(a2, true));
            return;
        }
        if (a2 != null && com.estrongs.android.d.d.b(a2)) {
            boolean[] zArr = {false};
            Drawable a3 = com.estrongs.android.d.d.a(a2, true, zArr);
            eVar.g.setImageDrawable(a3);
            if (zArr[0]) {
                com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(a2), a3, true);
                return;
            }
            return;
        }
        if ((i != 0 || com.estrongs.a.b.a.a(10).indexOf("makeAndAddView") < 0) && i <= 0) {
            return;
        }
        this.f2805b.i(i);
        if (this.f2805b.Y() != null) {
            this.f2805b.Y().a(i, e, eVar.g);
        }
    }

    @Override // com.estrongs.android.widget.d
    public boolean a(com.estrongs.android.widget.e eVar) {
        return eVar == null;
    }
}
