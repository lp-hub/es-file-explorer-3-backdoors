package com.estrongs.android.view;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ck extends ar {

    /* renamed from: a, reason: collision with root package name */
    boolean f2814a;
    private ImageView ac;
    private TextView ah;
    private EditText ai;
    private TextView aj;
    private Button ak;
    private TextView al;
    private WifiManager am;
    private IntentFilter an;
    private IntentFilter ao;
    private BroadcastReceiver ap;
    private BroadcastReceiver aq;
    private boolean ar;
    private boolean as;

    /* renamed from: b, reason: collision with root package name */
    private View f2815b;
    private com.estrongs.android.ui.theme.al c;

    public ck(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar);
        this.ar = false;
        this.as = false;
        this.f2814a = false;
    }

    private void a(NetworkInfo.DetailedState detailedState) {
        if (detailedState == NetworkInfo.DetailedState.DISCONNECTED) {
            if (!this.as) {
                c(false);
                o();
            }
            this.ar = false;
            return;
        }
        if (detailedState == NetworkInfo.DetailedState.CONNECTED) {
            b(p());
            n();
            this.ar = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        this.al.setText(str);
        this.ac.setImageDrawable(this.c.a(C0000R.drawable.remote_icon_wifion));
        this.ak.setTextColor(-16777216);
        this.ak.setEnabled(true);
        this.ak.setText(C0000R.string.ftp_server_stop);
        this.aj.setText(m(C0000R.string.ftp_server_input_hint));
        this.ai.setText(str2);
        this.ai.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        try {
            int i2 = this.am.getClass().getField("WIFI_AP_STATE_ENABLED").getInt(this.am);
            int i3 = this.am.getClass().getField("WIFI_AP_STATE_DISABLED").getInt(this.am);
            if (i == i2) {
                b(m(C0000R.string.local_access_point_enabled));
                n();
                this.as = true;
            } else if (i == i3) {
                if (!this.f2814a) {
                    c(false);
                    o();
                }
                this.as = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Intent intent) {
        String action = intent.getAction();
        if ("android.net.wifi.supplicant.STATE_CHANGE".equals(action)) {
            a(WifiInfo.getDetailedStateOf((SupplicantState) intent.getParcelableExtra("newState")));
        } else if ("android.net.wifi.STATE_CHANGE".equals(action)) {
            a(((NetworkInfo) intent.getParcelableExtra("networkInfo")).getDetailedState());
        } else if ("android.net.wifi.RSSI_CHANGED".equals(action)) {
            a((NetworkInfo.DetailedState) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        this.f2814a = true;
        this.al.setText(str);
        this.ac.setImageDrawable(this.c.a(C0000R.drawable.remote_icon_wifion));
        this.ak.setTextColor(-16777216);
        this.ak.setEnabled(true);
        this.ak.setText(C0000R.string.ftp_server_start);
        this.aj.setText(C0000R.string.ftp_server_hint);
        this.ai.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        if (!z) {
            a(this.ad);
            return;
        }
        com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.ad);
        String S = a2.S();
        String T = a2.T();
        String U = a2.U();
        int V = a2.V();
        try {
            com.estrongs.android.ftp.k a3 = com.estrongs.android.ftp.k.a();
            a3.a(this.ad, new cp(this, a3, T, S, V, U));
        } catch (Exception e) {
        }
    }

    private void n() {
        try {
            com.estrongs.android.ftp.k a2 = com.estrongs.android.ftp.k.a();
            a2.a(this.ad, new co(this, a2));
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f2814a = false;
        this.al.setText(C0000R.string.ftp_server_no_connection);
        this.ac.setImageDrawable(this.c.a(C0000R.drawable.remote_icon_wifioff));
        this.ak.setEnabled(true);
        this.ak.setText(C0000R.string.ftp_server_start_wifi);
        this.aj.setText(C0000R.string.ftp_server_hint);
        this.ai.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String p() {
        if (this.am == null) {
            this.am = (WifiManager) this.ad.getSystemService("wifi");
        }
        WifiInfo connectionInfo = this.am.getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getSSID() : m(C0000R.string.ssid_unknown);
    }

    public void a(Context context) {
        if (context == null) {
            Log.e("ESFtpServer", "Failed to closeFtpServer - context is null.");
        }
        try {
            com.estrongs.android.ftp.k a2 = com.estrongs.android.ftp.k.a();
            if (a2.g()) {
                a2.c();
                if (this.as) {
                    b(m(C0000R.string.local_access_point_enabled));
                } else {
                    b(p());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        super.a_();
        this.ad.unregisterReceiver(this.ap);
        try {
            this.ad.unregisterReceiver(this.aq);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
    }

    @Override // com.estrongs.android.view.ar
    protected void i() {
        this.c = com.estrongs.android.ui.theme.al.a(this.ad);
        this.g.setVisibility(8);
        this.f2815b = com.estrongs.android.pop.esclasses.e.a(this.ad).inflate(C0000R.layout.ftp_server, (ViewGroup) null);
        ViewGroup viewGroup = (ViewGroup) this.g.getParent();
        viewGroup.addView(this.f2815b, new ViewGroup.LayoutParams(-1, -1));
        viewGroup.removeView(this.g);
        this.ac = (ImageView) this.f2815b.findViewById(C0000R.id.image);
        this.ac.setImageDrawable(this.c.a(C0000R.drawable.remote_icon_wifioff));
        this.ah = (TextView) this.f2815b.findViewById(C0000R.id.statues);
        this.ah.setTextColor(this.c.h());
        this.al = (TextView) this.f2815b.findViewById(C0000R.id.ssid);
        this.al.setTextColor(this.c.h());
        this.aj = (TextView) this.f2815b.findViewById(C0000R.id.hint);
        this.aj.setTextColor(this.c.h());
        this.ak = (Button) this.f2815b.findViewById(C0000R.id.turn_on);
        this.ak.setOnClickListener(new cl(this));
        this.ai = (EditText) this.f2815b.findViewById(C0000R.id.address);
        this.ai.setVisibility(4);
        this.am = (WifiManager) this.ad.getSystemService("wifi");
        this.an = new IntentFilter();
        this.an.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        this.an.addAction("android.net.wifi.STATE_CHANGE");
        this.an.addAction("android.net.wifi.RSSI_CHANGED");
        this.ap = new cm(this);
        this.ad.registerReceiver(this.ap, this.an);
        try {
            this.aq = new cn(this);
            ConnectivityManager connectivityManager = (ConnectivityManager) this.ad.getSystemService("connectivity");
            String str = (String) this.am.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(this.am);
            String str2 = (String) connectivityManager.getClass().getField("ACTION_TETHER_STATE_CHANGED").get(connectivityManager);
            this.ao = new IntentFilter(str);
            this.ao.addAction(str2);
            this.ad.registerReceiver(this.aq, this.ao);
        } catch (Exception e) {
            e.printStackTrace();
        }
        n();
    }

    @Override // com.estrongs.android.view.ar
    public void l() {
        super.l();
        n();
    }
}
