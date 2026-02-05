package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.android.view.ar;
import com.estrongs.android.view.bs;
import com.estrongs.android.widget.az;
import com.estrongs.android.widget.bb;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* loaded from: classes.dex */
public class e extends ar {
    private static final String ah = com.estrongs.android.pop.b.b();
    public static DisplayMetrics c = new DisplayMetrics();

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.c.b f667a;
    private long aA;
    private boolean aB;
    private Stack<com.estrongs.fs.c.a> aC;
    private Stack<Parcelable> aD;
    private com.estrongs.android.ui.a.g aE;
    private long aF;
    private ListView aG;
    private Handler aH;
    private boolean ac;
    private Object ai;
    private boolean aj;
    private boolean ak;
    private long al;
    private File am;
    private File an;
    private b ao;
    private b ap;
    private HashMap<String, b> aq;
    private az ar;
    private long as;
    private long at;
    private long au;
    private long av;
    private long aw;
    private long ax;
    private long ay;
    private long az;

    /* renamed from: b, reason: collision with root package name */
    String f668b;

    public e(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.ac = false;
        this.ai = new Object();
        this.aj = false;
        this.ak = false;
        this.al = 0L;
        this.aq = new HashMap<>();
        this.f667a = new f(this);
        this.av = 0L;
        this.aw = 0L;
        this.ax = 0L;
        this.ay = 0L;
        this.az = 0L;
        this.aA = 0L;
        this.aB = false;
        this.aC = new Stack<>();
        this.aD = new Stack<>();
        this.aH = new g(this);
        ViewGroup viewGroup2 = (ViewGroup) this.g.getParent();
        viewGroup2.removeAllViews();
        viewGroup2.addView(this.af.inflate(C0000R.layout.diskusage_body_result, (ViewGroup) null));
        this.aG = (ListView) l(C0000R.id.listview_diskusage);
        this.aG.setVisibility(0);
        this.aG.setBackgroundColor(0);
        this.aG.setDivider(null);
        this.aG.setDividerHeight(0);
        this.aG.setCacheColorHint(0);
        this.aG.setScrollBarStyle(33554432);
        this.aG.setSelector(C0000R.drawable.background_content_grid);
        this.aG.setScrollingCacheEnabled(false);
        LinearLayout linearLayout = new LinearLayout(this.ad);
        linearLayout.setMinimumHeight(com.estrongs.android.ui.d.a.a(this.ad, 16.0f));
        this.aG.addHeaderView(linearLayout, null, false);
        LinearLayout linearLayout2 = new LinearLayout(this.ad);
        linearLayout2.setMinimumHeight(com.estrongs.android.ui.d.a.a(this.ad, 16.0f));
        this.aG.addFooterView(linearLayout2, null, false);
        this.f668b = aw.a((CharSequence) null) ? ah : null;
        q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ long a(e eVar, long j) {
        long j2 = eVar.au + j;
        eVar.au = j2;
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.estrongs.fs.c.a aVar) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.aC.size()) {
                this.at -= aVar.f3035a;
                this.av -= aVar.d;
                this.aw -= aVar.e;
                this.ax -= aVar.f;
                this.ay -= aVar.g;
                this.az -= aVar.h;
                this.aA -= aVar.i;
                return;
            }
            a(this.aC.get(i2), aVar);
            i = i2 + 1;
        }
    }

    private void a(com.estrongs.fs.c.a aVar, com.estrongs.fs.c.a aVar2) {
        aVar.f3035a -= aVar2.f3035a;
        aVar.f3036b -= aVar2.f3036b;
        aVar.c -= aVar2.c;
        aVar.d -= aVar2.d;
        aVar.e -= aVar2.e;
        aVar.f -= aVar2.f;
        aVar.g -= aVar2.g;
        aVar.h -= aVar2.h;
        aVar.i -= aVar2.i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void al() {
        if (!this.ak) {
            if (!this.aj) {
                com.estrongs.fs.c.a a2 = this.ao.a(this.an);
                if (a2 != null) {
                    if (this.aC.size() > 0 && this.aC.peek() == a2) {
                        this.aC.pop();
                    }
                    this.aC.push(a2);
                }
                this.aD.push(this.aG.onSaveInstanceState());
            } else if (this.aC.size() > 0) {
                this.aC.pop();
            }
            this.ao = this.ap;
            this.am = this.an;
            this.aq.put(this.f668b, this.ao);
            r();
            if (this.aj && this.aD.size() > 0) {
                this.aG.onRestoreInstanceState(this.aD.pop());
            }
        }
        this.aj = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void am() {
        if (this.ar == null) {
            this.ar = p();
        }
        if (this.ar == null || this.al == 0) {
            return;
        }
        this.ar.show();
        this.al = System.currentTimeMillis();
    }

    private void ao() {
        if (this.ar == null) {
            this.ar = p();
        }
        this.al = System.currentTimeMillis();
        if (this.ar != null) {
            this.aH.sendEmptyMessageDelayed(1, 800L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ap() {
        if (this.ar != null) {
            this.ar.dismiss();
            this.ar = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean aq() {
        if (this.ar != null) {
            return this.ar.isShowing();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ar() {
        this.ak = true;
        synchronized (this.ai) {
            if (this.ap != null) {
                this.ap.a();
            }
        }
        if (aw.a(this.f668b, this.an.getAbsolutePath())) {
            this.aH.post(new n(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.estrongs.fs.c.a aVar) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.aC.size()) {
                this.at += aVar.f3035a;
                this.av += aVar.d;
                this.aw += aVar.e;
                this.ax += aVar.f;
                this.ay += aVar.g;
                this.az += aVar.h;
                this.aA += aVar.i;
                return;
            }
            b(this.aC.get(i2), aVar);
            i = i2 + 1;
        }
    }

    private void b(com.estrongs.fs.c.a aVar, com.estrongs.fs.c.a aVar2) {
        aVar.f3035a += aVar2.f3035a;
        aVar.f3036b += aVar2.f3036b;
        aVar.c += aVar2.c;
        aVar.d += aVar2.d;
        aVar.e += aVar2.e;
        aVar.f += aVar2.f;
        aVar.g += aVar2.g;
        aVar.h += aVar2.h;
        aVar.i += aVar2.i;
    }

    private void b(String str) {
        if (str != null && str.indexOf("du://") >= 0) {
            str = str.substring("du://".length());
        }
        if (aw.a((CharSequence) str)) {
            str = ah;
        }
        this.f668b = str;
        this.an = new File(this.f668b);
        if (this.al != 0) {
            return;
        }
        if (this.z != null) {
            this.z.a("du://" + this.an.getAbsolutePath(), false);
        }
        o();
        this.aB = true;
        this.aC.clear();
        this.av = 0L;
        this.aw = 0L;
        this.ax = 0L;
        this.ay = 0L;
        this.az = 0L;
        this.aA = 0L;
        if (this.aq.get(this.f668b) == null) {
            this.ao = new b(this.ad);
            this.ao.a(this.f667a);
            this.ao.a(this.as);
            this.ao.b(this.aF);
            this.aq.put(this.f668b, this.ao);
            if (this.ar == null) {
                this.ar = p();
            } else {
                this.ar.a();
            }
            if (this.ar != null) {
                this.ar.a(this.at);
            }
            this.au = 0L;
        } else {
            this.ao = this.aq.get(str);
            this.ao.a(this.as);
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(boolean z) {
        long j;
        if (z) {
            long[] k = com.estrongs.fs.c.d.k(this.f668b);
            this.as = k[0] * k[2];
            this.at = (k[0] - k[1]) * k[2];
            this.aF = k[2];
            j = k[1] * k[2];
        } else {
            j = this.as - this.at;
        }
        TextView textView = (TextView) l(C0000R.id.diskusage_total_size);
        TextView textView2 = (TextView) l(C0000R.id.diskusage_used_size);
        TextView textView3 = (TextView) l(C0000R.id.diskusage_avail_size);
        textView.setText(com.estrongs.fs.c.d.c(this.as));
        textView2.setText(com.estrongs.fs.c.d.c(this.at));
        textView3.setText(com.estrongs.fs.c.d.c(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        Iterator<Map.Entry<String, com.estrongs.fs.c.a>> it = this.ap.i.entrySet().iterator();
        while (it.hasNext()) {
            com.estrongs.fs.c.a value = it.next().getValue();
            if (value != null) {
                this.av += value.d;
                this.aw += value.e;
                this.ax += value.f;
                this.ay += value.g;
                this.az += value.h;
                this.aA += value.i;
            }
        }
    }

    private void o() {
        k(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public az p() {
        try {
            az azVar = new az(this.ad);
            azVar.a(new bb());
            azVar.setTitle(m(C0000R.string.progress_analyzing));
            azVar.a(1);
            azVar.setCancelable(false);
            azVar.a(new k(this));
            azVar.setOnDismissListener(new l(this));
            return azVar;
        } catch (Exception e) {
            return null;
        }
    }

    private void q() {
        ((TextView) l(C0000R.id.info3)).setText(m(C0000R.string.category_file) + "/" + m(C0000R.string.category_folder));
        this.aG.setOnItemClickListener(new m(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.aE = new com.estrongs.android.ui.a.g(this.ad, this.ao);
        this.aG.setAdapter((ListAdapter) this.aE);
        c(false);
    }

    @Override // com.estrongs.android.view.an
    public void a(int i) {
    }

    @Override // com.estrongs.android.view.an
    public void a(View.OnTouchListener onTouchListener) {
        super.a(onTouchListener);
        this.aG.setOnTouchListener(onTouchListener);
    }

    @Override // com.estrongs.android.view.an
    public void a(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.aG.setOnItemLongClickListener(onItemLongClickListener);
    }

    @Override // com.estrongs.android.view.ar
    public void a(String str) {
        if (this.ac) {
            b(str);
        }
    }

    public void a(List<com.estrongs.fs.g> list) {
        aj.a((ESActivity) this.ad, list, new o(this, list), new p(this));
    }

    @Override // com.estrongs.android.view.an
    public void a(boolean z) {
        this.l = z;
        if (this.l) {
            e();
        } else {
            c(-2);
        }
        if (this.aE != null) {
            this.aE.a(z);
        }
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        super.a_();
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g b() {
        if (this.an != null) {
            return new q(this.an);
        }
        return null;
    }

    @Override // com.estrongs.android.view.an
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.estrongs.fs.g e(int i) {
        if (this.aE == null || i < 0 || i >= this.aE.getCount()) {
            return null;
        }
        return new q((File) this.aE.getItem(i));
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
        if (z) {
            this.ak = false;
            this.aq.remove(this.f668b);
            b(this.f668b);
        } else {
            this.ak = false;
            ao();
            new h(this, "DiskUsage-Counter", k()).start();
        }
    }

    @Override // com.estrongs.android.view.ar
    public String c() {
        return this.an != null ? "du://" + this.an.getAbsolutePath() : "du://" + this.f668b;
    }

    @Override // com.estrongs.android.view.an
    public void c(int i) {
        try {
            if (this.aE == null) {
                return;
            }
            int size = this.m.size();
            int count = this.aE.getCount();
            if (i == -1) {
                this.m.clear();
                this.n.clear();
                for (int i2 = 0; i2 < count; i2++) {
                    this.m.add(new q((File) this.aE.getItem(i2)));
                    this.n.add(Integer.valueOf(i2));
                }
            } else if (i == -2) {
                v();
            } else if (i == -4) {
                int[] z = z();
                if (z != null) {
                    this.m.clear();
                    this.n.clear();
                    for (int i3 = z[0]; i3 <= z[1]; i3++) {
                        this.m.add(new q((File) this.aE.getItem(i3)));
                        this.n.add(Integer.valueOf(i3));
                    }
                }
            } else if (i >= 0 && i < count) {
                q qVar = new q((File) this.aE.getItem(i));
                if (this.m.contains(qVar)) {
                    this.m.remove(qVar);
                    this.n.remove(Integer.valueOf(i));
                } else {
                    this.m.add(qVar);
                    this.n.add(Integer.valueOf(i));
                }
            }
            this.aE.a(this.n);
            e();
            if (this.i == null || size == this.m.size()) {
                return;
            }
            this.i.a(this.m);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public long[] c(boolean z) {
        long[] jArr = new long[z ? 8 : 7];
        int size = this.aC.size();
        if (!z && size != 0) {
            com.estrongs.fs.c.a peek = this.aC.peek();
            jArr[0] = peek.d;
            jArr[1] = peek.e;
            jArr[2] = peek.f;
            jArr[3] = peek.h;
            jArr[4] = peek.g;
            jArr[5] = peek.i;
            jArr[6] = peek.f3035a;
            return jArr;
        }
        jArr[0] = this.av;
        jArr[1] = this.aw;
        jArr[2] = this.ax;
        jArr[3] = this.az;
        jArr[4] = this.ay;
        jArr[5] = this.aA;
        if (z) {
            jArr[6] = this.as - this.at;
            jArr[7] = this.as;
        } else {
            jArr[6] = 0;
            for (int i = 0; i < 6; i++) {
                jArr[6] = jArr[6] + jArr[i];
            }
        }
        return jArr;
    }

    @Override // com.estrongs.android.view.an
    public int d() {
        if (this.aE == null) {
            return 0;
        }
        return this.aE.getCount();
    }

    public void d(int i) {
        this.ao.a(i);
        this.aH.sendEmptyMessage(3);
    }

    @Override // com.estrongs.android.view.an
    public void e() {
        if (this.aE != null) {
            this.aE.notifyDataSetChanged();
        }
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g f() {
        if (!aq()) {
            return j();
        }
        ar();
        return b();
    }

    @Override // com.estrongs.android.view.ar
    public void g() {
        b(false);
    }

    @Override // com.estrongs.android.view.an
    public List<com.estrongs.fs.g> h() {
        File[] c2 = this.ao.c();
        ArrayList arrayList = new ArrayList();
        for (File file : c2) {
            arrayList.add(new q(file));
        }
        return arrayList;
    }

    @Override // com.estrongs.android.view.ar
    protected void i() {
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g j() {
        try {
            if (this.al == 0 && !this.f668b.equals(this.am.getPath())) {
                this.aj = true;
                this.an = this.am.getParentFile();
                if (this.z != null) {
                    this.z.a("du://" + this.an.getAbsolutePath(), false);
                }
                com.estrongs.fs.c.a aVar = this.aC.size() > 1 ? this.aC.get(this.aC.size() - 2) : null;
                this.au = 0L;
                if (this.ar == null) {
                    this.ar = p();
                }
                if (this.ar != null) {
                    this.ar.a();
                    this.ar.a(aVar == null ? this.at : aVar.b());
                    this.ar.setMessage(m(C0000R.string.msg_counting_file_size));
                    this.ar.b(this.au);
                }
                g();
                return new q(this.an);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    protected List<String> k() {
        List<String> a2 = ak.a();
        if (a2.remove(com.estrongs.android.pop.b.b()) && "mounted".equals(Environment.getExternalStorageState())) {
            a2.add(0, ah);
        }
        return a2;
    }

    @Override // com.estrongs.android.view.ar
    public void l() {
        if (!this.ac) {
            this.ac = true;
            a(c());
        }
        super.l();
    }
}
