package com.estrongs.android.pop;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ak;
import java.text.MessageFormat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.c f1150a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1151b;
    final /* synthetic */ g c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, com.estrongs.a.a.c cVar, com.estrongs.a.a aVar) {
        this.c = gVar;
        this.f1150a = cVar;
        this.f1151b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        Activity activity2;
        Activity activity3;
        Activity activity4;
        Activity activity5;
        Activity activity6;
        ag a2;
        Activity activity7;
        Activity activity8;
        Activity activity9;
        Activity activity10;
        Activity activity11;
        if (this.f1150a.h == 1) {
            com.estrongs.a.a.e eVar = (com.estrongs.a.a.e) this.f1150a;
            if (eVar.c == null || eVar.c.getFileType() == null || eVar.d == null) {
                eVar.g = 3;
                com.estrongs.a.a aVar = this.f1151b;
                activity6 = this.c.f1149a;
                aVar.setTaskResult(10000, new com.estrongs.a.q(MessageFormat.format(activity6.getString(C0000R.string.failed_to_copy), ""), (Exception) null));
                this.f1151b.sendMessage(5, eVar);
                return;
            }
            a2 = this.c.a(this.f1151b, eVar);
            String bv = ak.bv(eVar.f191a);
            if (eVar.f192b) {
                activity10 = this.c.f1149a;
                a2.setTitle(activity10.getString(C0000R.string.overwrite_resume_title));
                StringBuilder sb = new StringBuilder();
                activity11 = this.c.f1149a;
                a2.setMessage(sb.append(activity11.getString(C0000R.string.overwrite_resume_msg)).append("\n").append(bv).toString());
            } else {
                activity7 = this.c.f1149a;
                a2.setTitle(activity7.getString(C0000R.string.message_overwrite));
                StringBuilder sb2 = new StringBuilder();
                activity8 = this.c.f1149a;
                StringBuilder append = sb2.append(activity8.getString(C0000R.string.msg_filename_confilct)).append(",");
                activity9 = this.c.f1149a;
                a2.setMessage(append.append(activity9.getString(C0000R.string.dialog_file_overwrite)).append("\n").append(ak.d(bv)).toString());
            }
            a2.show();
            return;
        }
        if (this.f1150a.h == 3) {
            this.f1150a.g = 3;
            this.f1150a.f = true;
            this.f1151b.sendMessage(5, this.f1150a);
            return;
        }
        if (this.f1150a.h == 4) {
            com.estrongs.a.a.f fVar = (com.estrongs.a.a.f) this.f1150a;
            activity5 = this.c.f1149a;
            new FlickrPhotoPrivacyDialog(activity5, new i(this), fVar.f193a).show();
            return;
        }
        if (this.f1150a.h != 5) {
            if (this.f1150a.h == 6) {
                com.estrongs.a.a.g gVar = (com.estrongs.a.a.g) this.f1150a;
                activity = this.c.f1149a;
                new com.estrongs.android.a.p(activity, gVar.f195a, new j(this, gVar)).show();
                return;
            }
            return;
        }
        activity2 = this.c.f1149a;
        Intent intent = new Intent(activity2, (Class<?>) ShowDialogActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("needAuth", true);
        intent.putExtra("task_id", this.f1151b.getTaskId());
        activity3 = this.c.f1149a;
        AlarmManager alarmManager = (AlarmManager) activity3.getSystemService("alarm");
        activity4 = this.c.f1149a;
        alarmManager.set(0, System.currentTimeMillis() + 500, PendingIntent.getActivity(activity4, 0, intent, 134217728));
    }
}
