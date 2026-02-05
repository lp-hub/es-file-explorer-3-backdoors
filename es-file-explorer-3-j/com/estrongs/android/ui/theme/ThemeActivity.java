package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.a.ci;
import com.estrongs.android.ui.e.gq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class ThemeActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private al f2509a;

    /* renamed from: b, reason: collision with root package name */
    private ListView f2510b;
    private ci c;
    private Handler d;
    private String e;
    private String f;
    private gq g;
    private boolean h;
    private LinearLayout i;
    private BroadcastReceiver j;
    private Map<String, s> k;

    private void a() {
        ((LinearLayout) findViewById(C0000R.id.theme_return_container)).setOnClickListener(new m(this));
        ((TextView) findViewById(C0000R.id.theme_title)).setText(C0000R.string.menu_theme);
        if (getResources().getConfiguration().orientation == 1) {
        }
        this.g = new gq(this, true);
        this.g.a(C0000R.string.action_uninstall, C0000R.drawable.toolbar_edit_delete, new n(this));
        ((LinearLayout) findViewById(C0000R.id.container_bottom)).addView(this.g.a(), new LinearLayout.LayoutParams(-1, -1));
    }

    private void b() {
        this.f2510b = (ListView) findViewById(C0000R.id.theme_list);
        g();
        this.d = new o(this);
        this.c = new ci(this, this.d);
        f();
        this.f2510b.setAdapter((ListAdapter) this.c);
    }

    private void c() {
        List<ai> a2 = ai.a(com.estrongs.android.util.ak.a(this) + "themeInfo.dat");
        this.e = ai.f2527a;
        if (a2 == null) {
            a2 = new ArrayList<>();
        }
        ai aiVar = new ai();
        aiVar.c = getResources().getString(C0000R.string.theme_default);
        aiVar.f2528b = getPackageName();
        aiVar.g = 0;
        aiVar.e();
        a2.add(0, aiVar);
        this.f2509a.a(a2);
    }

    private void d() {
        String locale = Locale.getDefault().toString();
        int indexOf = locale.indexOf(95);
        if (indexOf > 0) {
            locale = locale.substring(0, indexOf);
        }
        if (com.estrongs.android.pop.esclasses.c.f1130a != null) {
            locale = (com.estrongs.android.pop.esclasses.c.f1130a.equalsIgnoreCase("CN") || com.estrongs.android.pop.esclasses.c.f1130a.equalsIgnoreCase("TW")) ? "zh" : "en";
        }
        String str = ("http://update.estrongs.com/theme?l=" + locale) + "&v=" + ai.f2527a;
        String str2 = com.estrongs.android.util.ak.a(this) + "themeInfo.dat";
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(str);
        p pVar = new p(this, str2);
        xVar.a(str2 + ".tmp");
        xVar.a((com.estrongs.android.util.aa) pVar);
        xVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        List a2 = ai.a(com.estrongs.android.util.ak.a(this) + "themeInfo.dat");
        String str = ai.f2527a;
        if (str == null || str.equals(this.e)) {
            return;
        }
        ai.f2527a = str;
        ai aiVar = new ai();
        aiVar.c = getResources().getString(C0000R.string.theme_default);
        aiVar.f2528b = getPackageName();
        if (a2 == null) {
            a2 = new ArrayList();
        }
        a2.add(0, aiVar);
        this.d.sendMessage(Message.obtain(this.d, 13, a2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.c.a(this.f2509a.e());
    }

    private void g() {
        this.i = (LinearLayout) findViewById(C0000R.id.header);
        int a2 = com.estrongs.android.ui.d.a.a(this, 8.0f);
        this.i.setPadding(a2 * 2, a2, a2 * 2, a2);
        this.i.setOnTouchListener(new q(this, a2));
        this.i.setOnClickListener(new r(this));
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 268439588 && i2 == -1) {
            setResult(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2509a = al.a(this);
        this.f = this.f2509a.d();
        setContentView(com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.theme_activity, (ViewGroup) null));
        setResult(0);
        a();
        c();
        this.h = com.estrongs.android.util.ai.b(this) || com.estrongs.android.util.ai.c(this);
        b();
        if (this.h) {
            d();
        }
        this.j = new l(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        registerReceiver(this.j, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.j);
        try {
            if (this.k != null) {
                Iterator<s> it = this.k.values().iterator();
                while (it.hasNext()) {
                    unregisterReceiver(it.next());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.h = com.estrongs.android.util.ai.b(this) || com.estrongs.android.util.ai.c(this);
        this.i.setVisibility(this.h ? 8 : 0);
        if (this.f2509a.d(this.f2509a.d()) == null) {
            this.c.a(0);
            setResult(-1);
        }
        this.c.notifyDataSetChanged();
    }
}
