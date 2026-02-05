package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.SimpleSwitchButton;

/* loaded from: classes.dex */
public class GestureManageActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private FrameLayout f349a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.a.o f350b;
    private com.estrongs.android.pop.q c;
    private TextView d;

    private void a() {
        this.f349a.removeAllViews();
        this.f349a.addView(com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.gesture_manage_activity, (ViewGroup) null));
        ((FrameLayout) findViewById(C0000R.id.body_container)).setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(this).g());
        ((TextView) findViewById(C0000R.id.float_label_text)).setText(C0000R.string.gesture_setting_enabled);
        ListView listView = (ListView) findViewById(C0000R.id.listview);
        this.f350b = new com.estrongs.android.ui.a.o(this);
        listView.setAdapter((ListAdapter) this.f350b);
        this.d = (TextView) findViewById(C0000R.id.empty);
        listView.setEmptyView(this.d);
        boolean al = this.c.al();
        if (al) {
            this.d.setText(C0000R.string.gesture_manage_empty);
        } else {
            this.d.setText(C0000R.string.gesture_disable_empty_text);
        }
        com.estrongs.android.ui.view.az azVar = new com.estrongs.android.ui.view.az(this, (RelativeLayout) findViewById(C0000R.id.toolbar_bottom), 1);
        com.estrongs.android.ui.e.gq gqVar = new com.estrongs.android.ui.e.gq(this, true);
        com.estrongs.android.view.a.a onMenuItemClickListener = new com.estrongs.android.view.a.a(com.estrongs.android.ui.theme.al.a(this).c(C0000R.drawable.toolbar_new), getString(C0000R.string.gesture_button_add)).setOnMenuItemClickListener(new az(this));
        gqVar.a(onMenuItemClickListener);
        onMenuItemClickListener.setEnabled(al);
        com.estrongs.android.view.a.a onMenuItemClickListener2 = new com.estrongs.android.view.a.a(com.estrongs.android.ui.theme.al.a(this).c(C0000R.drawable.toolbar_position), getString(C0000R.string.gesture_set_position)).setOnMenuItemClickListener(new bc(this));
        gqVar.a(onMenuItemClickListener2);
        onMenuItemClickListener2.setEnabled(al);
        azVar.a("add", gqVar);
        azVar.a("add", (Boolean) false);
        SimpleSwitchButton simpleSwitchButton = (SimpleSwitchButton) findViewById(C0000R.id.switchWidget);
        simpleSwitchButton.setOnCheckedChangeListener(new bd(this, onMenuItemClickListener, onMenuItemClickListener2));
        simpleSwitchButton.setChecked(al);
        this.f350b.a(al);
        b();
    }

    private void b() {
        ((LinearLayout) ((ImageView) findViewById(C0000R.id.tool_return)).getParent()).setOnClickListener(new be(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.main);
        this.f349a = (FrameLayout) findViewById(C0000R.id.container_body);
        findViewById(C0000R.id.es_guestrue_drawer).setVisibility(8);
        this.c = com.estrongs.android.pop.q.a(this);
        a();
    }
}
