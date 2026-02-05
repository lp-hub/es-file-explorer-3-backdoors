package com.estrongs.android.pop.bt;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.z;

/* loaded from: classes.dex */
public class OBEXFtpServerService extends Service {

    /* renamed from: a, reason: collision with root package name */
    private e f1096a;

    /* renamed from: b, reason: collision with root package name */
    private f f1097b;

    public synchronized void a() {
        if (this.f1096a != null && !this.f1096a.a()) {
            this.f1096a.b();
            this.f1096a = null;
        }
        if (this.f1097b != null && !this.f1097b.a()) {
            this.f1097b.b();
            this.f1097b = null;
        }
        if (this.f1096a == null) {
            this.f1096a = new e(this, new a(this));
            this.f1096a.start();
        }
        z.a(this, C0000R.string.obex_service_start_success, 1).show();
        System.out.println("*************************************************");
    }

    public synchronized void b() {
        if (this.f1096a != null) {
            this.f1096a.b();
            this.f1096a = null;
        }
        if (this.f1097b != null) {
            this.f1097b.b();
            this.f1097b = null;
        }
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        z.a(this, C0000R.string.obex_service_stop_success, 1).show();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            com.estrongs.android.pop.esclasses.c.a(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        if (FileExplorerActivity.E() != null) {
            a();
        } else {
            FexApplication.a().stopService(new Intent().setClassName(FexApplication.a(), OBEXFtpServerService.class.getName()));
            System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$");
        }
    }
}
