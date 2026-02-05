package com.estrongs.android.pop.app.network;

import android.R;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.f.k;
import com.estrongs.android.f.n;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.q;
import com.estrongs.android.ui.b.gi;
import com.estrongs.android.ui.e.u;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.theme.am;
import com.estrongs.android.ui.view.az;
import com.estrongs.android.ui.view.z;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class EsNetworkActivity extends ESActivity implements com.estrongs.android.f.d, com.estrongs.android.f.g, k, n {

    /* renamed from: b, reason: collision with root package name */
    ArrayList<String> f1065b;
    private LayoutInflater c;
    private gi d;
    private LinearLayout e;
    private LinearLayout f;
    private Button g;
    private Button h;
    private Button i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private com.estrongs.android.f.h n;
    private com.estrongs.android.f.a o;
    private ImageView p;
    private ImageView q;
    private ListView r;
    private BaseAdapter s;
    private boolean v;
    private al w;
    private u x;
    private boolean y;

    /* renamed from: a, reason: collision with root package name */
    WifiConfiguration f1064a = null;
    private boolean t = false;
    private boolean u = false;

    /* JADX INFO: Access modifiers changed from: private */
    public View a(View view, i iVar) {
        View inflate = this.c.inflate(C0000R.layout.wifi_device_list_view_item, (ViewGroup) null);
        iVar.f1075b = (TextView) inflate.findViewById(C0000R.id.message);
        iVar.f1075b.setTextColor(this.w.h());
        iVar.c = (TextView) inflate.findViewById(C0000R.id.submessage);
        iVar.c.setTextColor(this.w.h());
        iVar.d = (ImageView) inflate.findViewById(C0000R.id.image);
        iVar.f1074a = (ImageView) inflate.findViewById(C0000R.id.icon);
        return inflate;
    }

    public static void a(ESActivity eSActivity, ArrayList<String> arrayList, boolean z) {
        Intent intent = new Intent();
        intent.setClass(eSActivity, EsNetworkActivity.class);
        intent.putExtra("play", z);
        intent.putStringArrayListExtra("files_selected", arrayList);
        eSActivity.startActivityForResult(intent, 1);
    }

    private void b() {
        View inflate = this.c.inflate(C0000R.layout.es_network, (ViewGroup) null);
        View inflate2 = this.c.inflate(C0000R.layout.ap_setting, (ViewGroup) null);
        setContentView(inflate);
        inflate.findViewById(C0000R.id.body_container).setBackgroundDrawable(this.w.g());
        this.p = (ImageView) inflate2.findViewById(C0000R.id.ap_icon);
        this.q = (ImageView) inflate2.findViewById(C0000R.id.wifi_icon);
        this.j = (TextView) inflate2.findViewById(C0000R.id.ap_setting_message);
        this.k = (TextView) inflate2.findViewById(C0000R.id.ap_setting_title);
        this.l = (TextView) inflate2.findViewById(C0000R.id.wifi_setting_message);
        this.m = (TextView) inflate2.findViewById(C0000R.id.wifi_setting_title);
        this.g = (Button) inflate2.findViewById(C0000R.id.disable_ap);
        this.g.setBackgroundDrawable(a(C0000R.drawable.remote_button, C0000R.drawable.remote_button_click));
        this.g.setOnClickListener(new a(this));
        this.h = (Button) inflate2.findViewById(C0000R.id.disable_wifi);
        this.h.setBackgroundDrawable(a(C0000R.drawable.remote_button, C0000R.drawable.remote_button_click));
        this.h.setOnClickListener(new b(this));
        this.i = (Button) inflate2.findViewById(C0000R.id.view_net_setting);
        this.i.setBackgroundDrawable(a(C0000R.drawable.remote_button, C0000R.drawable.remote_button_click));
        this.i.setOnClickListener(new c(this));
        this.e = (LinearLayout) inflate2.findViewById(C0000R.id.enable_ap);
        this.e.setOnClickListener(new d(this));
        this.f = (LinearLayout) inflate2.findViewById(C0000R.id.enable_wifi);
        this.f.setOnClickListener(new e(this));
        int i = Build.VERSION.SDK_INT;
        if (i < 9) {
            this.e.setVisibility(8);
        }
        this.r = (ListView) inflate.findViewById(C0000R.id.listview);
        this.r.addHeaderView(inflate2);
        this.s = new f(this);
        this.r.setAdapter((ListAdapter) this.s);
        this.r.setOnItemClickListener(new g(this));
        al.a(this);
        ((ImageButton) inflate.findViewById(C0000R.id.tool_return)).setOnClickListener(new h(this));
        this.y = getResources().getConfiguration().orientation == 1;
        this.x = new u(this, this.y);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(C0000R.id.toolbar_bottom);
        az azVar = new az(this, relativeLayout, 1);
        azVar.a("normal_mode", this.x);
        azVar.a("normal_mode", (Boolean) false);
        if (i < 9) {
            relativeLayout.setVisibility(8);
        }
    }

    public Drawable a(int i, int i2) {
        return this.w.a(new am[]{new am(new int[]{R.attr.state_focused, R.attr.state_pressed}, i2), new am(new int[]{R.attr.state_pressed}, i2), new am(new int[]{R.attr.state_focused}, i2), new am(new int[0], i)});
    }

    @Override // com.estrongs.android.f.k
    public void a() {
        this.s.notifyDataSetChanged();
    }

    @Override // com.estrongs.android.f.d
    public void a(int i) {
        if (i == 1 || i == 2) {
            this.e.setEnabled(false);
            this.f.setEnabled(false);
            this.k.setText(getString(C0000R.string.wifi_establishing_es_network));
            this.j.setText(C0000R.string.progress_turning_on);
            this.g.setVisibility(8);
            this.i.setVisibility(8);
            this.p.setImageResource(C0000R.drawable.esnet_04);
            return;
        }
        if (i != 3) {
            if (i == 4) {
                this.f1064a = null;
                this.e.setEnabled(false);
                this.f.setEnabled(false);
                this.j.setText(C0000R.string.progress_turning_off);
                this.k.setText(C0000R.string.wifi_canceling_es_network);
                this.g.setVisibility(8);
                this.i.setVisibility(8);
                this.p.setImageResource(C0000R.drawable.esnet_04);
                return;
            }
            if (i == 5) {
                this.f1064a = null;
                this.u = false;
                if (!this.t) {
                    this.e.setEnabled(true);
                    this.f.setEnabled(true);
                }
                this.g.setVisibility(8);
                this.i.setVisibility(8);
                this.k.setText(C0000R.string.es_net_create);
                this.j.setText(C0000R.string.es_net_create_message);
                this.p.setImageResource(C0000R.drawable.esnet_create);
                return;
            }
            return;
        }
        this.u = true;
        this.e.setEnabled(false);
        this.f.setEnabled(false);
        WifiConfiguration d = this.o.d();
        if (d != null) {
            if (this.f1064a != null && !this.f1064a.SSID.equals(d.SSID)) {
                d = this.f1064a;
            }
            if (d.SSID.startsWith(com.estrongs.android.f.h.f300a)) {
                this.k.setText(getString(C0000R.string.wifi_es_network_established_withid) + d.SSID);
                this.j.setText(getString(C0000R.string.wifi_es_network_passwd) + d.preSharedKey);
            } else if (q.a(this).aj()) {
                this.k.setText(getString(C0000R.string.wifi_using_other_ap) + " " + d.SSID);
                this.j.setText(getString(C0000R.string.wifi_other_ap_passwd) + d.preSharedKey);
            } else {
                this.k.setText(getString(C0000R.string.wifi_using_other_ap) + " " + d.SSID);
                this.j.setText(getString(C0000R.string.wifi_other_ap_passwd) + d.preSharedKey);
            }
        } else {
            if (q.a(this).aj()) {
                z.a(this, C0000R.string.wifi_no_permission_set_ap, 1).show();
            }
            this.k.setText(C0000R.string.wifi_no_permission_check_ap);
            this.j.setText("");
            this.i.setVisibility(0);
        }
        this.g.setVisibility(0);
        if (this.f1065b != null) {
            finish();
        }
        this.p.setImageResource(C0000R.drawable.esnet_04);
    }

    @Override // com.estrongs.android.f.n
    public void a(WifiInfo wifiInfo, NetworkInfo.DetailedState detailedState) {
        String a2 = com.estrongs.android.f.h.a(wifiInfo.getSSID());
        if (detailedState == NetworkInfo.DetailedState.CONNECTED) {
            if (wifiInfo != null && wifiInfo.getSSID() != null) {
                if (wifiInfo.getSSID().startsWith(com.estrongs.android.f.h.f300a)) {
                    this.m.setText(getString(C0000R.string.es_net_join_success_prefix) + a2);
                    this.l.setText(C0000R.string.wifi_interact_in_network);
                } else {
                    this.m.setText(getString(C0000R.string.wifi_joined_non_es_network) + " " + wifiInfo.getSSID());
                    this.l.setText(C0000R.string.wifi_interact_in_network);
                }
            }
            if (this.f1065b != null) {
                finish();
            }
        } else if (detailedState == NetworkInfo.DetailedState.CONNECTING) {
            this.l.setText(C0000R.string.wifi_waiting_joining_es_network);
        } else if (detailedState == NetworkInfo.DetailedState.DISCONNECTED) {
            this.m.setText(C0000R.string.wifi_join_es_network);
            this.l.setText(C0000R.string.wifi_waiting_joining_es_network);
        } else if (detailedState == NetworkInfo.DetailedState.OBTAINING_IPADDR) {
            this.l.setText(getString(C0000R.string.progress_getting_ip));
        } else if (detailedState == NetworkInfo.DetailedState.SCANNING) {
            this.l.setText(C0000R.string.wifi_waiting_joining_es_network);
        } else if (detailedState == NetworkInfo.DetailedState.AUTHENTICATING) {
            this.l.setText(getString(C0000R.string.progress_verifying));
        } else if (detailedState == NetworkInfo.DetailedState.FAILED) {
            this.l.setText(C0000R.string.wifi_waiting_joining_es_network);
        } else if (detailedState == NetworkInfo.DetailedState.IDLE) {
            this.l.setText(C0000R.string.wifi_waiting_joining_es_network);
        } else if (detailedState == NetworkInfo.DetailedState.DISCONNECTING) {
            this.l.setText(C0000R.string.wifi_waiting_joining_es_network);
        }
        if (detailedState == NetworkInfo.DetailedState.CONNECTED || detailedState != null) {
        }
    }

    @Override // com.estrongs.android.f.g
    public void b(int i) {
        if (i == 1 || i == 2) {
            this.f.setEnabled(false);
            this.e.setEnabled(false);
            this.m.setText(C0000R.string.wifi_start_to_join_es_network);
            this.l.setText(C0000R.string.wifi_starting_to_join_es_network);
            this.h.setVisibility(8);
            this.q.setImageResource(C0000R.drawable.esnet_join_blue);
            return;
        }
        if (i == 3) {
            this.t = true;
            this.f.setEnabled(false);
            this.e.setEnabled(false);
            this.m.setText(C0000R.string.wifi_join_es_network);
            this.l.setText(C0000R.string.wifi_select_join_es_network);
            this.h.setVisibility(0);
            this.q.setImageResource(C0000R.drawable.esnet_join_blue);
            return;
        }
        if (i == 4) {
            this.f.setEnabled(false);
            this.e.setEnabled(false);
            this.m.setText(C0000R.string.wifi_exit_es_network);
            this.l.setText(C0000R.string.wifi_exiting_es_network);
            this.h.setVisibility(8);
            this.q.setImageResource(C0000R.drawable.esnet_join_blue);
            return;
        }
        if (i == 5) {
            this.t = false;
            if (!this.u) {
                this.f.setEnabled(true);
                this.e.setEnabled(true);
            }
            this.m.setText(C0000R.string.wifi_join_es_network);
            this.l.setText(C0000R.string.wifi_join_other_es_network);
            this.h.setVisibility(8);
            this.q.setImageResource(C0000R.drawable.esnet_join);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (this.f1065b != null) {
            if (this.k.getText().toString().startsWith(getString(C0000R.string.wifi_es_network_established)) || this.m.getText().toString().startsWith(getString(C0000R.string.wifi_joined_es_network))) {
                LocalFileSharingActivity.a((ESActivity) this, this.f1065b, this.v);
            }
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.w = al.a(this);
        this.v = getIntent().getBooleanExtra("play", false);
        this.f1065b = getIntent().getStringArrayListExtra("files_selected");
        this.c = com.estrongs.android.pop.esclasses.e.a(this);
        try {
            this.n = new com.estrongs.android.f.h(this, this, this, this);
            this.n.a();
            this.o = new com.estrongs.android.f.a(this, this);
            this.o.a();
        } catch (Exception e) {
            if (this.f1065b != null) {
                LocalFileSharingActivity.a((ESActivity) this, this.f1065b, this.v);
            } else {
                z.a(this, C0000R.string.wifi_setup_error, 1).show();
            }
            super.finish();
        }
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.n.b();
        } catch (Exception e) {
        }
        try {
            this.o.b();
        } catch (Exception e2) {
        }
    }
}
