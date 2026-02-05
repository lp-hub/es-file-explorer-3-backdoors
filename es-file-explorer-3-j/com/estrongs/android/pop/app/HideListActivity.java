package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
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
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class HideListActivity extends ESActivity {
    private FrameLayout c;
    private bk h;
    private com.estrongs.android.pop.utils.af[] d = null;
    private ListView e = null;
    private com.estrongs.android.pop.utils.af f = null;
    private boolean g = false;

    /* renamed from: a, reason: collision with root package name */
    public View.OnClickListener f353a = new bg(this);

    /* renamed from: b, reason: collision with root package name */
    public View.OnClickListener f354b = new bh(this);

    private void a() {
        this.c.removeAllViews();
        this.c.addView(com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.gesture_manage_activity, (ViewGroup) null));
        ((TextView) findViewById(C0000R.id.title)).setText(C0000R.string.location_hidelist);
        ((TextView) findViewById(C0000R.id.label)).setText(C0000R.string.location_hidelist);
        findViewById(C0000R.id.float_label).setVisibility(8);
        ((FrameLayout) findViewById(C0000R.id.body_container)).setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(this).g());
        this.e = (ListView) findViewById(C0000R.id.listview);
        TextView textView = (TextView) findViewById(C0000R.id.empty);
        textView.setText(C0000R.string.hide_list_empty);
        this.e.setEmptyView(textView);
        this.d = com.estrongs.android.pop.utils.aa.c();
        if (this.d != null && this.d.length != 0) {
            this.h = new bk(this, this, C0000R.layout.hidelist_item, this.d);
            this.e.setAdapter((ListAdapter) this.h);
        }
        com.estrongs.android.ui.view.az azVar = new com.estrongs.android.ui.view.az(this, (RelativeLayout) findViewById(C0000R.id.toolbar_bottom), 1);
        com.estrongs.android.ui.e.gq gqVar = new com.estrongs.android.ui.e.gq(this, true);
        gqVar.a(C0000R.string.hide_list_restore_all, C0000R.drawable.toolbar_restore, new bi(this));
        azVar.a("menu", gqVar);
        azVar.a("menu", (Boolean) false);
        b();
    }

    private void b() {
        ((LinearLayout) ((ImageView) findViewById(C0000R.id.tool_return)).getParent()).setOnClickListener(new bj(this));
    }

    @Override // android.app.Activity
    public void finish() {
        FileExplorerActivity E;
        super.finish();
        if (!this.g || (E = FileExplorerActivity.E()) == null) {
            return;
        }
        E.g((String) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.main);
        this.c = (FrameLayout) findViewById(C0000R.id.container_body);
        findViewById(C0000R.id.es_guestrue_drawer).setVisibility(8);
        a();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        finish();
        return true;
    }
}
