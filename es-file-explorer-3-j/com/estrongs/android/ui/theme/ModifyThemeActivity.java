package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.e.gq;

/* loaded from: classes.dex */
public class ModifyThemeActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private al f2507a;

    /* renamed from: b, reason: collision with root package name */
    private int f2508b;
    private gq c;
    private com.estrongs.android.widget.g d = null;

    private void a() {
        ((LinearLayout) findViewById(C0000R.id.theme_return_container)).setOnClickListener(new a(this));
        ((TextView) findViewById(C0000R.id.theme_title)).setText(C0000R.string.theme_modify);
        if (getResources().getConfiguration().orientation == 1) {
        }
        this.c = new gq(this, true);
        this.c.a(C0000R.string.theme_recover, C0000R.drawable.toolbar_setting, new b(this));
        ((LinearLayout) findViewById(C0000R.id.container_bottom)).addView(this.c.a(), new LinearLayout.LayoutParams(-1, -1));
    }

    private void b() {
        TextView textView = (TextView) findViewById(C0000R.id.theme_modify_bg_color);
        textView.setText(C0000R.string.theme_bg_color);
        textView.setCompoundDrawables(null, null, this.f2507a.c(C0000R.drawable.theme_setting), null);
        textView.setOnClickListener(new e(this));
        TextView textView2 = (TextView) findViewById(C0000R.id.theme_modify_bg_image);
        textView2.setText(C0000R.string.theme_bg_image);
        textView2.setCompoundDrawables(null, null, this.f2507a.c(C0000R.drawable.theme_setting), null);
        textView2.setOnClickListener(new f(this));
        TextView textView3 = (TextView) findViewById(C0000R.id.theme_modify_text_color);
        textView3.setText(C0000R.string.theme_text_color);
        textView3.setCompoundDrawables(null, null, this.f2507a.c(C0000R.drawable.theme_setting), null);
        textView3.setOnClickListener(new j(this));
        TextView textView4 = (TextView) findViewById(C0000R.id.theme_modify_folder_appearance);
        textView4.setText(C0000R.string.theme_folder);
        textView4.setCompoundDrawables(null, null, this.f2507a.c(C0000R.drawable.theme_setting), null);
        textView4.setOnClickListener(new k(this));
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 268439577 && i2 == -1) {
            if (this.f2508b == this.f2507a.e()) {
                setResult(-1);
            }
            if (this.d == null || !this.d.g()) {
                return;
            }
            this.d.i();
            return;
        }
        if (i == 268439586 && i2 == -1) {
            setResult(-1);
        } else if (i == 268439587 && i2 == -1) {
            setResult(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.theme_modify);
        int intExtra = getIntent().getIntExtra("theme_data_index", -1);
        if (intExtra == -1) {
            finish();
            return;
        }
        this.f2508b = intExtra;
        this.f2507a = al.a(this);
        a();
        b();
    }
}
