package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.res.Resources;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class gi extends ag implements TextWatcher, View.OnClickListener, AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    private final com.estrongs.android.f.j f1854a;

    /* renamed from: b, reason: collision with root package name */
    private View f1855b;
    private int c;
    private TextView d;
    private com.estrongs.android.f.h e;
    private Button f;
    private com.estrongs.android.ui.theme.al g;

    public gi(Context context, com.estrongs.android.f.h hVar, com.estrongs.android.f.j jVar) {
        super(context);
        this.f = null;
        this.g = com.estrongs.android.ui.theme.al.a(this.mContext);
        this.e = hVar;
        this.f1854a = jVar;
        this.c = jVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WifiConfiguration a() {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = com.estrongs.android.f.j.a(this.f1854a.a());
        switch (this.c) {
            case 0:
                wifiConfiguration.allowedKeyManagement.set(0);
                return wifiConfiguration;
            case 1:
            default:
                return null;
            case 2:
                wifiConfiguration.allowedKeyManagement.set(1);
                if (this.d.length() == 0) {
                    return wifiConfiguration;
                }
                String obj = this.d.getText().toString();
                if (obj.matches("[0-9A-Fa-f]{64}")) {
                    wifiConfiguration.preSharedKey = obj;
                    return wifiConfiguration;
                }
                wifiConfiguration.preSharedKey = '\"' + obj + '\"';
                return wifiConfiguration;
        }
    }

    private void a(ViewGroup viewGroup, int i, String str) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.wifi_dialog_row, viewGroup, false);
        ((TextView) inflate.findViewById(C0000R.id.name)).setText(i);
        ((TextView) inflate.findViewById(C0000R.id.value)).setText(str);
        viewGroup.addView(inflate);
    }

    private void b() {
        if (this.c != 2 || this.d.length() >= 8) {
            this.f.setEnabled(true);
        } else {
            this.f.setEnabled(false);
        }
    }

    private void c() {
        if (this.c == 0) {
            this.f1855b.findViewById(C0000R.id.fields).setVisibility(8);
            return;
        }
        this.f1855b.findViewById(C0000R.id.fields).setVisibility(0);
        if (this.d == null) {
            this.d = (TextView) this.f1855b.findViewById(C0000R.id.password);
            this.d.addTextChangedListener(this);
            ((CheckBox) this.f1855b.findViewById(C0000R.id.show_password)).setOnClickListener(this);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        b();
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.d.setInputType((((CheckBox) view).isChecked() ? 144 : 128) | 1);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        this.f1855b = com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.wifi_dialog, (ViewGroup) null);
        setContentView(this.f1855b);
        Context context = getContext();
        Resources resources = context.getResources();
        setTitle(com.estrongs.android.f.h.a(this.f1854a.a()));
        ViewGroup viewGroup = (ViewGroup) this.f1855b.findViewById(C0000R.id.info);
        NetworkInfo.DetailedState d = this.f1854a.d();
        if (d != null) {
            a(viewGroup, C0000R.string.wifi_status, com.estrongs.android.f.m.a(getContext(), d));
        }
        a(viewGroup, C0000R.string.wifi_security_level, resources.getStringArray(C0000R.array.wifi_security)[this.f1854a.c()]);
        int e = this.f1854a.e();
        if (e != -1) {
            a(viewGroup, C0000R.string.wifi_signal_strength, resources.getStringArray(C0000R.array.wifi_signal)[e]);
        }
        WifiInfo f = this.f1854a.f();
        if (f != null) {
            a(viewGroup, C0000R.string.wifi_speed, f.getLinkSpeed() + "Mbps");
            int ipAddress = f.getIpAddress();
            if (ipAddress != 0) {
                a(viewGroup, C0000R.string.wifi_ip_address, Formatter.formatIpAddress(ipAddress));
            }
        }
        if (d != NetworkInfo.DetailedState.CONNECTED && e != -1) {
            c();
            this.f = setConfirmButton(context.getString(C0000R.string.action_connect), new gj(this));
        }
        gk gkVar = new gk(this);
        if (this.f == null) {
            setSingleButton(context.getString(C0000R.string.confirm_cancel), gkVar);
        } else {
            setCancelButton(context.getString(C0000R.string.confirm_cancel), gkVar);
        }
        super.onCreate(bundle);
        if (this.f != null) {
            b();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        this.c = i;
        c();
        b();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
