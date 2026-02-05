package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class RecommItemDetailAcitivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private ProgressBar f375a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.theme.al f376b;
    private View c;
    private com.estrongs.android.pop.view.utils.v d;
    private hu e;
    private int f;
    private Handler h;
    private Gallery i;
    private boolean g = false;
    private View.OnClickListener j = new hs(this);
    private Handler k = new ht(this);

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        for (int i = 0; i < this.d.l.length; i++) {
            if (this.d.l[i] != null) {
                this.d.l[i].recycle();
                this.d.l[i] = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        LinearLayout linearLayout = (LinearLayout) findViewById(C0000R.id.recomm_item_desc_layout);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(C0000R.id.recomm_item_download_layout);
        TextView textView = (TextView) findViewById(C0000R.id.recomm_item_download_size);
        textView.setTextColor(this.f376b.h());
        TextView textView2 = (TextView) findViewById(C0000R.id.recomm_item_download_percent);
        textView2.setTextColor(this.f376b.h());
        ProgressBar progressBar = (ProgressBar) findViewById(C0000R.id.recomm_item_download_progress);
        Button button = (Button) findViewById(C0000R.id.recomm_item_install_stop);
        TextView textView3 = (TextView) findViewById(C0000R.id.recomm_item_name);
        textView3.setTextColor(this.f376b.h());
        linearLayout2.setVisibility(0);
        linearLayout.setVisibility(8);
        if (this.d.q == 1) {
            button.setText(getText(C0000R.string.action_stop));
            long j = this.d.t;
            long j2 = this.d.u;
            textView.setText(com.estrongs.fs.c.d.c(j2) + "/" + com.estrongs.fs.c.d.c(j));
            int i = j == 0 ? 0 : (int) ((j2 * 1000) / j);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(i);
            textView2.setText((i / 10) + "%");
            return;
        }
        if (this.d.q == 0) {
            textView.setText(getText(C0000R.string.progress_connecting));
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(0);
            textView2.setText("0%");
            if (this.d.v == 0) {
                this.d.v = com.estrongs.android.pop.view.utils.n.b().b(this.d);
            }
            if (this.d.v == 0 || this.d.v == 1) {
                if (this.d.e == null || !this.d.e.startsWith("market://")) {
                    button.setText(getText(C0000R.string.action_download));
                } else {
                    button.setText(getText(C0000R.string.recommend_button_market_download));
                }
                button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            } else if (this.d.v == 2) {
                button.setText(getText(C0000R.string.recommend_button_upgrade));
                button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            } else if (this.d.v == 3) {
                button.setText(getText(C0000R.string.recommend_button_installed));
                button.setBackgroundResource(C0000R.drawable.component_child_update_expanded_selector);
            }
            linearLayout2.setVisibility(8);
            linearLayout.setVisibility(0);
            textView3.setText(this.d.c);
            return;
        }
        if (this.d.q == 2) {
            textView.setText(getText(C0000R.string.recommend_button_download_fail));
            long j3 = this.d.t;
            int i2 = j3 == 0 ? 0 : (int) ((this.d.u * 1000) / j3);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(i2);
            textView2.setText((i2 / 10) + "%");
            button.setText(getText(C0000R.string.message_retry));
            button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            return;
        }
        if (this.d.q == 3) {
            String c = com.estrongs.fs.c.d.c(this.d.t);
            textView.setText(c + "/" + c);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(LoginCallBack.REQUEST_LOGINPROTECT);
            textView2.setText("100%");
            button.setText(getText(C0000R.string.button_install));
            button.setBackgroundResource(C0000R.drawable.component_child_download_expanded_selector);
            return;
        }
        if (this.d.q == 5) {
            textView.setText(getText(C0000R.string.progress_connecting));
            button.setText(getText(C0000R.string.action_stop));
            button.setBackgroundResource(C0000R.drawable.component_child_stop_expanded_selector);
        } else if (this.d.q == 4) {
            textView.setText(com.estrongs.fs.c.d.c(this.d.u) + "/" + com.estrongs.fs.c.d.c(this.d.t));
            int i3 = this.d.t == 0 ? 0 : (int) ((this.d.u * 1000) / this.d.t);
            progressBar.setMax(LoginCallBack.REQUEST_LOGINPROTECT);
            progressBar.setProgress(i3);
            textView2.setText((i3 / 10) + "%");
            button.setText(getText(C0000R.string.recommend_button_continue));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        Message message = new Message();
        message.arg1 = 123465;
        message.arg2 = i;
        this.k.sendMessage(message);
    }

    public void a(int i) {
        com.estrongs.android.pop.view.utils.n.b().a(this.d, 0);
        if (this.g) {
            return;
        }
        b();
    }

    public void a(Object obj) {
        if (this.g) {
            return;
        }
        if (this.d.k != null) {
            ((ImageView) findViewById(C0000R.id.recomm_item_icon)).setImageBitmap(this.d.k);
        }
    }

    public void b(Object obj) {
        if (this.g) {
            return;
        }
        b();
    }

    public void c(Object obj) {
        if (this.g) {
            return;
        }
        b();
    }

    public void d(Object obj) {
        if (this.g) {
            return;
        }
        b();
    }

    public void e(Object obj) {
        if (this.g) {
            return;
        }
        b();
        startActivity(b.a(com.estrongs.android.pop.view.utils.n.a(this.d.f)));
    }

    public void f(Object obj) {
        Integer num = (Integer) ((com.estrongs.android.util.x) obj).e;
        this.e.notifyDataSetChanged();
        if (com.estrongs.android.util.aw.a((Object[]) this.d.m, num.intValue())) {
            this.d.m[num.intValue()] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.f = getIntent().getIntExtra("position", -1);
        com.estrongs.android.pop.view.utils.v[] d = com.estrongs.android.pop.view.utils.n.b().d();
        if (d.length <= this.f) {
            finish();
            return;
        }
        this.d = d[this.f];
        setContentView(C0000R.layout.recomm_item_detail);
        this.f376b = com.estrongs.android.ui.theme.al.a(this);
        this.c = findViewById(C0000R.id.recomm_tools_top);
        ((ImageView) findViewById(C0000R.id.recomm_tool_return)).setOnClickListener(new hp(this));
        this.f375a = (ProgressBar) findViewById(C0000R.id.recomm_list_refresh_bk);
        this.i = (Gallery) findViewById(C0000R.id.gallery);
        this.e = new hu(this, this);
        this.i.setAdapter((SpinnerAdapter) this.e);
        this.i.setOnItemClickListener(new hq(this));
        TextView textView = (TextView) findViewById(C0000R.id.recomm_item_name);
        textView.setTextColor(this.f376b.h());
        ImageView imageView = (ImageView) findViewById(C0000R.id.recomm_item_icon);
        TextView textView2 = (TextView) findViewById(C0000R.id.recomm_item_version);
        textView2.setTextColor(this.f376b.h());
        TextView textView3 = (TextView) findViewById(C0000R.id.recomm_item_long_desc);
        textView3.setTextColor(this.f376b.h());
        TextView textView4 = (TextView) findViewById(C0000R.id.label_version);
        TextView textView5 = (TextView) findViewById(C0000R.id.label_size);
        TextView textView6 = (TextView) findViewById(C0000R.id.label_description);
        textView4.setTextColor(this.f376b.h());
        textView5.setTextColor(this.f376b.h());
        textView6.setTextColor(this.f376b.h());
        textView.setText(this.d.c);
        textView2.setText(this.d.i);
        textView5.setText(this.d.s);
        textView3.setText(this.d.h);
        Bitmap d2 = com.estrongs.android.pop.view.utils.n.b().d(this.d);
        if (d2 == null) {
            imageView.setImageResource(C0000R.drawable.format_apk);
        } else {
            imageView.setImageBitmap(d2);
        }
        TextView textView7 = (TextView) findViewById(C0000R.id.recomm_item_install_stop);
        textView7.setTextColor(this.f376b.h());
        textView7.setOnClickListener(this.j);
        this.h = com.estrongs.android.pop.view.utils.n.b().a(this.k);
        b();
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            a();
            this.i.setAdapter((SpinnerAdapter) new hr(this));
            com.estrongs.android.pop.view.utils.n.b().a(this.h);
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        try {
            super.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }
}
