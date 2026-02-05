package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.C0000R;
import java.math.BigDecimal;
import java.util.List;

/* loaded from: classes.dex */
public class y {

    /* renamed from: b, reason: collision with root package name */
    com.estrongs.fs.b.i f1889b;
    private Activity c;
    private ag d;
    private String e;
    private String f;
    private boolean k;

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.impl.b.c f1888a = null;
    private String g = null;
    private String h = null;
    private String i = null;
    private String j = "/ES云分享";

    public y(Activity activity, String str, DialogInterface.OnDismissListener onDismissListener) {
        this.c = activity;
        this.e = str;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        PackageManager packageManager = this.c.getPackageManager();
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        int i = -1;
        for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
            String str2 = queryIntentActivities.get(i2).activityInfo.applicationInfo.packageName;
            if (str2 != null && str2.equals(this.c.getPackageName())) {
                i = i2;
            }
        }
        if (i >= 0) {
            queryIntentActivities.remove(i);
        }
        Drawable[] drawableArr = new Drawable[queryIntentActivities.size()];
        CharSequence[] charSequenceArr = new String[queryIntentActivities.size()];
        for (int i3 = 0; i3 < queryIntentActivities.size(); i3++) {
            drawableArr[i3] = queryIntentActivities.get(i3).loadIcon(packageManager);
            charSequenceArr[i3] = queryIntentActivities.get(i3).loadLabel(packageManager);
        }
        this.d = new aq(this.c).a(C0000R.string.cloud_share_title).a(drawableArr, charSequenceArr, 0, new aa(this, queryIntentActivities, intent)).c(false).a(new z(this, onDismissListener)).a(false).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double a(long j, long j2) {
        if (j2 == 0) {
            return 1.0d;
        }
        return new BigDecimal((((float) j) / ((float) j2)) * 100.0f).setScale(2, 4).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        new Thread(new ac(this, str)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        this.c.runOnUiThread(new ab(this, str, z));
    }

    public void a() {
        try {
            this.d.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (com.estrongs.fs.impl.i.b.n(this.e)) {
            a(this.e);
            return;
        }
        if (com.estrongs.android.util.ak.aO(this.e)) {
            String str = com.estrongs.android.ui.pcs.aw.a().h() + "/files" + this.j;
            this.f1889b = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(this.c), com.estrongs.fs.d.a(this.c).j(this.e), com.estrongs.fs.d.m(str));
            this.f1889b.b(false);
            this.f1889b.setDescription(String.format(this.c.getString(C0000R.string.copy_task_description), com.estrongs.android.util.ak.bv(str)));
            this.f1889b.a(true);
            this.f1889b.addTaskStatusChangeListener(new ae(this, str));
            this.f1889b.addProgressListener(new af(this));
            this.f1889b.execute();
        }
    }
}
