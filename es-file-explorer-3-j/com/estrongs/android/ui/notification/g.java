package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.ak;
import com.estrongs.fs.b.at;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.o;
import com.estrongs.fs.b.q;
import com.estrongs.fs.b.y;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f2264a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f2265b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar, com.estrongs.a.a aVar) {
        this.f2265b = eVar;
        this.f2264a = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003a, code lost:
    
        if (com.estrongs.android.pop.q.a(r0).ab() == false) goto L20;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        c cVar;
        String str;
        Activity activity;
        Activity activity2;
        Activity activity3;
        c cVar2;
        Activity activity4;
        c cVar3;
        Activity activity5;
        Activity activity6;
        c cVar4;
        c cVar5;
        Activity activity7;
        Activity activity8;
        c cVar6;
        Activity activity9;
        Activity activity10;
        c cVar7;
        Activity activity11;
        Activity activity12;
        c cVar8;
        Activity activity13;
        Activity activity14;
        c cVar9;
        Activity activity15;
        Activity activity16;
        Activity activity17;
        Activity activity18;
        c cVar10;
        c cVar11;
        c cVar12;
        c cVar13;
        Map map;
        Map map2;
        Object obj;
        BroadcastReceiver broadcastReceiver;
        Activity activity19;
        c cVar14;
        c cVar15;
        c cVar16;
        BroadcastReceiver broadcastReceiver2;
        c cVar17;
        Activity activity20;
        Activity activity21;
        Activity activity22;
        Activity activity23;
        c cVar18;
        c cVar19;
        Activity activity24;
        Activity activity25;
        c cVar20;
        synchronized (this.f2265b) {
            cVar = this.f2265b.f2260a;
            if (cVar == null) {
                return;
            }
            if (!(this.f2264a instanceof q)) {
                if ((this.f2264a instanceof i) || (this.f2264a instanceof o) || (this.f2264a instanceof at) || (this.f2264a instanceof com.estrongs.fs.b.g)) {
                    activity25 = this.f2265b.f2261b;
                }
                cVar20 = this.f2265b.f2260a;
                cVar20.e();
            }
            String c = ak.c();
            String str2 = "";
            if (this.f2264a instanceof i) {
                if (((i) this.f2264a).c().size() == 1 && ((i) this.f2264a).c().get(0).getFileType().b()) {
                    String absolutePath = ((i) this.f2264a).n.getAbsolutePath();
                    if (!absolutePath.endsWith("/")) {
                        absolutePath = absolutePath + "/";
                    }
                    c = absolutePath + ((i) this.f2264a).c().get(0).getName();
                } else {
                    c = ((i) this.f2264a).n.getAbsolutePath();
                }
            }
            if (this.f2264a.getTaskResult().f229a == 10) {
                activity24 = this.f2265b.f2261b;
                str = activity24.getString(C0000R.string.copy_subdirectory);
            } else if (this.f2264a.getTaskResult().f229a == 11) {
                activity2 = this.f2265b.f2261b;
                str = activity2.getString(C0000R.string.move_subdirectory);
            } else if (this.f2264a.getTaskResult().f229a == 9) {
                activity = this.f2265b.f2261b;
                str = activity.getString(C0000R.string.no_enough_space);
            } else {
                str = null;
            }
            if (this.f2264a instanceof y) {
                StringBuilder sb = new StringBuilder();
                activity20 = this.f2265b.f2261b;
                StringBuilder append = sb.append(activity20.getString(C0000R.string.action_move)).append(" ");
                activity21 = this.f2265b.f2261b;
                String sb2 = append.append(activity21.getString(C0000R.string.task_failed_message)).toString();
                StringBuilder sb3 = new StringBuilder();
                activity22 = this.f2265b.f2261b;
                StringBuilder append2 = sb3.append(activity22.getString(C0000R.string.action_move_to)).append(" ").append(ak.bv(c)).append(" ");
                activity23 = this.f2265b.f2261b;
                String sb4 = append2.append(activity23.getString(C0000R.string.task_failed_message)).toString();
                cVar18 = this.f2265b.f2260a;
                cVar18.b(sb2);
                cVar19 = this.f2265b.f2260a;
                cVar19.c(sb4);
                str2 = sb2;
            } else if (this.f2264a instanceof i) {
                StringBuilder sb5 = new StringBuilder();
                activity15 = this.f2265b.f2261b;
                StringBuilder append3 = sb5.append(activity15.getString(C0000R.string.action_copy)).append(" ");
                activity16 = this.f2265b.f2261b;
                String sb6 = append3.append(activity16.getString(C0000R.string.task_failed_message)).toString();
                StringBuilder sb7 = new StringBuilder();
                activity17 = this.f2265b.f2261b;
                StringBuilder append4 = sb7.append(activity17.getString(C0000R.string.action_copy_to)).append(" ").append(ak.bv(c)).append(" ");
                activity18 = this.f2265b.f2261b;
                String sb8 = append4.append(activity18.getString(C0000R.string.task_failed_message)).toString();
                cVar10 = this.f2265b.f2260a;
                cVar10.b(sb6);
                cVar11 = this.f2265b.f2260a;
                cVar11.c(sb8);
                str2 = sb6;
            } else if (this.f2264a instanceof o) {
                if (((o) this.f2264a).a().size() == 1 && ((o) this.f2264a).a().get(0).getFileType().b()) {
                    ((o) this.f2264a).a().get(0).getName();
                } else {
                    String str3 = ((o) this.f2264a).a().get(0).getName() + "…";
                }
                String aY = ak.aY(((o) this.f2264a).a().get(0).getAbsolutePath());
                StringBuilder sb9 = new StringBuilder();
                activity11 = this.f2265b.f2261b;
                StringBuilder append5 = sb9.append(activity11.getString(C0000R.string.action_delete)).append(" ").append(ak.bv(aY)).append(" ");
                activity12 = this.f2265b.f2261b;
                String sb10 = append5.append(activity12.getString(C0000R.string.task_failed_message)).toString();
                cVar8 = this.f2265b.f2260a;
                StringBuilder sb11 = new StringBuilder();
                activity13 = this.f2265b.f2261b;
                StringBuilder append6 = sb11.append((Object) activity13.getText(C0000R.string.action_delete)).append(" ");
                activity14 = this.f2265b.f2261b;
                cVar8.b(append6.append((Object) activity14.getText(C0000R.string.task_failed_message)).toString());
                cVar9 = this.f2265b.f2260a;
                cVar9.c(sb10);
                c = aY;
            } else if (this.f2264a instanceof com.estrongs.fs.b.g) {
                c = ((com.estrongs.fs.b.g) this.f2264a).b();
                String str4 = ((com.estrongs.fs.b.g) this.f2264a).a().get(0).getName() + "…";
                StringBuilder sb12 = new StringBuilder();
                activity7 = this.f2265b.f2261b;
                StringBuilder append7 = sb12.append(activity7.getString(C0000R.string.batch_rename)).append(" ").append(str4).append(" ");
                activity8 = this.f2265b.f2261b;
                String sb13 = append7.append((Object) activity8.getText(C0000R.string.task_failed_message)).toString();
                cVar6 = this.f2265b.f2260a;
                StringBuilder sb14 = new StringBuilder();
                activity9 = this.f2265b.f2261b;
                StringBuilder append8 = sb14.append((Object) activity9.getText(C0000R.string.batch_rename)).append(" ");
                activity10 = this.f2265b.f2261b;
                cVar6.b(append8.append((Object) activity10.getText(C0000R.string.task_failed_message)).toString());
                cVar7 = this.f2265b.f2260a;
                cVar7.c(sb13);
            } else if (this.f2264a instanceof at) {
                String absolutePath2 = (((at) this.f2264a).c().size() == 1 && ((at) this.f2264a).c().get(0).getFileType().b()) ? ((at) this.f2264a).c().get(0).getAbsolutePath() : ak.aY(((at) this.f2264a).c().get(0).getAbsolutePath());
                StringBuilder sb15 = new StringBuilder();
                activity5 = this.f2265b.f2261b;
                StringBuilder append9 = sb15.append(activity5.getString(C0000R.string.notification_es_ftp_svr_transfer)).append(" ").append(ak.bv(absolutePath2)).append(" ");
                activity6 = this.f2265b.f2261b;
                String sb16 = append9.append(activity6.getString(C0000R.string.task_failed_message)).toString();
                cVar4 = this.f2265b.f2260a;
                cVar4.b(sb16);
                cVar5 = this.f2265b.f2260a;
                cVar5.c(sb16);
                c = absolutePath2;
            } else if (this.f2264a instanceof q) {
                String b2 = ((q) this.f2264a).b();
                StringBuilder sb17 = new StringBuilder();
                activity3 = this.f2265b.f2261b;
                String sb18 = sb17.append(activity3.getString(C0000R.string.task_destination)).append(ak.bv(b2)).toString();
                cVar2 = this.f2265b.f2260a;
                activity4 = this.f2265b.f2261b;
                cVar2.b(activity4.getText(C0000R.string.recommend_button_download_fail));
                cVar3 = this.f2265b.f2260a;
                cVar3.c(sb18);
                c = b2;
            }
            if (str != null) {
                cVar17 = this.f2265b.f2260a;
                cVar17.c(str);
            }
            if (this.f2264a instanceof i) {
                map = e.d;
                synchronized (map) {
                    map2 = e.d;
                    map2.put(Long.valueOf(this.f2264a.getTaskId()), (i) this.f2264a);
                }
                obj = e.f;
                synchronized (obj) {
                    broadcastReceiver = e.e;
                    if (broadcastReceiver == null) {
                        BroadcastReceiver unused = e.e = new h(this);
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("remove_task_action");
                        FexApplication a2 = FexApplication.a();
                        broadcastReceiver2 = e.e;
                        a2.registerReceiver(broadcastReceiver2, intentFilter);
                    }
                }
                activity19 = this.f2265b.f2261b;
                Intent intent = new Intent(activity19, (Class<?>) ShowDialogActivity.class);
                intent.setData(Uri.parse(c));
                intent.putExtra("task_id", this.f2264a.getTaskId());
                intent.putExtra("task_title", str2);
                intent.putExtra("resume_task", true);
                intent.putExtra("task_source_names", this.f2264a.processData.j);
                intent.putExtra("count_info", this.f2265b.a((i) this.f2264a));
                intent.putExtra("source", this.f2264a.summary().optString("source"));
                intent.putExtra("target", this.f2264a.summary().optString("target"));
                cVar14 = this.f2265b.f2260a;
                cVar14.b(true);
                cVar15 = this.f2265b.f2260a;
                cVar15.a(intent, true);
                Intent intent2 = new Intent();
                intent2.setAction("remove_task_action");
                intent2.putExtra("task_id", this.f2264a.getTaskId());
                cVar16 = this.f2265b.f2260a;
                cVar16.b(intent2, false);
            }
            cVar12 = this.f2265b.f2260a;
            cVar12.a(C0000R.drawable.notification_fail);
            cVar13 = this.f2265b.f2260a;
            cVar13.a();
        }
    }
}
