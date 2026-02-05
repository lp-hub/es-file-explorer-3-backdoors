package com.estrongs.fs.b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class a extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.d f2958a;

    /* renamed from: b, reason: collision with root package name */
    protected PackageManager f2959b;
    public final List<com.estrongs.fs.impl.b.c> c;
    public final String d;
    protected boolean e = false;
    boolean f = false;
    private boolean g;

    public a(com.estrongs.fs.d dVar, PackageManager packageManager, List<com.estrongs.fs.impl.b.c> list, String str, boolean z) {
        this.f2958a = null;
        this.f2959b = null;
        this.g = false;
        this.f2958a = dVar;
        this.f2959b = packageManager;
        this.d = str;
        this.c = list;
        this.g = z;
        this.canRestart = false;
        this.task_type = 11;
        int size = list.size();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            sb.append(list.get(i).getName());
            if (i + 1 != size) {
                sb.append(" , ");
                if (i >= 4) {
                    sb.append("...");
                    break;
                }
            }
            i++;
        }
        this.processData.j = sb.toString();
        this.processData.p = false;
        this.processData.l = false;
        this.processData.m = false;
        this.processData.n = false;
        String str2 = "";
        int i2 = 0;
        while (i2 < 3 && i2 != size) {
            String str3 = str2 + list.get(i2).getName() + ",";
            i2++;
            str2 = str3;
        }
        recordSummary("title", str2.endsWith(",") ? str2.substring(0, str2.length() - 1) : str2);
        recordSummary("items_ori_count", Integer.valueOf(size));
        a();
    }

    private void a() {
        if (this.c == null || this.c.size() == 0) {
            return;
        }
        recordSummary("task_id", Long.valueOf(getTaskId()));
        if (this.startTime == -1) {
            this.startTime = System.currentTimeMillis();
        }
        recordSummary("start_time", Long.valueOf(this.startTime));
        recordSummary("task_type", Integer.valueOf(this.task_type));
        recordSummary("restartable", false);
        recordSummary("file_type", 65536);
        recordSummary("items_selected_count", Integer.valueOf(this.c.size()));
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        super.handleMessage(i, objArr);
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        try {
            if (this.c == null || this.c.size() == 0) {
                return false;
            }
            int size = this.c.size();
            this.processData.c = size;
            this.processData.e = size;
            onProgress(this.processData);
            for (int i = 0; i < size; i++) {
                if (taskStopped()) {
                    return false;
                }
                com.estrongs.fs.impl.b.c cVar = this.c.get(i);
                ApplicationInfo c = cVar.c();
                String a2 = com.estrongs.android.pop.utils.y.a(this.f2959b, c);
                String str = "_" + com.estrongs.fs.impl.b.d.b(this.f2959b, c);
                String str2 = a2 + str + ".apk";
                String str3 = c.packageName;
                this.processData.f196a = a2;
                onProgress(this.processData);
                if (!this.f2958a.b(cVar.getPath())) {
                    return false;
                }
                cVar.putExtra("item_paste_name", str2);
                i iVar = new i(this.f2958a, cVar, new com.estrongs.fs.impl.local.b(new File(this.d)));
                iVar.execute(false);
                if (iVar.getTaskResult().f229a != 0) {
                    return false;
                }
                cVar.a(3);
                try {
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (taskStopped()) {
                    return false;
                }
                String str4 = "/data/data/" + str3;
                String str5 = this.d + a2 + str + ".zip";
                if (this.g && this.f2958a.b(str4)) {
                    try {
                        if (this.f2958a.b(str5)) {
                            this.f2958a.a(this.f2958a.j(str5));
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    HashMap hashMap = new HashMap(2);
                    hashMap.put("compress_level", String.valueOf(0));
                    com.estrongs.io.archive.i iVar2 = new com.estrongs.io.archive.i(str5, null, hashMap);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str4);
                    iVar2.a(arrayList);
                }
                if (taskStopped()) {
                    return false;
                }
                this.processData.d = i + 1;
                this.processData.f = i + 1;
                onProgress(this.processData);
            }
            setTaskResult(0, null);
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            setTaskResult(10000, new com.estrongs.a.q(e3.toString(), e3));
            return false;
        }
    }
}
