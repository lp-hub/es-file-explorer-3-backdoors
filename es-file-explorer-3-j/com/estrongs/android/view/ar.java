package com.estrongs.android.view;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.ConditionVariable;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.TypedMap;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* loaded from: classes.dex */
public class ar extends an<com.estrongs.fs.g> {
    protected static DateFormat H;
    private static boolean ar = false;
    private static com.estrongs.android.util.ay[] av = null;
    private static com.estrongs.android.util.ay[] aw = null;
    private static com.estrongs.android.util.ay[] ax = null;
    private static com.estrongs.android.util.ay[] ay = null;
    private static Object az = new Object();
    com.estrongs.fs.d A;
    LinkedList<com.estrongs.fs.g> B;
    com.estrongs.fs.b.t C;
    com.estrongs.fs.c.a.a D;
    com.estrongs.fs.h E;
    Drawable F;
    HashMap<String, Parcelable> G;
    protected bs I;
    protected com.estrongs.android.d.i J;
    protected boolean K;
    protected boolean L;
    protected boolean M;
    protected boolean N;
    protected Stack<com.estrongs.fs.g> O;
    protected boolean P;
    protected com.estrongs.fs.h Q;
    protected boolean R;
    protected int S;
    protected int T;
    protected int U;
    protected com.estrongs.android.util.n V;
    protected TypedMap W;
    protected boolean X;
    protected com.estrongs.android.a.d Y;
    protected com.estrongs.android.pop.d Z;

    /* renamed from: a, reason: collision with root package name */
    private Map<com.estrongs.fs.g, TypedMap> f2748a;
    long aa;
    protected int ab;
    private Handler ac;
    private boolean ah;
    private boolean ai;
    private boolean aj;
    private String ak;
    private View al;
    private String am;
    private com.estrongs.android.ui.theme.al an;
    private long ao;
    private boolean ap;
    private com.estrongs.fs.a.e aq;
    private float as;
    private float at;
    private float au;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2749b;
    private boolean c;
    public boolean s;
    public boolean t;
    public boolean u;
    public String v;
    protected String w;
    protected com.estrongs.fs.g x;
    bt y;
    protected br z;

    public ar(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        this(activity, viewGroup, aVar, bsVar, true);
    }

    public ar(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar, boolean z) {
        this(activity, viewGroup, aVar, bsVar, z, true);
    }

    public ar(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar, boolean z, boolean z2) {
        super(activity, viewGroup, z);
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = null;
        this.B = new LinkedList<>();
        this.D = new com.estrongs.fs.c.a.d(true);
        this.G = new HashMap<>();
        this.K = false;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = new Stack<>();
        this.f2748a = new HashMap();
        this.P = false;
        this.f2749b = false;
        this.c = false;
        this.Q = null;
        this.R = false;
        this.V = null;
        this.ac = new Handler();
        this.ah = false;
        this.W = new TypedMap();
        this.X = true;
        this.aj = false;
        this.ak = null;
        this.am = "all";
        this.ao = 0L;
        this.ap = false;
        this.aq = new as(this);
        this.Y = new bb(this);
        this.aa = 0L;
        this.ab = -1;
        this.as = 0.0f;
        this.at = 0.0f;
        this.au = 0.0f;
        this.D = aVar;
        this.ai = z2;
        this.A = com.estrongs.fs.d.a(activity);
        this.I = bsVar;
        this.F = activity.getResources().getDrawable(C0000R.drawable.format_apk);
        H = com.estrongs.android.pop.q.a(activity).H();
        this.an = com.estrongs.android.ui.theme.al.a(activity);
        this.I = bsVar;
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float a(TextView textView, float f, String str) {
        float textSize = textView.getTextSize();
        if (textView == null || f <= 0.0f || str == null) {
            return textSize;
        }
        float f2 = textSize;
        while (str != TextUtils.ellipsize(str, textView.getPaint(), f, TextUtils.TruncateAt.END)) {
            f2 -= 1.0f;
            if (f2 < 0.0f) {
                break;
            }
            textView.setTextSize(0, f2);
        }
        return f2 >= 0.0f ? f2 : textSize;
    }

    public static String a(View view) {
        try {
            return ((com.estrongs.fs.g) ((com.estrongs.android.widget.e) view.getTag()).j).getAbsolutePath();
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.estrongs.fs.b.t tVar, int i, String str) {
        int j;
        if (tVar.c != null) {
            if (!this.ap) {
                this.ap = tVar.d.a(tVar.f3024b.getPath(), tVar.c);
            }
            if (com.estrongs.android.util.ak.aq(this.w) && com.estrongs.fs.a.a.c(this.w).size() == 3) {
                u();
            }
            f();
        } else {
            this.ap = false;
            if (i != 5) {
                com.estrongs.a.p taskResult = tVar.getTaskResult();
                if (taskResult.f229a == 1) {
                    return;
                }
                if (com.estrongs.android.util.aw.a("ALL_LOADED", taskResult.f230b)) {
                    u();
                    a(this.D);
                } else if (taskResult.f230b instanceof List) {
                    a(tVar, (List<com.estrongs.fs.g>) taskResult.f230b);
                }
                String path = tVar.f3024b.getPath();
                Parcelable parcelable = this.G.get(path);
                if (path.equals(this.w)) {
                    if (parcelable == null || this.ak != null) {
                        this.g.setSelection(0);
                    } else {
                        this.g.onRestoreInstanceState(parcelable);
                    }
                }
                if (this.ak != null && !com.estrongs.android.util.ak.aC(this.ak) && !com.estrongs.android.util.ak.au(path) && (j = j(this.ak)) >= 0) {
                    this.g.setSelected(true);
                    this.g.setSelection(j);
                    this.g.setFocusable(true);
                    this.g.post(new bh(this, j));
                }
            } else if (tVar.getTaskResult().f229a != 1) {
                j();
            } else {
                u();
            }
        }
        if (this.ah) {
            this.ah = false;
        }
        if (this.I != null) {
            this.I.b();
        }
        this.ak = null;
    }

    public static void af() {
        synchronized (az) {
            av = null;
            ay = null;
            aw = null;
            ax = null;
        }
    }

    private boolean b(String str) {
        if (com.estrongs.android.util.ak.O(str) || com.estrongs.android.util.ak.Q(str) || com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.L(str) || com.estrongs.android.util.ak.au(str)) {
            return false;
        }
        boolean c = com.estrongs.android.ui.pcs.aw.a().c();
        if (com.estrongs.android.util.ak.as(this.w) && c) {
            return false;
        }
        return !com.estrongs.android.util.ak.aq(this.w) || c;
    }

    private void l(String str) {
        if (com.estrongs.android.util.ak.E(this.w) == com.estrongs.android.util.ak.E(str)) {
            Iterator<com.estrongs.fs.g> it = this.O.iterator();
            while (it.hasNext()) {
                if (it.next().getPath().startsWith(str)) {
                    it.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.V != null) {
            this.V.a();
            this.V = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.estrongs.android.util.n o() {
        return new bd(this, "PreIconLoader-SCROLL_STATE_IDLE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.I != null) {
            this.I.a();
        }
        if (U() || !this.X) {
            this.ah = true;
        } else {
            c(n(W()));
        }
    }

    private void q() {
        if (this.ab == -1) {
            this.ab = com.estrongs.android.ui.theme.al.a(this.ad).h();
        }
    }

    public boolean F() {
        return this.c;
    }

    public void G() {
        synchronized (this.O) {
            this.O.clear();
        }
    }

    public boolean H() {
        FileExplorerActivity E = FileExplorerActivity.E();
        return E == null ? !this.P : E.t() == this && !this.P;
    }

    public void I() {
        if (this.ai) {
            com.estrongs.fs.a.b.a().b(this.aq);
            com.estrongs.fs.a.b.a().a(this.aq);
            this.P = false;
        }
    }

    protected void J() {
        this.g.setOnScrollListener(new bq(this));
    }

    public void K() {
        this.J = new be(this);
    }

    public boolean L() {
        return ar;
    }

    public com.estrongs.fs.c.a.a M() {
        return this.D;
    }

    public int N() {
        if (this.D == null || (this.D instanceof com.estrongs.fs.c.a.d)) {
            return 0;
        }
        if (this.D instanceof com.estrongs.fs.c.a.f) {
            return 1;
        }
        if (this.D instanceof com.estrongs.fs.c.a.e) {
            return 2;
        }
        return this.D instanceof com.estrongs.fs.c.a.c ? 3 : 0;
    }

    public int O() {
        return (this.D == null || this.D.a()) ? 0 : 1;
    }

    public boolean P() {
        boolean isEmpty;
        synchronized (this.O) {
            isEmpty = this.O.isEmpty();
        }
        return isEmpty;
    }

    public com.estrongs.fs.d Q() {
        return this.A;
    }

    public void R() {
        if (this.C != null) {
            this.C.a(true);
        }
        if (this.J != null) {
            this.J.b();
        }
    }

    protected boolean S() {
        return true;
    }

    public boolean T() {
        return this.q != null && this.q.getVisibility() == 0;
    }

    public boolean U() {
        return this.P;
    }

    protected bo V() {
        bo boVar = new bo(this);
        boVar.f2783b = new ConditionVariable();
        com.estrongs.fs.b.t tVar = new com.estrongs.fs.b.t(this.A, this.Z);
        tVar.a(new bi(this, boVar));
        tVar.addTaskStatusChangeListener(new bk(this, boVar));
        tVar.addProgressListener(new ax(this));
        boVar.f2782a = tVar;
        return boVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int W() {
        return C0000R.string.progress_loading;
    }

    public DateFormat X() {
        return H;
    }

    public com.estrongs.android.d.i Y() {
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Z() {
        if (m() || !com.estrongs.android.util.ak.a(c(), this.W) || this.g.getLastVisiblePosition() != this.g.getCount() - 1) {
            if (this.al == null || this.al.getVisibility() != 0) {
                return;
            }
            this.al.setVisibility(8);
            return;
        }
        if (this.al == null) {
            this.al = l(C0000R.id.grid_footer_below_grid);
        }
        if (this.al != null) {
            this.al.setVisibility(0);
            this.al.findViewById(C0000R.id.grid_footer_progressbar).setVisibility(8);
            TextView textView = (TextView) this.al.findViewById(C0000R.id.grid_footer_text);
            textView.setText(this.ad.getText(C0000R.string.deep_search));
            textView.getLayoutParams().width = -1;
            textView.setOnClickListener(new ba(this));
        }
    }

    public void a(long j) {
        this.ao = j;
    }

    public void a(com.estrongs.android.ui.drag.d dVar) {
        this.p = dVar;
    }

    public void a(br brVar) {
        this.z = brVar;
    }

    public void a(bt btVar) {
        this.y = btVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.estrongs.fs.b.t tVar, List<com.estrongs.fs.g> list) {
        if (com.estrongs.android.util.aw.a(this.C, tVar)) {
            u();
            this.f2749b = com.estrongs.android.util.ak.aU(this.x.getPath());
            c(list);
            int size = this.B.size();
            if (size == 0) {
                if (com.estrongs.android.util.ak.aU(c())) {
                    if (com.estrongs.android.util.ak.aJ(c())) {
                        f(C0000R.string.list_empty_bt);
                    } else {
                        f(C0000R.string.list_empty);
                    }
                } else if (com.estrongs.android.util.ak.aq(c()) || com.estrongs.android.util.ak.ao(c())) {
                    if (com.estrongs.android.ui.pcs.aw.a().d()) {
                        f(C0000R.string.pcs_tmp_folder_empty_message);
                    } else if (com.estrongs.android.util.ak.d("/files", com.estrongs.android.util.ak.a(c(), 23))) {
                        f(C0000R.string.pcs_formal_folder_empty_message);
                    } else {
                        f(C0000R.string.folder_empty);
                    }
                } else if (com.estrongs.android.util.ak.bz(c())) {
                    if (com.estrongs.fs.impl.k.a.b()) {
                        t();
                    } else {
                        f(C0000R.string.recycle_empty);
                    }
                } else if ("mounted".equals(Environment.getExternalStorageState())) {
                    f(C0000R.string.folder_empty);
                } else {
                    f(C0000R.string.sdcard_unmounted);
                }
                b(this.B);
            } else {
                if (size >= 200) {
                    size = 200;
                }
                this.T = size;
                b(this.B);
                if (this.V != null) {
                    this.V.a();
                }
                this.V = o();
                this.V.setPriority(1);
                this.V.start();
                if (ar) {
                    this.g.startLayoutAnimation();
                }
            }
            this.g.post(new az(this));
        }
    }

    public void a(com.estrongs.fs.c.a.a aVar) {
        this.D = aVar;
        if (this.D == null) {
            g();
        } else if (this.e.a() != null) {
            a(this.e.a(), this.D);
            this.e.notifyDataSetChanged();
        }
    }

    public void a(com.estrongs.fs.g gVar) {
        a(gVar, (TypedMap) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        if (this.x == null || !this.x.equals(gVar) || com.estrongs.android.util.ak.aK(this.x.getPath())) {
            if (com.estrongs.android.pop.m.j && gVar != null && gVar.getPath().equals("/")) {
                return;
            }
            if (!this.N && b(gVar.getAbsolutePath())) {
                synchronized (this.O) {
                    if (this.w != null && this.x != null && (this.O.isEmpty() || !com.estrongs.android.util.ak.d(gVar.getAbsolutePath(), this.x.getAbsolutePath()))) {
                        this.O.push(this.x);
                        this.f2748a.put(this.x, new TypedMap(this.W));
                    }
                }
            }
            this.W.clear();
            if (typedMap != null) {
                this.W.putAll(typedMap);
            }
            R();
            if (this.w == null) {
                this.G.put(gVar.getPath(), this.g.onSaveInstanceState());
            } else if (this.aj) {
                this.G.put(this.w, null);
                this.aj = false;
            } else {
                this.G.put(this.w, this.g.onSaveInstanceState());
            }
            this.x = gVar;
            this.w = gVar.getPath();
            this.X = true;
            this.W.put("back", Boolean.valueOf(this.N));
            if (this.W == null || !this.W.getBoolean("refresh") || this.N) {
                g();
            } else {
                b(true);
            }
        }
    }

    public void a(com.estrongs.fs.h hVar) {
        this.Q = hVar;
    }

    public void a(String str) {
        a(str, (TypedMap) null);
    }

    public void a(String str, TypedMap typedMap) {
        a(com.estrongs.fs.d.m(str), typedMap);
    }

    public void a(DateFormat dateFormat) {
        H = dateFormat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(List<com.estrongs.fs.g> list, com.estrongs.fs.c.a.a aVar) {
        Collections.sort(list, aVar);
    }

    public void a(boolean z, boolean z2) {
        this.K = z;
        this.L = z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(com.estrongs.android.d.k kVar) {
        return kVar.g && (kVar.f.getTag() == null || kVar.c == kVar.f.getTag());
    }

    public void a_() {
        if (this.C != null) {
            this.C.a(true);
        }
        if (this.J != null) {
            this.J.b();
            this.J.a();
            this.J = null;
        }
        this.P = true;
        if (this.ai) {
            com.estrongs.fs.a.b.a().b(this.aq);
        }
    }

    public void aa() {
        this.W.put("updateMediaStore", true);
        b(true);
    }

    public String ab() {
        return this.am;
    }

    public long ac() {
        return this.ao;
    }

    public View.OnTouchListener ad() {
        return null;
    }

    public com.estrongs.android.util.ay[] ae() {
        com.estrongs.android.util.ay[] ayVarArr;
        synchronized (az) {
            if (av == null) {
                List<String> a2 = com.estrongs.android.util.ak.a();
                String b2 = com.estrongs.android.pop.b.b();
                if (a2.remove(b2)) {
                    a2.add(0, b2);
                }
                int size = com.estrongs.android.pop.m.j ? a2.size() : a2.size() + 1;
                av = new com.estrongs.android.util.ay[size];
                for (int i = 0; i < size; i++) {
                    av[i] = new com.estrongs.android.util.ay();
                    av[i].f2689b = true;
                    av[i].d = true;
                }
                if (!com.estrongs.android.pop.m.j) {
                    av[0].f2688a = "/";
                    av[0].e = (String) this.ad.getText(C0000R.string.location_device_root);
                    av[0].f = C0000R.drawable.history_rootdirectory;
                    av[0].d = false;
                }
                for (int i2 = 0; i2 < a2.size(); i2++) {
                    int i3 = com.estrongs.android.pop.m.j ? i2 : i2 + 1;
                    av[i3].f2688a = a2.get(i2);
                    av[i3].e = com.estrongs.android.pop.m.b(a2.get(i2));
                    av[i3].f = C0000R.drawable.history_sdcard;
                }
            }
            ayVarArr = av;
        }
        return ayVarArr;
    }

    public com.estrongs.android.util.ay[] ag() {
        String[] stringArray = this.ad.getResources().getStringArray(C0000R.array.pcs_category);
        if (stringArray != null) {
            String[] strArr = new String[stringArray.length];
            int[] iArr = new int[stringArray.length];
            String h = com.estrongs.android.ui.pcs.aw.a().h();
            if (this.w.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
                h = com.estrongs.android.util.ak.bp(this.w.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX")[0]) + "PCS_DRIVE_Js1a7M5e_9yAcTvFX";
            }
            strArr[0] = h + "/files";
            iArr[0] = C0000R.drawable.history_all;
            strArr[1] = h + "/pictures";
            iArr[1] = C0000R.drawable.history_pic_mine;
            strArr[2] = h + "/documents";
            iArr[2] = C0000R.drawable.history_document;
            strArr[3] = h + "/music";
            iArr[3] = C0000R.drawable.history_music;
            strArr[4] = h + "/videos";
            iArr[4] = C0000R.drawable.history_video;
            strArr[5] = h + "/apps";
            iArr[5] = C0000R.drawable.history_all_apk;
            strArr[6] = h + "/others";
            iArr[6] = C0000R.drawable.history_other;
            strArr[7] = h + "/files/apps/Downloads/";
            iArr[7] = C0000R.drawable.history_dowmload;
            ax = new com.estrongs.android.util.ay[stringArray.length];
            for (int i = 0; i < ax.length; i++) {
                ax[i] = new com.estrongs.android.util.ay();
                ax[i].f2688a = strArr[i];
                ax[i].e = stringArray[i];
                ax[i].f = iArr[i];
                ax[i].f2689b = true;
            }
        }
        return ax;
    }

    public com.estrongs.android.util.ay[] ah() {
        if (aw == null) {
            aw = new com.estrongs.android.util.ay[com.estrongs.android.pop.utils.bs.a() ? 7 : 6];
            for (int i = 0; i < aw.length; i++) {
                aw[i] = new com.estrongs.android.util.ay();
                aw[i].f2689b = true;
            }
            aw[0].f2688a = "app://user";
            aw[0].e = (String) this.ad.getText(C0000R.string.app_manager_category_user);
            aw[0].f = C0000R.drawable.history_user_app;
            aw[1].f2688a = "app://system";
            aw[1].e = (String) this.ad.getText(C0000R.string.app_manager_category_system);
            aw[1].f = C0000R.drawable.history_system_app;
            aw[2].f2688a = "app://phone";
            aw[2].e = (String) this.ad.getText(C0000R.string.app_manager_category_phone);
            aw[2].f = C0000R.drawable.history_phone_app;
            aw[3].f2688a = "app://sdcard";
            aw[3].e = (String) this.ad.getText(C0000R.string.app_manager_category_sdcard);
            aw[3].f = C0000R.drawable.history_sdcard_app;
            if (com.estrongs.android.pop.utils.bs.a()) {
                aw[4].f2688a = "app://update";
                aw[4].e = (String) this.ad.getText(C0000R.string.app_manager_category_update);
                aw[4].f = C0000R.drawable.history_update_app;
                aw[5].f2688a = "app://backuped";
                aw[5].e = (String) this.ad.getText(C0000R.string.app_manager_backup_backuped);
                aw[5].f = C0000R.drawable.history_backedup_apk;
                aw[6].f2688a = "apk://";
                aw[6].e = (String) this.ad.getText(C0000R.string.app_manager_category_all_apk);
                aw[6].f = C0000R.drawable.history_all_apk;
            } else {
                aw[4].f2688a = "app://backuped";
                aw[4].e = (String) this.ad.getText(C0000R.string.app_manager_backup_backuped);
                aw[4].f = C0000R.drawable.history_backedup_apk;
                aw[5].f2688a = "apk://";
                aw[5].e = (String) this.ad.getText(C0000R.string.app_manager_category_all_apk);
                aw[5].f = C0000R.drawable.history_all_apk;
            }
        }
        return aw;
    }

    public com.estrongs.android.util.ay[] ai() {
        int i;
        boolean z = com.estrongs.android.util.ak.aC(this.w) || com.estrongs.android.util.ak.L(this.w);
        boolean z2 = (!com.estrongs.android.util.ak.au(this.w) || com.estrongs.android.util.ak.at(this.w) || com.estrongs.android.util.ak.aj(this.w)) ? false : true;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 5; i2++) {
            com.estrongs.android.util.ay ayVar = new com.estrongs.android.util.ay();
            ayVar.f2689b = true;
            arrayList.add(ayVar);
        }
        ((com.estrongs.android.util.ay) arrayList.get(0)).f2688a = "gallery://local/buckets/";
        ((com.estrongs.android.util.ay) arrayList.get(0)).e = (String) this.ad.getText(C0000R.string.location_local);
        ((com.estrongs.android.util.ay) arrayList.get(0)).f = C0000R.drawable.history_local;
        ((com.estrongs.android.util.ay) arrayList.get(1)).f2688a = "SP://";
        ((com.estrongs.android.util.ay) arrayList.get(1)).e = (String) this.ad.getText(C0000R.string.image_explore_net);
        ((com.estrongs.android.util.ay) arrayList.get(1)).f = C0000R.drawable.history_net;
        if (z) {
            ((com.estrongs.android.util.ay) arrayList.get(2)).f2688a = "pic://";
            ((com.estrongs.android.util.ay) arrayList.get(2)).e = (String) this.ad.getText(C0000R.string.category_picture);
            ((com.estrongs.android.util.ay) arrayList.get(2)).f = C0000R.drawable.history_pic_mine;
            ((com.estrongs.android.util.ay) arrayList.get(3)).f2688a = "gallery://local/buckets/";
            ((com.estrongs.android.util.ay) arrayList.get(3)).e = (String) this.ad.getText(C0000R.string.image_explore_album);
            ((com.estrongs.android.util.ay) arrayList.get(3)).f = C0000R.drawable.history_pic_album;
            i = 4;
        } else if (!z2 || com.estrongs.android.util.ak.ai(this.w)) {
            i = 2;
        } else {
            String aY = com.estrongs.android.util.ak.aY(this.w);
            String aY2 = !com.estrongs.android.util.ak.az(aY) ? com.estrongs.android.util.ak.aY(aY) : aY;
            ((com.estrongs.android.util.ay) arrayList.get(2)).f2688a = com.estrongs.android.util.ak.e(aY2, "mine");
            ((com.estrongs.android.util.ay) arrayList.get(2)).e = (String) this.ad.getText(C0000R.string.image_explore_mine);
            ((com.estrongs.android.util.ay) arrayList.get(2)).f = C0000R.drawable.history_pic_mine;
            ((com.estrongs.android.util.ay) arrayList.get(3)).f2688a = com.estrongs.android.util.ak.e(aY2, "hot");
            ((com.estrongs.android.util.ay) arrayList.get(3)).e = (String) this.ad.getText(C0000R.string.image_explore_hot);
            ((com.estrongs.android.util.ay) arrayList.get(3)).f = C0000R.drawable.history_pic_hot;
            if (com.estrongs.android.util.ak.ah(this.w)) {
                i = 4;
            } else {
                ((com.estrongs.android.util.ay) arrayList.get(4)).f2688a = com.estrongs.android.util.ak.e(aY2, "album");
                ((com.estrongs.android.util.ay) arrayList.get(4)).e = (String) this.ad.getText(C0000R.string.image_explore_album);
                ((com.estrongs.android.util.ay) arrayList.get(4)).f = C0000R.drawable.history_pic_album;
                i = 5;
            }
        }
        com.estrongs.android.util.ay[] ayVarArr = new com.estrongs.android.util.ay[i];
        for (int i3 = 0; i3 < i; i3++) {
            ayVarArr[i3] = (com.estrongs.android.util.ay) arrayList.get(i3);
        }
        return ayVarArr;
    }

    public com.estrongs.android.util.ay[] aj() {
        int i = 0;
        if (ay == null) {
            List<String> a2 = com.estrongs.android.util.ak.a();
            String b2 = com.estrongs.android.pop.b.b();
            if (a2.remove(b2)) {
                a2.add(0, b2);
            }
            ay = new com.estrongs.android.util.ay[a2.size()];
            while (true) {
                int i2 = i;
                if (i2 >= a2.size()) {
                    break;
                }
                ay[i2] = new com.estrongs.android.util.ay();
                ay[i2].f2689b = true;
                ay[i2].f2688a = "du://" + a2.get(i2);
                ay[i2].e = com.estrongs.android.pop.m.b(a2.get(i2));
                ay[i2].f = C0000R.drawable.history_sdcard;
                i = i2 + 1;
            }
        }
        return ay;
    }

    public com.estrongs.android.util.ay[] ak() {
        int E = com.estrongs.android.util.ak.E(c());
        return com.estrongs.android.util.ak.c(E) ? ah() : com.estrongs.android.util.ak.b(E) ? ai() : (E == 23 && com.estrongs.android.ui.pcs.aw.a().c()) ? ag() : com.estrongs.android.util.ak.s(c()) ? aj() : ae();
    }

    public com.estrongs.fs.g b() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(com.estrongs.android.d.k kVar) {
        if (a(kVar)) {
            com.estrongs.android.d.d.a(kVar.f.getDrawable());
            kVar.f.setImageDrawable(kVar.e);
            if (kVar.f285a) {
                com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(kVar.d), kVar.e, true);
            }
        }
    }

    public void b(com.estrongs.fs.h hVar) {
        this.E = hVar;
    }

    public void b(boolean z) {
        if (this.x == null) {
            return;
        }
        com.estrongs.android.pop.utils.aa.c(this.w, hashCode());
        this.w = this.x.getPath();
        q();
        n();
        R();
        if (this.z != null) {
            this.z.a(this.x.getPath(), true);
        }
        bo V = V();
        this.C = V.f2782a;
        com.estrongs.fs.b bVar = new com.estrongs.fs.b(this.E);
        bVar.a(new ae(this.w, hashCode()));
        if (this.al != null && this.al.getVisibility() == 0) {
            this.al.setVisibility(8);
        }
        if (S()) {
            this.B.clear();
        }
        boolean aL = com.estrongs.android.util.ak.aL(this.x.getPath());
        boolean au = com.estrongs.android.util.ak.au(this.x.getPath());
        com.estrongs.fs.b.t tVar = this.C;
        Object[] objArr = new Object[5];
        objArr[0] = this.x;
        objArr[1] = (aL || au) ? null : this.D;
        objArr[2] = bVar;
        objArr[3] = Boolean.valueOf(z);
        objArr[4] = this.W;
        boolean a2 = tVar.a(objArr);
        ar t = this.ad instanceof FileExplorerActivity ? ((FileExplorerActivity) this.ad).t() : null;
        if (!a2 && !aL && !au && t != null && t == this) {
            boolean block = V.f2783b.block(800L);
            if (block) {
                V.f2783b.close();
            }
            if (block) {
                this.X = false;
                if (V.d != null) {
                    this.ac.removeCallbacks(V.c);
                    this.ac.removeCallbacks(V.d);
                    V.c.run();
                    if (V.e != null) {
                        for (int i = 0; i < V.e.size(); i++) {
                            this.ac.removeCallbacks(V.e.get(i));
                            V.e.get(i).run();
                        }
                    }
                    V.d.run();
                }
            } else {
                c(n(W()));
            }
        }
        this.R = false;
        this.S = 0;
        this.T = Integer.MAX_VALUE;
        if (this.N) {
            this.N = false;
        }
    }

    public void b_() {
    }

    public String c() {
        return this.w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(List<com.estrongs.fs.g> list) {
        if (list != null && list.size() > 0) {
            if (this.Q != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= list.size()) {
                        break;
                    }
                    if (this.Q.a(list.get(i2))) {
                        this.B.add(list.get(i2));
                    }
                    i = i2 + 1;
                }
            } else {
                this.B.addAll(list);
            }
        }
        this.g.setAdapter(this.e);
    }

    public void d(List<String> list) {
        synchronized (this.O) {
            for (int i = 0; i < list.size(); i++) {
                l(list.get(i));
            }
        }
    }

    public boolean d(String str) {
        if (str == null || this.B == null) {
            return false;
        }
        for (int i = 0; i < this.B.size(); i++) {
            com.estrongs.fs.g gVar = this.B.get(i);
            if (gVar != null && str.equalsIgnoreCase(gVar.getAbsolutePath())) {
                return true;
            }
        }
        return false;
    }

    public int e(String str) {
        switch (com.estrongs.android.util.ak.E(str)) {
            case 12:
                return 2;
            case 13:
            case 25:
                return 4;
            case 14:
                return 8;
            case 15:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            default:
                return -1;
            case 16:
                return 16;
            case 17:
                return 32;
        }
    }

    public void e(boolean z) {
        this.c = z;
    }

    public com.estrongs.fs.g f() {
        com.estrongs.fs.g gVar;
        this.aj = true;
        this.N = true;
        synchronized (this.O) {
            if (this.O.isEmpty()) {
                return j();
            }
            com.estrongs.fs.g pop = this.O.pop();
            if (!com.estrongs.android.util.ak.d(pop.getPath(), this.w)) {
                gVar = pop;
            } else {
                if (this.O.isEmpty()) {
                    return j();
                }
                gVar = this.O.pop();
            }
            a(gVar, this.f2748a.remove(gVar));
            return gVar;
        }
    }

    public void f(String str) {
        int i = 0;
        while (true) {
            if (i >= this.B.size()) {
                i = 0;
                break;
            } else if (this.B.get(i).getName().equals(str)) {
                break;
            } else {
                i++;
            }
        }
        this.g.post(new bg(this, i));
    }

    public void f(boolean z) {
        this.g.setFastScrollEnabled(z);
    }

    @Override // com.estrongs.android.view.an
    public String g(int i) {
        com.estrongs.fs.g e = e(i);
        if (e == null) {
            return null;
        }
        return e.getAbsolutePath();
    }

    public void g() {
        b(this.M);
    }

    public void g(String str) {
        this.s = true;
        a(str, (TypedMap) null);
    }

    public void g(boolean z) {
        this.g.setScrollingCacheEnabled(z);
    }

    public void h(String str) {
        this.t = true;
        a(str, (TypedMap) null);
    }

    public void h(boolean z) {
        ar = z;
        if (!ar) {
            this.g.setLayoutAnimation(null);
        } else {
            this.g.setLayoutAnimation(AnimationUtils.loadLayoutAnimation(this.ad, C0000R.anim.layout_grid_inverse_fade));
        }
    }

    protected void i() {
        a(new bp(this));
        a(new bc(this));
        this.g.setSelector(C0000R.drawable.background_content_grid);
        this.Z = new com.estrongs.android.pop.d(this.ad, this.Y);
        J();
        K();
        if (this.ai) {
            com.estrongs.fs.a.b.a().a(this.aq);
        }
        h(com.estrongs.android.pop.q.a(this.ad).w());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i(int i) {
        if (i < this.S || i >= this.T) {
            if (i < this.S) {
                this.S = i;
                this.T = this.U + i;
            } else if (i >= this.T) {
                this.T = i + 1;
                this.S = this.T - this.U;
            }
        }
    }

    public void i(String str) {
        this.u = true;
        a(str, (TypedMap) null);
    }

    public void i(boolean z) {
        this.M = z;
    }

    protected int j(String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.B.size()) {
                return -1;
            }
            if (com.estrongs.android.util.ak.g(str, com.estrongs.fs.a.a.f(this.B.get(i2).getPath()))) {
                return i2;
            }
            i = i2 + 1;
        }
    }

    public com.estrongs.fs.g j() {
        String a2;
        com.estrongs.fs.g f;
        this.aj = true;
        if (this.x != null && com.estrongs.android.util.ak.aR(this.x.getAbsolutePath())) {
            return null;
        }
        String aY = this.x == null ? null : com.estrongs.android.util.ak.aY(this.x.getAbsolutePath());
        if (aY == null) {
            return null;
        }
        if (aY.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/") || aY.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
            aY = com.estrongs.android.util.ak.aY(aY);
        }
        if (aY == null) {
            synchronized (this.O) {
                f = !this.O.isEmpty() ? f() : this.x;
            }
            return f;
        }
        if (com.estrongs.android.pop.m.j && aY.equals("/")) {
            return null;
        }
        if (com.estrongs.android.util.ak.aq(aY) && ((a2 = com.estrongs.android.util.ak.a(aY, 23)) == null || a2.equals("/"))) {
            return null;
        }
        com.estrongs.fs.m mVar = new com.estrongs.fs.m(aY);
        a(mVar);
        return mVar;
    }

    public void j(int i) {
        this.ab = i;
    }

    public void j(boolean z) {
        a(z, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.estrongs.fs.g k(int i) {
        return (com.estrongs.fs.g) this.e.getItem(i);
    }

    public void k(String str) {
        this.am = str;
    }

    public void l() {
        if (this.K || this.L) {
            if (this.L) {
                b(true);
            } else {
                g();
            }
            this.K = false;
            this.L = false;
        }
        if (this.ah && this.X) {
            s();
        }
    }

    public boolean m() {
        return this.C != null && (this.C.getTaskStatus() == 2 || this.C.getTaskStatus() == 3);
    }

    @Override // com.estrongs.android.view.an
    public void u() {
        super.u();
        this.X = false;
    }
}
