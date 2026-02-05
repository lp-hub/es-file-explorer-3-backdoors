package com.estrongs.android.pop.app;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.List;

/* loaded from: classes.dex */
public class InstallMonitorActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.util.a f359a = null;

    private String a(String str) {
        if (str == null) {
            return null;
        }
        String b2 = com.estrongs.android.pop.b.b();
        if (!str.startsWith("/mnt/asec")) {
            return b2;
        }
        List<String> a2 = com.estrongs.android.util.ak.a();
        a2.remove(b2);
        if (a2.size() > 0) {
            return a2.get(0);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f359a = com.estrongs.android.util.a.a(this, false, "FileExplorer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        this.f359a.c();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f359a.b();
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getIntent().getStringExtra("packageName"), 0);
            String a2 = a(packageInfo.applicationInfo.sourceDir);
            if (a2 != null) {
                long[] k = com.estrongs.fs.c.d.k(a2);
                if (k == null || k.length < 3) {
                    return;
                }
                String string = com.estrongs.android.pop.p.a() >= 8 ? ((packageInfo.applicationInfo.flags & 262144) == 0 || !a2.startsWith("/mnt/asec")) ? getString(C0000R.string.storage_internal) : getString(C0000R.string.storage_external) : null;
                if (k[0] / k[1] >= 3) {
                    String string2 = getString(C0000R.string.diskusage_remain_size, new Object[]{com.estrongs.fs.c.d.c(k[1] * k[2])});
                    if (string != null) {
                        string2 = string + " " + string2;
                    }
                    com.estrongs.android.ui.view.z.a(this, string2, 1).show();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finish();
    }
}
