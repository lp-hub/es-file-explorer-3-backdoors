package com.estrongs.android.pop.app;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class ShowDialogActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private long f379a = -1;

    /* renamed from: b, reason: collision with root package name */
    private boolean f380b = false;

    private void a() {
        new com.estrongs.android.ui.b.aq(this).a(C0000R.string.app_ftp_sever).b(C0000R.string.notification_es_stop_ftp_svr).b(C0000R.string.action_stop, new ie(this)).c(C0000R.string.confirm_cancel, new id(this)).a(new ic(this)).b().setCanceledOnTouchOutside(false);
    }

    private void a(Intent intent) {
        String uri = intent.getData().toString();
        com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(this);
        agVar.setTitle(intent.getStringExtra("title"));
        agVar.setMessage(intent.getStringExtra("message"));
        agVar.setOnDismissListener(new ik(this));
        if (uri == null) {
            return;
        }
        try {
            boolean booleanExtra = intent.getBooleanExtra("pathIsDir", false);
            if (!booleanExtra) {
                booleanExtra = uri.endsWith("/");
            }
            boolean z = booleanExtra ? false : true;
            if (!z || com.estrongs.android.util.ak.aP(uri)) {
                hy hyVar = new hy(this, uri, z);
                if (com.estrongs.android.util.ak.aq(uri) && com.estrongs.android.ui.pcs.aw.a().d()) {
                    agVar.setConfirmButton(getString(C0000R.string.open_folder_title), hyVar);
                    agVar.setCancelButton(getString(C0000R.string.pcs_normal_title), new hz(this, agVar));
                } else {
                    agVar.setSingleButton(getString(C0000R.string.open_folder_title), hyVar);
                }
            } else {
                agVar.setConfirmButton(getString(C0000R.string.open_file_title), new il(this, uri, agVar));
                agVar.setCancelButton(getString(C0000R.string.open_folder_title), new in(this, uri));
            }
            agVar.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.f379a = intent.getLongExtra("task_id", -1L);
        if (intent.getBooleanExtra("resume_task", false)) {
            com.estrongs.a.a a2 = com.estrongs.android.ui.notification.e.a(this.f379a);
            if (a2 == null || !com.estrongs.fs.d.i(((com.estrongs.fs.b.i) a2).n.getAbsolutePath())) {
                com.estrongs.android.ui.b.ew ewVar = new com.estrongs.android.ui.b.ew(this, intent.getStringExtra("task_title"), intent.getStringExtra("task_source_names"), intent.getStringExtra("count_info"), intent.getStringExtra("source"), intent.getStringExtra("target"), true);
                ewVar.a(false);
                ewVar.show();
                ewVar.setOnDismissListener(new Cif(this));
                return;
            }
            com.estrongs.android.ui.b.ew ewVar2 = new com.estrongs.android.ui.b.ew(this, intent.getStringExtra("task_title"), a2, true, true);
            ewVar2.a(false);
            ewVar2.show();
            ewVar2.setOnDismissListener(new hx(this));
            return;
        }
        if (this.f379a == -1) {
            if (intent.getBooleanExtra("openfileOrFolder", false)) {
                a(intent);
                return;
            }
            if (!intent.getBooleanExtra("compress", false)) {
                if (intent.getBooleanExtra("stop_ftp_server", false)) {
                    a();
                    return;
                }
                return;
            } else {
                if (!FexApplication.a().toString().equals(intent.getStringExtra("application")) && intent.getIntExtra("notification_id", -1) != -1) {
                    ((NotificationManager) getSystemService("notification")).cancel(intent.getIntExtra("notification_id", -1));
                }
                finish();
                return;
            }
        }
        com.estrongs.a.a task = com.estrongs.a.a.getTask(this.f379a);
        if (task == null) {
            if (intent.getIntExtra("notification_id", -1) != -1) {
                ((NotificationManager) getSystemService("notification")).cancel(intent.getIntExtra("notification_id", -1));
            }
            finish();
            return;
        }
        com.estrongs.android.a.a aVar = com.estrongs.android.a.a.f233a.get(Long.valueOf(this.f379a));
        if (intent.getBooleanExtra("needAuth", false) || aVar != null) {
            if (aVar != null) {
                aVar.dismiss();
                com.estrongs.android.a.a.f233a.remove(Long.valueOf(this.f379a));
            }
            com.estrongs.a.a.b bVar = (com.estrongs.a.a.b) task.getDecisionData(com.estrongs.a.a.b.class);
            com.estrongs.android.a.a aVar2 = new com.estrongs.android.a.a(this, bVar.f189a);
            aVar2.setCancelable(false);
            aVar2.a(8);
            aVar2.a(new ig(this, bVar, task));
            aVar2.setCancelButton(getString(C0000R.string.confirm_cancel), new ih(this, bVar, task));
            aVar2.setOnDismissListener(new ii(this));
            aVar2.show();
            com.estrongs.android.a.a.f233a.put(Long.valueOf(this.f379a), aVar2);
            return;
        }
        if (com.estrongs.android.ui.b.ew.d.get(Long.valueOf(this.f379a)) != null) {
            com.estrongs.android.ui.b.ew.d.get(Long.valueOf(this.f379a)).show();
            finish();
        } else {
            if (com.estrongs.a.a.getTask(this.f379a) == null) {
                finish();
                return;
            }
            com.estrongs.android.ui.b.ew ewVar3 = new com.estrongs.android.ui.b.ew(this, intent.getStringExtra("task_title"), com.estrongs.a.a.getTask(this.f379a), false);
            ewVar3.a(false);
            ewVar3.setOnDismissListener(new ij(this));
            ewVar3.show();
            this.f380b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        if (this.f380b && this.f379a != -1 && com.estrongs.android.ui.b.ew.d.containsKey(Long.valueOf(this.f379a))) {
            com.estrongs.android.ui.b.ew.d.get(Long.valueOf(this.f379a)).setOnDismissListener(null);
            com.estrongs.android.ui.b.ew.d.get(Long.valueOf(this.f379a)).dismiss();
            com.estrongs.android.ui.b.ew.d.remove(Long.valueOf(this.f379a));
        }
        com.estrongs.android.a.a aVar = com.estrongs.android.a.a.f233a.get(Long.valueOf(this.f379a));
        if (aVar != null && aVar.getContext() == this) {
            com.estrongs.android.a.a.f233a.remove(Long.valueOf(this.f379a));
            com.estrongs.a.a task = com.estrongs.a.a.getTask(this.f379a);
            if (task != null) {
                com.estrongs.a.a.b bVar = (com.estrongs.a.a.b) task.getDecisionData(com.estrongs.a.a.b.class);
                bVar.d = true;
                task.sendMessage(5, bVar);
            }
        }
        super.onDestroy();
    }
}
