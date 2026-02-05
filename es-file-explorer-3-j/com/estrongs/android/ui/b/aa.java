package com.estrongs.android.ui.b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1614a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Intent f1615b;
    final /* synthetic */ y c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(y yVar, List list, Intent intent) {
        this.c = yVar;
        this.f1614a = list;
        this.f1615b = intent;
    }

    @Override // android.content.DialogInterface.OnClickListener
    @SuppressLint({"StringFormatMatches"})
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        String str2;
        Activity activity;
        String str3;
        String str4;
        Activity activity2;
        String str5;
        Activity activity3;
        String str6;
        Activity activity4;
        Activity activity5;
        String str7;
        Activity activity6;
        String[] split;
        ActivityInfo activityInfo = ((ResolveInfo) this.f1614a.get(i)).activityInfo;
        int i2 = C0000R.string.pcs_share_message;
        str = this.c.f;
        if (!com.estrongs.android.util.ak.aq(str)) {
            i2 = C0000R.string.cloud_share_message;
        }
        str2 = this.c.f;
        String aa = com.estrongs.android.util.ak.aa(str2);
        if (aa != null && (split = aa.split("-")) != null) {
            aa = split[0];
        }
        if (activityInfo.packageName.equalsIgnoreCase("com.sina.weibo")) {
            str6 = this.c.i;
            if (str6 == null) {
                str6 = this.c.h;
            }
            activity4 = this.c.c;
            String string = activity4.getString(C0000R.string.above_version, new Object[]{"3.0.5"});
            activity5 = this.c.c;
            String string2 = activity5.getString(i2, new Object[]{aa, string, str6});
            if (i2 == C0000R.string.cloud_share_message) {
                activity6 = this.c.c;
                str7 = activity6.getString(i2, new Object[]{aa, str6});
            } else {
                str7 = string2;
            }
            this.f1615b.putExtra("android.intent.extra.TEXT", str7);
        } else {
            activity = this.c.c;
            str3 = this.c.g;
            String string3 = activity.getString(i2, new Object[]{aa, "", str3});
            if (i2 == C0000R.string.cloud_share_message) {
                activity2 = this.c.c;
                str5 = this.c.g;
                str4 = activity2.getString(i2, new Object[]{aa, str5});
            } else {
                str4 = string3;
            }
            this.f1615b.putExtra("android.intent.extra.TEXT", str4);
        }
        this.f1615b.setClassName(activityInfo.packageName, activityInfo.name);
        try {
            activity3 = this.c.c;
            activity3.startActivity(this.f1615b);
        } catch (Exception e) {
            e.printStackTrace();
        }
        dialogInterface.dismiss();
    }
}
