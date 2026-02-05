package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.AdapterView;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1887a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(w wVar) {
        this.f1887a = wVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        com.estrongs.android.ui.a.b bVar = (com.estrongs.android.ui.a.b) adapterView.getAdapter();
        String a2 = bVar.a(i);
        int b2 = bVar.b(i);
        String c = bVar.c(i);
        if (c.equals("baidu")) {
            if (FileExplorerActivity.E() != null) {
                FileExplorerActivity.E().O();
            }
        } else if (c.equals("box") || c.equals("skydrive") || c.equals("gdrive") || c.equals("dropbox") || c.equals("kuaipan") || c.equals("megacloud") || c.equals("kanbox") || c.equals("vdisk")) {
            context = this.f1887a.f1886b;
            Intent intent = new Intent(context, (Class<?>) CreateOAuthNetDisk.class);
            intent.putExtra("nettype", c);
            context2 = this.f1887a.f1886b;
            context2.startActivity(intent);
        } else if (c.equals("pcs")) {
            context5 = this.f1887a.f1886b;
            WifiManager wifiManager = (WifiManager) context5.getSystemService("wifi");
            context6 = this.f1887a.f1886b;
            String deviceId = wifiManager != null ? ((TelephonyManager) context6.getSystemService(BDAccountManager.KEY_PHONE)).getDeviceId() : null;
            Map map = (Map) com.estrongs.fs.impl.i.b.b(deviceId, "pcs");
            if (map != null) {
                if (map.get("force_reg_token") != null) {
                    map = (Map) com.estrongs.fs.impl.i.b.b(deviceId, (String) map.get("force_reg_token"), "pcs");
                }
                String str = map.get("bduss") + "\n" + map.get("device_token") + "\n" + map.get(BDAccountManager.KEY_UID) + "\n" + map.get("device_token");
                if (str != null) {
                    this.f1887a.a("pcs", "quikreg:" + com.estrongs.android.util.aw.c(str));
                }
            }
        } else {
            context3 = this.f1887a.f1886b;
            cf a3 = new cf(context3).a(b2, a2, c);
            context4 = this.f1887a.f1886b;
            a3.b(context4.getResources().getString(C0000R.string.new_net_disk_title)).a();
        }
        this.f1887a.f1885a.dismiss();
    }
}
