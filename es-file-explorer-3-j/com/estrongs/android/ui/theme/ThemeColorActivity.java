package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.ui.e.gq;
import com.estrongs.android.ui.view.ColorPickerView;
import java.util.List;

/* loaded from: classes.dex */
public class ThemeColorActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private al f2511a;

    /* renamed from: b, reason: collision with root package name */
    private int f2512b;
    private int c;
    private ai d;
    private Context e;
    private boolean f;
    private ColorPickerView g;

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i) {
        if (this.e == null) {
            this.e = this.d.a(this);
        }
        try {
            return this.e != null ? this.e.getResources().getColor(i) : this.f2511a.d(i);
        } catch (Exception e) {
            return this.f2511a.d(i);
        }
    }

    private void a() {
        ((LinearLayout) findViewById(C0000R.id.theme_return_container)).setOnClickListener(new t(this));
        Button button = (Button) findViewById(C0000R.id.theme_color_black);
        button.setText(C0000R.string.color_black);
        button.setOnClickListener(new u(this));
        Button button2 = (Button) findViewById(C0000R.id.theme_color_white);
        button2.setText(C0000R.string.color_white);
        button2.setOnClickListener(new v(this));
        Button button3 = (Button) findViewById(C0000R.id.theme_color_default);
        button3.setText(C0000R.string.action_default);
        button3.setOnClickListener(new w(this));
        TextView textView = (TextView) findViewById(C0000R.id.theme_title);
        if (this.f2512b == 1) {
            textView.setText(C0000R.string.theme_bg_color);
        } else if (this.f2512b == 2) {
            textView.setText(C0000R.string.theme_text_color);
        }
        gq gqVar = new gq(this, getResources().getConfiguration().orientation == 1);
        gqVar.a(C0000R.string.action_save, C0000R.drawable.toolbar_save, new x(this));
        ((LinearLayout) findViewById(C0000R.id.container_bottom)).addView(gqVar.a(), new LinearLayout.LayoutParams(-1, -1));
    }

    private void b() {
        this.g = (ColorPickerView) findViewById(C0000R.id.theme_color_picker);
        if (this.f2512b == 1) {
            int j = this.d.j();
            if (j != Integer.MIN_VALUE) {
                this.g.a(j);
            } else {
                this.g.a(a(C0000R.color.background_default));
            }
        } else if (this.f2512b == 2) {
            int i = this.d.i();
            if (i != Integer.MIN_VALUE) {
                this.g.a(i);
            } else {
                this.g.a(a(C0000R.color.main_content_text));
            }
        }
        this.g.a(new y(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        int a2 = this.g.a();
        if (this.f2512b == 1) {
            this.d.a(a2);
        } else if (this.f2512b == 2) {
            this.d.b(a2);
        }
        if (this.f && this.c == this.f2511a.e()) {
            setResult(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f) {
            new aq(this).a(C0000R.string.theme_change_title).b(C0000R.string.theme_apply_change).b(C0000R.string.confirm_ok, new aa(this)).c(C0000R.string.confirm_cancel, new z(this)).b();
        } else {
            finish();
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setContentView(C0000R.layout.theme_set_bg_color);
        a();
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2512b = getIntent().getIntExtra("set_what_color", -1);
        if (this.f2512b == -1) {
            finish();
        }
        int intExtra = getIntent().getIntExtra("theme_data_index", -1);
        if (intExtra == -1) {
            finish();
            return;
        }
        this.c = intExtra;
        this.f2511a = al.a(this);
        List<ai> f = this.f2511a.f();
        if (f == null) {
            finish();
            return;
        }
        this.d = f.get(this.c);
        this.f = false;
        setContentView(C0000R.layout.theme_set_bg_color);
        a();
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.e = null;
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
