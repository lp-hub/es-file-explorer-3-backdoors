package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.ak;
import com.estrongs.fs.b.at;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.o;
import com.estrongs.fs.b.q;
import com.estrongs.fs.b.y;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f2262a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f2263b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar, com.estrongs.a.a aVar) {
        this.f2263b = eVar;
        this.f2262a = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0059, code lost:
    
        if (com.estrongs.android.pop.q.a(r0).ab() == false) goto L28;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        c cVar;
        c cVar2;
        c cVar3;
        String absolutePath;
        boolean z;
        String str;
        String str2;
        boolean z2;
        String str3;
        Activity activity;
        Activity activity2;
        Activity activity3;
        c cVar4;
        Activity activity4;
        c cVar5;
        Activity activity5;
        String aY;
        Activity activity6;
        c cVar6;
        Activity activity7;
        c cVar7;
        Activity activity8;
        Activity activity9;
        c cVar8;
        Activity activity10;
        c cVar9;
        Activity activity11;
        Activity activity12;
        c cVar10;
        Activity activity13;
        c cVar11;
        Activity activity14;
        Activity activity15;
        c cVar12;
        Activity activity16;
        c cVar13;
        c cVar14;
        c cVar15;
        Activity activity17;
        c cVar16;
        c cVar17;
        Activity activity18;
        Activity activity19;
        c cVar18;
        Activity activity20;
        c cVar19;
        Activity activity21;
        c cVar20;
        synchronized (this.f2263b) {
            cVar = this.f2263b.f2260a;
            if (cVar == null) {
                return;
            }
            cVar2 = this.f2263b.f2260a;
            cVar2.a(false);
            if (this.f2262a instanceof com.estrongs.fs.b.b) {
                cVar20 = this.f2263b.f2260a;
                cVar20.e();
            } else {
                if (!(this.f2262a instanceof q)) {
                    if ((this.f2262a instanceof i) || (this.f2262a instanceof o) || (this.f2262a instanceof at) || (this.f2262a instanceof com.estrongs.fs.b.g)) {
                        activity21 = this.f2263b.f2261b;
                    }
                }
                ak.c();
                if (this.f2262a instanceof i) {
                    if (((i) this.f2262a).c().size() == 1 && ((i) this.f2262a).c().get(0).getFileType().b()) {
                        String absolutePath2 = ((i) this.f2262a).n.getAbsolutePath();
                        if (!absolutePath2.endsWith("/")) {
                            absolutePath2 = absolutePath2 + "/";
                        }
                        absolutePath = absolutePath2 + ((i) this.f2262a).c().get(0).getName();
                        z = false;
                    } else {
                        absolutePath = ((i) this.f2262a).n.getAbsolutePath();
                        z = true;
                    }
                    if (this.f2262a instanceof y) {
                        activity18 = this.f2263b.f2261b;
                        str2 = activity18.getString(C0000R.string.action_move);
                        activity19 = this.f2263b.f2261b;
                        str = activity19.getString(C0000R.string.move_sucessfully_message, new Object[]{ak.bv(absolutePath)});
                        cVar18 = this.f2263b.f2260a;
                        activity20 = this.f2263b.f2261b;
                        cVar18.b(activity20.getText(C0000R.string.progress_moved));
                        cVar19 = this.f2263b.f2260a;
                        cVar19.c(str);
                        z2 = z;
                        str3 = absolutePath;
                    } else if (this.f2262a instanceof i) {
                        activity14 = this.f2263b.f2261b;
                        str2 = activity14.getString(C0000R.string.action_copy);
                        activity15 = this.f2263b.f2261b;
                        str = activity15.getString(C0000R.string.copy_sucessfully_message, new Object[]{ak.bv(absolutePath)});
                        cVar12 = this.f2263b.f2260a;
                        activity16 = this.f2263b.f2261b;
                        cVar12.b(activity16.getText(C0000R.string.progress_copied));
                        cVar13 = this.f2263b.f2260a;
                        cVar13.c(str);
                        z2 = z;
                        str3 = absolutePath;
                    } else if (this.f2262a instanceof o) {
                        activity11 = this.f2263b.f2261b;
                        str2 = activity11.getString(C0000R.string.action_delete);
                        String name = (((o) this.f2262a).a().size() == 1 && ((o) this.f2262a).a().get(0).getFileType().b()) ? ((o) this.f2262a).a().get(0).getName() : ((o) this.f2262a).a().get(0).getName() + "…";
                        String aY2 = ak.aY(((o) this.f2262a).a().get(0).getAbsolutePath());
                        activity12 = this.f2263b.f2261b;
                        str = activity12.getString(C0000R.string.delete_sucessfully_message, new Object[]{name});
                        cVar10 = this.f2263b.f2260a;
                        activity13 = this.f2263b.f2261b;
                        cVar10.b(activity13.getText(C0000R.string.operation_delete_success));
                        cVar11 = this.f2263b.f2260a;
                        cVar11.c(str);
                        z2 = z;
                        str3 = aY2;
                    } else if (this.f2262a instanceof com.estrongs.fs.b.g) {
                        activity8 = this.f2263b.f2261b;
                        str2 = activity8.getString(C0000R.string.action_rename);
                        String b2 = ((com.estrongs.fs.b.g) this.f2262a).b();
                        String str4 = ((com.estrongs.fs.b.g) this.f2262a).a().get(0).getName() + "…";
                        activity9 = this.f2263b.f2261b;
                        str = activity9.getString(C0000R.string.rename_sucessfully_message, new Object[]{str4});
                        cVar8 = this.f2263b.f2260a;
                        activity10 = this.f2263b.f2261b;
                        cVar8.b(activity10.getText(C0000R.string.rename_success));
                        cVar9 = this.f2263b.f2260a;
                        cVar9.c(str);
                        z2 = z;
                        str3 = b2;
                    } else if (this.f2262a instanceof at) {
                        activity5 = this.f2263b.f2261b;
                        String string = activity5.getString(C0000R.string.action_send);
                        if (((at) this.f2262a).c().size() == 1 && ((at) this.f2262a).c().get(0).getFileType().b()) {
                            z = false;
                            aY = ((at) this.f2262a).c().get(0).getAbsolutePath();
                        } else {
                            aY = ak.aY(((at) this.f2262a).c().get(0).getAbsolutePath());
                        }
                        activity6 = this.f2263b.f2261b;
                        str = activity6.getString(C0000R.string.transfer_sucessfully_message, new Object[]{ak.bv(aY)});
                        cVar6 = this.f2263b.f2260a;
                        activity7 = this.f2263b.f2261b;
                        cVar6.b(activity7.getText(C0000R.string.progress_sent));
                        cVar7 = this.f2263b.f2260a;
                        cVar7.c(str);
                        z2 = z;
                        str3 = aY;
                        str2 = string;
                    } else if (this.f2262a instanceof q) {
                        activity = this.f2263b.f2261b;
                        String string2 = activity.getString(C0000R.string.action_download);
                        String b3 = ((q) this.f2262a).b();
                        StringBuilder sb = new StringBuilder();
                        activity2 = this.f2263b.f2261b;
                        StringBuilder append = sb.append(activity2.getString(C0000R.string.download_sucessfully_message, new Object[]{""})).append("!\n");
                        activity3 = this.f2263b.f2261b;
                        String sb2 = append.append(activity3.getString(C0000R.string.task_destination)).append(ak.bv(b3)).toString();
                        cVar4 = this.f2263b.f2260a;
                        activity4 = this.f2263b.f2261b;
                        cVar4.b(activity4.getText(C0000R.string.upgrade_download_ok));
                        cVar5 = this.f2263b.f2260a;
                        cVar5.c(sb2);
                        try {
                            boolean z3 = ak.aO(b3) ? false : z;
                            str2 = string2;
                            str3 = b3;
                            z2 = z3;
                            str = sb2;
                        } catch (Exception e) {
                            str = sb2;
                            str2 = string2;
                            z2 = z;
                            str3 = b3;
                        }
                    } else {
                        str = "";
                        str2 = "";
                        z2 = z;
                        str3 = absolutePath;
                    }
                    cVar14 = this.f2263b.f2260a;
                    cVar14.a(C0000R.drawable.notification_done);
                    cVar15 = this.f2263b.f2260a;
                    cVar15.a();
                    activity17 = this.f2263b.f2261b;
                    Intent intent = new Intent(activity17, (Class<?>) ShowDialogActivity.class);
                    intent.setData(Uri.parse(str3));
                    intent.putExtra("title", str2);
                    intent.putExtra("message", str);
                    intent.putExtra("openfileOrFolder", true);
                    intent.putExtra("pathIsDir", z2);
                    cVar16 = this.f2263b.f2260a;
                    cVar16.b(true);
                    cVar17 = this.f2263b.f2260a;
                    cVar17.a(intent, true);
                } else {
                    cVar3 = this.f2263b.f2260a;
                    cVar3.e();
                }
            }
        }
    }
}
