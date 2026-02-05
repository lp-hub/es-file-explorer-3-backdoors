package com.estrongs.android.view;

import android.R;
import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.util.TypedMap;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class bu extends ar {
    private static Map<String, com.estrongs.fs.g> am = new Hashtable();
    private static TypedMap an = null;

    /* renamed from: a, reason: collision with root package name */
    private View f2787a;
    cf ac;
    private boolean ah;
    private Map<String, Integer> ai;
    private Map<String, Boolean> aj;
    private boolean ak;
    private boolean al;
    private boolean ao;
    private String ap;

    /* renamed from: b, reason: collision with root package name */
    int f2788b;
    protected boolean c;

    public bu(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f2788b = 1;
        this.c = false;
        this.ah = false;
        this.ai = new HashMap();
        this.aj = new HashMap();
        this.ak = false;
        this.al = false;
        this.ao = false;
        this.ap = null;
        this.e = new cd(this);
        this.e.a(new ce(this));
        this.g.setAdapter(this.e);
        this.g.setVerticalSpacing(6);
        this.f2787a = l(C0000R.id.grid_footer);
        this.g.setOnItemClickListener(new bv(this));
        try {
            this.ao = com.estrongs.android.ui.pcs.aw.a().c();
            this.ap = com.estrongs.android.ui.pcs.aw.a().f();
        } catch (Exception e) {
        }
    }

    public static com.estrongs.fs.g a(com.estrongs.fs.g gVar, boolean z) {
        com.estrongs.fs.g gVar2;
        com.estrongs.fs.g gVar3;
        if (gVar == null) {
            return gVar;
        }
        if (gVar.getFileType().b()) {
            gVar.putExtra("need_210_thumbnail", true);
            return gVar;
        }
        try {
            com.estrongs.fs.g gVar4 = am.get(gVar.getPath());
            if (gVar4 != null) {
                if (com.estrongs.fs.d.a().b(gVar4.getAbsolutePath())) {
                    gVar4.putExtra("need_210_thumbnail", true);
                    return gVar4;
                }
                am.remove(gVar.getPath());
            }
        } catch (Exception e) {
            gVar2 = null;
        }
        if (z) {
            return null;
        }
        if (an == null) {
            an = new TypedMap();
            an.put(TypedMap.KEY_FROM, 1);
            an.put(TypedMap.KEY_TO, 2);
        }
        String path = gVar.getPath();
        if (com.estrongs.android.util.ak.az(gVar.getPath())) {
            gVar3 = com.estrongs.fs.d.m(com.estrongs.android.util.ak.e(gVar.getPath(), com.estrongs.android.util.ak.aj(gVar.getPath()) ? "pictures" : "mine"));
        } else {
            gVar3 = gVar;
        }
        List<com.estrongs.fs.g> a2 = com.estrongs.fs.d.a().a(gVar3, false, false, (com.estrongs.fs.h) null, an);
        if (a2 == null || a2.size() < 1) {
            gVar2 = null;
        } else {
            gVar2 = a2.get(0);
            if (gVar2 != null) {
                gVar2.putExtra("need_210_thumbnail", true);
                am.put(path, gVar2);
            }
        }
        return gVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ao() {
        if (this.c) {
            return;
        }
        this.c = true;
        View l = l(C0000R.id.grid_footer);
        if (l != null) {
            l.setVisibility(0);
        }
        this.W.put("per_page", 10);
        TypedMap typedMap = this.W;
        int i = this.f2788b;
        this.f2788b = i + 1;
        typedMap.put("page", Integer.valueOf(i));
        this.W.put("load_next_page", true);
        if (com.estrongs.android.util.ak.au(this.w)) {
            this.W.put("max_id", com.estrongs.fs.a.a.b(this.B.get(this.B.size() - 1).getPath()));
        }
        super.b(true);
        this.W.put("load_next_page", false);
    }

    private boolean ap() {
        boolean z = true;
        try {
            if (com.estrongs.android.ui.pcs.aw.a().c()) {
                if (!this.ao) {
                    this.ao = true;
                } else if (com.estrongs.android.ui.pcs.aw.a().f().equals(this.ap)) {
                    z = false;
                } else {
                    this.ap = com.estrongs.android.ui.pcs.aw.a().f();
                }
            } else if (this.ao) {
                this.ao = false;
            } else {
                z = false;
            }
        } catch (Exception e) {
        }
        return z;
    }

    @Override // com.estrongs.android.view.ar
    protected void J() {
        this.ac = new cf(this);
        this.g.setOnScrollListener(this.ac);
        this.g.setOnTouchListener(this.ac);
    }

    @Override // com.estrongs.android.view.ar
    protected boolean S() {
        return !this.W.getBoolean("load_next_page");
    }

    @Override // com.estrongs.android.view.an
    public void a(int i) {
        int i2 = 2;
        this.k = i;
        DisplayMetrics displayMetrics = this.ad.getResources().getDisplayMetrics();
        boolean a2 = com.estrongs.android.pop.utils.ca.a(this.ad);
        boolean z = this.ad.getResources().getConfiguration().orientation == 1;
        if (!a2) {
            float f = (displayMetrics.widthPixels / displayMetrics.densityDpi) * 25.4f;
            if (!z) {
                i2 = (int) ((f / 27.0f) - 0.3f);
            } else if (f >= 75.0f) {
                i2 = f > 150.0f ? 4 : 3;
            }
        } else if (!z) {
            i2 = 3;
        }
        this.g.setNumColumns(i2);
        this.e.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.b.t tVar, List<com.estrongs.fs.g> list) {
        if (tVar.f3024b.equals(b())) {
            this.X = false;
            this.c = false;
            u();
            if (list.size() > 0) {
                c(list);
            }
            b(this.B);
            if (list.size() < 10) {
                if (this.f2788b > 1) {
                    this.f2788b--;
                }
                if (!com.estrongs.android.util.ak.aC(c()) && this.ah) {
                    if (list.size() == 0) {
                        com.estrongs.android.pop.utils.a.a(this.ad, C0000R.string.msg_no_more_pictures);
                    }
                    this.ak = true;
                }
                this.ah = false;
            }
            ((ESActivity) this.ad).a(new cc(this, list));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        if (p() && com.estrongs.android.util.ak.au(gVar.getPath()) && !com.estrongs.android.util.ak.at(gVar.getPath())) {
            gVar = com.estrongs.android.util.ak.ai(gVar.getPath()) ? com.estrongs.fs.d.m(com.estrongs.android.util.ak.e(gVar.getPath(), "album")) : com.estrongs.android.util.ak.aj(gVar.getPath()) ? com.estrongs.fs.d.m(com.estrongs.android.util.ak.e(gVar.getPath(), "pictures")) : com.estrongs.fs.d.m(com.estrongs.android.util.ak.e(gVar.getPath(), "mine"));
        }
        if (this.w != null) {
            this.ai.put(this.w, Integer.valueOf(this.f2788b));
            this.aj.put(this.w, Boolean.valueOf(this.ak));
        }
        if (this.ai.get(gVar.getPath()) == null || com.estrongs.fs.a.b.a().e(gVar.getPath()) == null || !com.estrongs.fs.a.b.a().d(gVar.getPath())) {
            this.f2788b = 1;
            this.ak = false;
            if (typedMap == null) {
                typedMap = new TypedMap();
            }
            typedMap.put("per_page", 10);
            int i = this.f2788b;
            this.f2788b = i + 1;
            typedMap.put("page", Integer.valueOf(i));
            typedMap.put("max_id", null);
        } else {
            this.f2788b = this.ai.get(gVar.getPath()).intValue();
            this.ak = this.aj.get(gVar.getPath()).booleanValue();
        }
        super.a(gVar, typedMap);
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        super.a_();
        am.clear();
    }

    @Override // com.estrongs.android.view.ar
    public View.OnTouchListener ad() {
        return this.ac;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int al() {
        return C0000R.layout.grid_view_image_file_item;
    }

    public void am() {
        int size = this.B.size();
        if (size == 0) {
            size = 1;
        }
        this.W.put("per_page", Integer.valueOf(((size % 10 == 0 ? 0 : 1) + (size / 10)) * 10));
        this.W.put("page", 1);
        this.W.put("max_id", null);
        this.ak = false;
        b(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void b(com.estrongs.android.d.k kVar) {
        if (a(kVar)) {
            kVar.f.setBackgroundColor(-5921371);
            super.b(kVar);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.ad, R.anim.fade_in);
            loadAnimation.setDuration(150L);
            kVar.f.setAnimation(loadAnimation);
        }
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
        this.B.clear();
        if (z) {
            this.ak = false;
            this.X = true;
        }
        this.al = (this.x == null || !com.estrongs.android.util.ak.au(this.x.getPath()) || n()) ? false : true;
        super.b(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void c(List<com.estrongs.fs.g> list) {
        int i = 0;
        if (list != null && list.size() > 0) {
            if (this.Q != null) {
                while (true) {
                    int i2 = i;
                    if (i2 >= list.size()) {
                        break;
                    }
                    if (this.Q.a(list.get(i2)) && !this.B.contains(list.get(i2))) {
                        this.B.add(list.get(i2));
                    }
                    i = i2 + 1;
                }
            } else {
                while (i < list.size()) {
                    if (!this.B.contains(list.get(i))) {
                        this.B.add(list.get(i));
                    }
                    i++;
                }
            }
        }
        this.g.setAdapter(this.e);
    }

    @Override // com.estrongs.android.view.an
    public int d() {
        return (A() && p()) ? super.d() - 1 : super.d();
    }

    @Override // com.estrongs.android.view.an
    public void e() {
        int size = h().size();
        this.f2788b = (size % 10 == 0 ? 0 : 1) + (size / 10);
        super.e();
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g j() {
        String aY = com.estrongs.android.util.ak.aY(this.x.getPath());
        if (aY == null) {
            return !this.O.isEmpty() ? f() : this.x;
        }
        if (com.estrongs.android.util.ak.az(aY)) {
            aY = "SP://";
        }
        com.estrongs.fs.m mVar = new com.estrongs.fs.m(aY);
        a(mVar);
        return mVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g k(int i) {
        return a(super.k(i), false);
    }

    @Override // com.estrongs.android.view.ar
    public void l() {
        if ("SP://".equalsIgnoreCase(this.w)) {
            this.K = ap();
            if (this.K) {
                this.M = true;
            }
        } else {
            try {
                if (this.w != null && this.w.contains("@pcs")) {
                    ap();
                    if (!this.ao) {
                        this.M = true;
                        a("SP://");
                        return;
                    }
                }
            } catch (Exception e) {
            }
        }
        super.l();
    }

    public boolean n() {
        return o() || p();
    }

    public boolean o() {
        return com.estrongs.android.util.ak.aB(c()) || com.estrongs.android.util.ak.L(c());
    }

    public boolean p() {
        return com.estrongs.android.util.ak.at(c());
    }

    public boolean q() {
        return com.estrongs.android.util.ak.au(c());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int r() {
        return C0000R.layout.grid_view_image_folder_item;
    }
}
