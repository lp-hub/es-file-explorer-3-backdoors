package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.view.MaxWidthLinearLayout;
import com.estrongs.android.ui.view.RecommendListView;
import java.util.Arrays;

/* loaded from: classes.dex */
public class OpenRecomm extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private TextView f362a;

    /* renamed from: b, reason: collision with root package name */
    private ListView f363b;
    private RecommendListView c;
    private ImageView d;
    private ImageView e;
    private LinearLayout f;
    private LinearLayout g;
    private CheckBox h;
    private com.estrongs.android.ui.theme.al t;
    private MaxWidthLinearLayout u;
    private boolean i = false;
    private String j = null;
    private String k = null;
    private Intent l = null;
    private boolean m = false;
    private int n = 0;
    private int o = 0;
    private long p = 2592000;
    private int q = 0;
    private int r = 0;
    private int s = 0;
    private Handler v = new cv(this);

    private void a() {
        this.f = (LinearLayout) findViewById(C0000R.id.open_recomm_layout);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        float f = displayMetrics.density;
        int height = defaultDisplay.getHeight() - ((int) ((25.0f * f) + 0.5f));
        defaultDisplay.getWidth();
        ViewGroup.LayoutParams layoutParams = this.f.getLayoutParams();
        if (this.q == 0) {
            int i = findViewById(C0000R.id.open_recomm_title_layout).getLayoutParams().height;
            int i2 = findViewById(C0000R.id.open_recomm_check_layout).getLayoutParams().height;
            int i3 = (int) ((60.0f * f) + 0.5f);
            int i4 = this.n > this.o ? this.n : this.o;
            View childAt = this.u.getChildAt(0);
            this.q = ((int) ((i4 * f) + 0.5f)) + i + i2 + (i4 * i3) + childAt.getPaddingTop() + childAt.getPaddingBottom();
            this.r = (int) ((28.0f * f) + 0.5f);
            this.s = (int) ((24.0f * f) + 0.5f);
        }
        if (height > this.q + this.r) {
            layoutParams.height = this.q;
        } else {
            layoutParams.height = height - this.r;
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a();
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(C0000R.drawable.blank);
        this.t = com.estrongs.android.ui.theme.al.a(this);
        this.u = (MaxWidthLinearLayout) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.open_recomm, (ViewGroup) null);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        boolean a2 = com.estrongs.android.pop.utils.ca.a(this);
        boolean z = getResources().getConfiguration().orientation == 1;
        if (com.estrongs.android.pop.p.a() >= 14) {
            if (!a2 && !z) {
                this.u.a(getResources().getDisplayMetrics().heightPixels);
            } else if (a2) {
                this.u.a(getResources().getDisplayMetrics().widthPixels);
            } else {
                this.u.a(displayMetrics.widthPixels);
            }
        }
        setContentView(this.u);
        try {
            this.f362a = (TextView) findViewById(C0000R.id.open_recomm_title);
            this.g = (LinearLayout) findViewById(C0000R.id.open_recomm_title_right_layout);
            this.d = (ImageView) findViewById(C0000R.id.open_recomm_title_right_image);
            this.e = (ImageView) findViewById(C0000R.id.open_recomm_title_seprate);
            this.f363b = (ListView) findViewById(C0000R.id.open_recomm_open_list);
            this.c = (RecommendListView) findViewById(C0000R.id.open_recomm_recomm_list);
            this.c.a(true);
            this.h = (CheckBox) findViewById(C0000R.id.open_recomm_default_check);
            this.h.setOnCheckedChangeListener(new ct(this));
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                return;
            }
            this.k = extras.getString("filepath");
            this.l = AppRunner.c(this.k);
            if (this.l == null) {
                this.l = (Intent) getIntent().getParcelableExtra("intent");
            }
            this.j = this.l.getType();
            com.estrongs.android.pop.view.utils.t[] a3 = com.estrongs.android.pop.view.utils.n.a(this, this.l);
            this.m = false;
            if (a3 != null && a3.length > 0) {
                this.o = a3.length;
                Arrays.sort(a3, 0, a3.length, new cw(this));
                this.f363b.setAdapter((ListAdapter) new cx(this, this, C0000R.layout.openapp_item, a3));
                this.m = true;
            }
            if (com.estrongs.android.pop.view.utils.n.b().a((Context) this) / 1000 > this.p) {
                com.estrongs.android.pop.view.utils.n.b().a(true);
            }
            if (!this.m) {
                try {
                    com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.app_type_error), 1).show();
                } catch (Exception e) {
                }
                return;
            }
            if (a3.length == 1) {
                this.l.setClassName(a3[0].c, a3[0].d);
                startActivity(this.l);
            }
            this.f362a.setText(getString(C0000R.string.action_select));
            this.c.setVisibility(8);
            this.f363b.setOnItemClickListener(new cu(this));
            a();
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                if (this.l != null) {
                    startActivity(this.l);
                }
            } catch (Exception e3) {
            } finally {
                finish();
            }
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            com.estrongs.android.pop.view.utils.n.b().f();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
