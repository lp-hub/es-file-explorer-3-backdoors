package com.estrongs.android.ui.theme;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.ui.e.gq;
import java.util.List;

/* loaded from: classes.dex */
public class ThemeFolderActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private al f2513a;

    /* renamed from: b, reason: collision with root package name */
    private af f2514b;
    private boolean c;
    private final int d = 6;
    private int e;
    private Context f;
    private ai g;

    private void a() {
        ((LinearLayout) findViewById(C0000R.id.theme_return_container)).setOnClickListener(new ab(this));
        ((TextView) findViewById(C0000R.id.theme_title)).setText(C0000R.string.theme_folder);
        gq gqVar = new gq(this, getResources().getConfiguration().orientation == 1);
        gqVar.a(C0000R.string.action_save, C0000R.drawable.toolbar_save, new ac(this));
        ((LinearLayout) findViewById(C0000R.id.container_bottom)).addView(gqVar.a(), new LinearLayout.LayoutParams(-1, -1));
    }

    private void b() {
        ListView listView = (ListView) findViewById(C0000R.id.theme_folder_list);
        this.f2514b = new af(this, this);
        listView.setAdapter((ListAdapter) this.f2514b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int a2 = this.f2514b.a();
        if (this.e != this.f2513a.e()) {
            this.g.a(this, this.f2513a.e(a2), false);
        } else {
            this.f2513a.f(a2);
            if (this.c) {
                setResult(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.c) {
            new aq(this).a(C0000R.string.theme_change_title).b(C0000R.string.theme_apply_change).b(C0000R.string.confirm_ok, new ae(this)).c(C0000R.string.confirm_cancel, new ad(this)).b();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.theme_choose_folder);
        int intExtra = getIntent().getIntExtra("theme_data_index", -1);
        if (intExtra == -1) {
            finish();
            return;
        }
        this.e = intExtra;
        this.f2513a = al.a(this);
        List<ai> f = this.f2513a.f();
        if (f == null) {
            finish();
            return;
        }
        this.g = f.get(this.e);
        this.f = this.g.a(this);
        this.c = false;
        a();
        b();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        d();
        return true;
    }
}
