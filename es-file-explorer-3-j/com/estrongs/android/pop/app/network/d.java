package com.estrongs.android.pop.app.network;

import android.net.wifi.WifiConfiguration;
import android.view.View;
import android.widget.LinearLayout;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.q;
import java.util.Random;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1069a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(EsNetworkActivity esNetworkActivity) {
        this.f1069a = esNetworkActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LinearLayout linearLayout;
        com.estrongs.android.f.a aVar;
        linearLayout = this.f1069a.e;
        if (linearLayout.isEnabled()) {
            boolean aj = q.a(this.f1069a).aj();
            String ah = q.a(this.f1069a).ah();
            String ai = q.a(this.f1069a).ai();
            Random random = new Random(System.currentTimeMillis());
            int nextInt = random.nextInt(10000);
            if (nextInt <= 999) {
                nextInt += LoginCallBack.REQUEST_LOGINPROTECT;
            }
            this.f1069a.f1064a = new WifiConfiguration();
            if (!aj || ah == null || ai == null) {
                this.f1069a.f1064a.SSID = com.estrongs.android.f.h.f300a + nextInt;
            } else {
                this.f1069a.f1064a.SSID = ah;
            }
            this.f1069a.f1064a.allowedKeyManagement.set(1);
            this.f1069a.f1064a.allowedAuthAlgorithms.set(0);
            int nextInt2 = random.nextInt(LoginCallBack.REQUEST_LOGINPROTECT);
            if (nextInt2 <= 99) {
                nextInt2 += 100;
            }
            if (!aj || ah == null || ai == null) {
                this.f1069a.f1064a.preSharedKey = "" + nextInt2 + "00000";
            } else {
                this.f1069a.f1064a.preSharedKey = ai;
            }
            aVar = this.f1069a.o;
            aVar.a(this.f1069a.f1064a);
        }
    }
}
