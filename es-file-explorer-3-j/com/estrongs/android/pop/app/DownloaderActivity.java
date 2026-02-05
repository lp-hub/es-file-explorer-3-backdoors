package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.io.File;

/* loaded from: classes.dex */
public class DownloaderActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private String f341a = null;

    public static com.estrongs.android.ui.b.ag a(Activity activity, String str) {
        return a(activity, com.estrongs.android.pop.q.a(activity).C(), str, null, true);
    }

    public static com.estrongs.android.ui.b.ag a(Activity activity, String str, String str2, com.estrongs.a.a.k kVar, boolean z) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String string = activity.getString(C0000R.string.action_download);
        String string2 = activity.getString(C0000R.string.download_failure_message, new Object[]{com.estrongs.android.util.ak.B(str2)});
        com.estrongs.fs.b.q qVar = new com.estrongs.fs.b.q(com.estrongs.fs.d.a(activity), str2, file.getAbsolutePath(), z);
        qVar.setDescription(string.concat(" ").concat(com.estrongs.android.util.ak.B(str2)));
        if (kVar != null) {
            qVar.addTaskStatusChangeListener(kVar);
        }
        x xVar = new x(activity, string, qVar, string2, str2);
        xVar.a(false);
        xVar.show();
        xVar.c();
        qVar.execute();
        return xVar;
    }

    private static com.estrongs.android.ui.b.ew a(Activity activity, com.estrongs.fs.b.z zVar, boolean z) {
        v vVar = new v(activity, activity.getString(C0000R.string.download_pcs), zVar, activity.getString(C0000R.string.download_failure_message, new Object[]{com.estrongs.android.util.ak.B(zVar.c.f3161b)}), zVar, activity);
        vVar.a(false);
        vVar.a(activity.getString(C0000R.string.download_pcs_progress_help));
        vVar.setOnDismissListener(new w(zVar, z, activity));
        vVar.c();
        return vVar;
    }

    public static void a(Activity activity, com.estrongs.android.ui.pcs.v vVar, DialogInterface.OnCancelListener onCancelListener) {
        new com.estrongs.android.ui.b.aq(activity).a(C0000R.string.download_pcs).b(C0000R.string.pcs_share_login).d(C0000R.string.action_login, new ab(activity, vVar, onCancelListener)).e(C0000R.string.register, new z(activity, vVar, onCancelListener)).f(C0000R.string.toolbar_directly, new y(activity, vVar, onCancelListener)).a(onCancelListener).b();
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.b("PCS_Home_Page_UV", "PCS_Home_Page_UV");
        }
    }

    public static void a(Activity activity, com.estrongs.fs.g gVar, boolean z) {
        String str = gVar instanceof com.estrongs.fs.impl.pcs.a ? ((com.estrongs.fs.impl.pcs.a) gVar).f3161b : "";
        String ae = com.estrongs.android.pop.q.a(activity).ae();
        com.estrongs.fs.b.z zVar = gVar instanceof com.estrongs.fs.impl.pcs.a ? new com.estrongs.fs.b.z(com.estrongs.fs.d.a(activity), ae, (com.estrongs.fs.impl.pcs.a) gVar) : new com.estrongs.fs.b.z(com.estrongs.fs.d.a(activity), ae, str);
        zVar.setDescription(activity.getString(C0000R.string.action_download) + str);
        a(activity, zVar, z).show();
        zVar.execute();
    }

    public static void a(Activity activity, String str, boolean z) {
        com.estrongs.fs.b.z zVar = new com.estrongs.fs.b.z(com.estrongs.fs.d.a(activity), com.estrongs.android.pop.q.a(activity).ae(), str);
        a(activity, zVar, z).show();
        zVar.execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        a((Activity) this, this.f341a).setOnDismissListener(new u(this));
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.estrongs.android.ui.pcs.d k = com.estrongs.android.ui.pcs.aw.a().k();
        if (k != null) {
            k.a(i, intent, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        Uri data = getIntent().getData();
        if (data != null) {
            this.f341a = Uri.decode(data.toString());
        } else {
            this.f341a = null;
        }
        if (this.f341a == null) {
            d(C0000R.string.download_not_url_message);
            finish();
        } else {
            if (!com.estrongs.android.pop.utils.bs.a()) {
                a(this.f341a);
                return;
            }
            r rVar = new r(this);
            com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(this);
            agVar.setTitle(C0000R.string.action_download);
            agVar.setOnCancelListener(rVar);
            agVar.setSelectable(false);
            agVar.setItems(new String[]{getString(C0000R.string.download_now), getString(C0000R.string.download_pcs)}, -1, new s(this, rVar));
            agVar.show();
        }
    }
}
