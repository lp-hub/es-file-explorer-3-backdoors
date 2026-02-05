package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bz extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1363a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bz(FileExplorerActivity fileExplorerActivity) {
        this.f1363a = fileExplorerActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action) || "android.intent.action.PACKAGE_CHANGED".equals(action) || "android.intent.action.PACKAGE_REPLACED".equals(action)) {
            try {
                this.f1363a.J();
                if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REPLACED".equals(action)) {
                    this.f1363a.M().a(context, intent);
                    this.f1363a.M().b(context, intent);
                } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                    this.f1363a.M().c(context, intent);
                }
                com.estrongs.android.util.ag.a(this.f1363a.getPackageManager(), true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        try {
            if (!"android.intent.action.PACKAGE_REMOVED".equals(action) || intent.getData().toString().indexOf("com.estrongs.android.pop.classic") < 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            if (!com.estrongs.android.pop.utils.y.a("com.estrongs.android.pop.classic")) {
                arrayList.add(new com.estrongs.fs.impl.local.b(new File(com.estrongs.android.util.ak.f() + "com.estrongs.android.pop.classic/background.dat")));
                arrayList.add(new com.estrongs.fs.impl.local.b(new File(com.estrongs.android.util.ak.f() + "com.estrongs.android.pop.classic/configuration.dat")));
            }
            File[] listFiles = new File(com.estrongs.android.util.ak.f() + "com.estrongs.android.pop.classic").listFiles(new ca(this));
            if (listFiles != null) {
                for (File file : listFiles) {
                    arrayList.add(new com.estrongs.fs.impl.local.b(file));
                }
            }
            new com.estrongs.fs.b.o(com.estrongs.fs.d.a(), (List<com.estrongs.fs.g>) arrayList, false).execute();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
