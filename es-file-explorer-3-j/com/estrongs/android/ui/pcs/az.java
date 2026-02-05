package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
public class az extends com.estrongs.android.view.ar {

    /* renamed from: b, reason: collision with root package name */
    public static bb f2303b = null;

    /* renamed from: a, reason: collision with root package name */
    private View f2304a;
    private String ac;
    private String ah;
    private ag ai;
    private int c;

    public az(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, com.estrongs.android.view.bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.c = 0;
        this.ac = null;
    }

    private boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        String x = com.estrongs.android.util.ak.x(str);
        String x2 = com.estrongs.android.util.ak.x(com.estrongs.android.util.ak.bw(str2));
        return (x == null || x2 == null || x.equals(x2)) ? false : true;
    }

    private boolean al() {
        return aw.a().e() != this.c;
    }

    private String l(String str) {
        if (str == null) {
            return null;
        }
        return com.estrongs.android.util.ak.ao(str) ? com.estrongs.android.util.ak.bw(str) : str;
    }

    @Override // com.estrongs.android.view.an
    public void a(View.OnTouchListener onTouchListener) {
        super.a(onTouchListener);
        if (this.f2304a != null) {
            this.f2304a.setOnTouchListener(onTouchListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        if (!com.estrongs.android.util.ak.aq(gVar.getAbsolutePath()) && !com.estrongs.android.util.ak.ao(gVar.getAbsolutePath())) {
            q();
            n();
        }
        if (aw.a().c() && com.estrongs.android.util.ak.ar(gVar.getAbsolutePath()) != null && aw.a().d() && bt.b() && !this.N && aw.a().d() && bt.b() && !this.N) {
            new bt(this.ad, gVar.getAbsolutePath()).a();
        }
        super.a(gVar, typedMap);
    }

    @Override // com.estrongs.android.view.ar
    public void a(String str) {
        if (!com.estrongs.android.util.ak.aq(str) && !com.estrongs.android.util.ak.ao(str)) {
            q();
            n();
            super.a(str);
            return;
        }
        if (com.estrongs.android.util.ak.as(str) && aw.a() != null && aw.a().c()) {
            str = aw.a().h() + "/files";
        }
        if (aw.a() != null) {
            if (aw.a().c() || str.startsWith("/")) {
                this.w = str;
                if (a(aw.a().h(), str)) {
                    com.estrongs.android.pop.utils.a.a(this.ad, C0000R.string.pcs_account_changed);
                    str = aw.a().h() + "/files";
                    this.w = str;
                    G();
                }
                n();
                if (!aw.a().d() || aw.a().l()) {
                    q();
                } else {
                    p();
                }
            } else {
                c_();
                q();
                if (this.z != null) {
                    this.z.a(str, false);
                }
                if (!com.estrongs.android.util.ak.as(str)) {
                    com.estrongs.android.pop.utils.a.a(this.ad, C0000R.string.pcs_share_login);
                }
                this.c = aw.a().e();
                this.ac = str;
            }
            this.c = aw.a().e();
            this.ac = l(str);
        }
        super.a(str);
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        super.a_();
        if (f2303b == null || !f2303b.d()) {
            return;
        }
        f2303b.c();
    }

    public void b(String str) {
        this.ah = str;
        this.x = com.estrongs.fs.d.m(this.ah);
        this.w = this.x.getPath();
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
        this.c = aw.a().e();
        if (com.estrongs.android.util.ak.aq(this.w) || com.estrongs.android.util.ak.ao(this.w)) {
            this.ac = l(this.w);
            if (aw.a().c()) {
                n();
                if (!aw.a().d() || aw.a().l()) {
                    q();
                } else {
                    p();
                }
                if (com.estrongs.android.util.ak.as(this.w)) {
                    a(this.w);
                    return;
                }
                super.b(z);
            } else if (com.estrongs.android.util.ak.ao(this.w)) {
                a(com.estrongs.android.util.ak.bp(com.estrongs.android.pop.q.a(this.ad).e("Market")));
                G();
                return;
            } else {
                c_();
                q();
                if (this.z != null) {
                    this.z.a(this.w, true);
                }
            }
        } else {
            q();
            n();
            super.b(z);
        }
        if (this.N) {
            this.N = false;
        }
    }

    @Override // com.estrongs.android.view.ar
    public void b_() {
        super.b_();
        if (f2303b == null || !f2303b.d()) {
            return;
        }
        f2303b.c();
    }

    public void c_() {
        if (this.f2304a == null) {
            this.f2304a = com.estrongs.android.pop.esclasses.e.a(this.ad).inflate(C0000R.layout.pcs_cover, (ViewGroup) null);
            ((ViewGroup) this.g.getParent()).addView(this.f2304a, new ViewGroup.LayoutParams(-1, -1));
            ba baVar = new ba(this);
            this.f2304a.findViewById(C0000R.id.image).setOnClickListener(baVar);
            View findViewById = this.f2304a.findViewById(C0000R.id.text);
            findViewById.setOnClickListener(baVar);
            try {
                if (com.estrongs.android.pop.m.Q) {
                    String n = n(C0000R.string.pcs_cover_guide);
                    String substring = n.substring(0, n.indexOf("使用百度或QQ"));
                    ((TextView) findViewById).setText(substring.substring(0, substring.lastIndexOf("\n\n") + 2));
                }
            } catch (Exception e) {
            }
        }
        this.g.setVisibility(8);
        View emptyView = this.g.getEmptyView();
        if (emptyView != null) {
            emptyView.setVisibility(8);
        }
        this.f2304a.setVisibility(0);
    }

    @Override // com.estrongs.android.view.ar
    public void l() {
        if (this.ah != null) {
            a(this.ah);
            this.ah = null;
            return;
        }
        if (com.estrongs.android.util.ak.aq(this.w) || com.estrongs.android.util.ak.ao(this.w)) {
            if (a(aw.a().h(), this.ac)) {
                if (this.c != 0) {
                    com.estrongs.android.pop.utils.a.a(this.ad, C0000R.string.pcs_account_changed);
                }
                if (!com.estrongs.android.util.ak.ao(this.w)) {
                    G();
                    this.w = aw.a().h() + "/files";
                    this.x = com.estrongs.fs.d.m(this.w);
                }
                this.L = true;
            } else if (al()) {
                this.L = true;
            } else if (aw.a().d()) {
                p();
            } else {
                q();
            }
        }
        if (al()) {
            try {
                com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.ad);
                String bp = com.estrongs.android.util.ak.bp(a2.e("Market"));
                if (this.w != null && com.estrongs.android.util.ak.d(bp, this.w) && a2.n() && com.estrongs.android.pop.m.I) {
                    this.L = true;
                }
            } catch (Exception e) {
            }
        }
        this.c = aw.a().e();
        this.ac = l(this.w);
        super.l();
    }

    public void n() {
        this.g.setVisibility(0);
        if (this.f2304a != null) {
            this.f2304a.setVisibility(8);
        }
    }

    public boolean o() {
        if (f2303b == null || !f2303b.d() || !f2303b.e()) {
            return false;
        }
        f2303b.f();
        return true;
    }

    public void p() {
        if (f2303b == null) {
            f2303b = new bb(this.ad, this.ad.findViewById(C0000R.id.pcs_upgrade_stub), c());
            f2303b.a(this.ai);
        }
        f2303b.a();
    }

    public void q() {
        if (f2303b != null) {
            f2303b.c();
        }
    }

    public void r() {
        f2303b = null;
    }
}
