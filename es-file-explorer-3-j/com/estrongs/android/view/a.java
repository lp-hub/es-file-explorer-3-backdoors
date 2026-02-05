package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.TypedMap;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import java.text.MessageFormat;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a extends ar {

    /* renamed from: a, reason: collision with root package name */
    View f2720a;

    /* renamed from: b, reason: collision with root package name */
    TextView f2721b;
    Button c;

    public a(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.f2720a = null;
        this.f2721b = null;
        this.c = null;
        this.f2720a = l(C0000R.id.content_title);
        this.f2721b = (TextView) this.f2720a.findViewById(C0000R.id.app_update_info);
        this.c = (Button) l(C0000R.id.baidu_update);
        this.c.setOnClickListener(new b(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        return com.estrongs.android.pop.utils.y.a(this.ad.getPackageManager(), "com.baidu.appsearch") >= 16782394;
    }

    @Override // com.estrongs.android.view.an, com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.content_grid_app_update;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.b.t tVar, List<com.estrongs.fs.g> list) {
        long j;
        super.a(tVar, list);
        if (com.estrongs.android.util.ak.W(this.x.getPath())) {
            if (tVar.i) {
                f(C0000R.string.upgrade_net_error);
                this.f2720a.setVisibility(8);
                return;
            }
            if (this.B.size() == 0) {
                f(C0000R.string.app_update_notfound);
                this.f2720a.setVisibility(8);
                return;
            }
            this.f2720a.setVisibility(0);
            long j2 = 0;
            Iterator<com.estrongs.fs.g> it = this.B.iterator();
            while (true) {
                j = j2;
                if (!it.hasNext()) {
                    break;
                } else {
                    j2 = j + it.next().length();
                }
            }
            this.f2721b.setText(MessageFormat.format(this.ad.getString(C0000R.string.app_update_info), Integer.valueOf(this.B.size()), com.estrongs.fs.c.d.c(j)));
            this.f2720a.setVisibility(0);
            if (!(com.estrongs.android.pop.utils.y.a("com.baidu.appsearch") && n()) && com.estrongs.android.ui.h.a.a(this.ad).b() == null) {
                this.c.setVisibility(8);
            } else {
                this.c.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.view.ar
    public void a(com.estrongs.fs.g gVar, TypedMap typedMap) {
        if (!com.estrongs.android.util.ak.W(gVar.getPath())) {
            int b2 = com.estrongs.android.pop.view.utils.ac.b(this.ad, gVar.getPath());
            if (C() != b2) {
                a(b2);
            }
            this.f2720a.setVisibility(8);
        } else if (C() != 7) {
            a(7);
        }
        if (com.estrongs.android.pop.utils.bs.a()) {
            if (com.estrongs.android.util.ak.S(gVar.getPath()) || com.estrongs.android.util.ak.V(gVar.getPath()) || com.estrongs.android.util.ak.U(gVar.getPath()) || com.estrongs.android.util.ak.R(gVar.getPath())) {
                if (this.f.i() == PullToRefreshBase.Mode.DISABLED) {
                    this.f.a(PullToRefreshBase.Mode.PULL_FROM_START);
                    this.f.a(this.ad.getText(C0000R.string.pull_to_check_update_app));
                    this.f.c(this.ad.getText(C0000R.string.release_to_check_update_app));
                    this.f.b(this.ad.getText(C0000R.string.pull_to_recomend_entering));
                    this.f.a(new c(this));
                }
            } else if (this.f.i() != PullToRefreshBase.Mode.DISABLED) {
                this.f.a(PullToRefreshBase.Mode.DISABLED);
            }
        }
        super.a(gVar, typedMap);
    }
}
