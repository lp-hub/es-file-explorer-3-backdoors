package com.estrongs.android.util;

import android.content.Context;
import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2676a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ File f2677b;
    final /* synthetic */ Context c;
    final /* synthetic */ ao d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aq(ao aoVar, String str, File file, Context context) {
        this.d = aoVar;
        this.f2676a = str;
        this.f2677b = file;
        this.c = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        String str2;
        dialogInterface.dismiss();
        boolean z = false;
        File file = new File(this.f2676a + ".bk");
        try {
            try {
                this.f2677b.renameTo(file);
                HashMap hashMap = new HashMap(2);
                hashMap.put("compress_level", String.valueOf(1));
                com.estrongs.io.a.a.b bVar = new com.estrongs.io.a.a.b(null);
                bVar.c(true);
                com.estrongs.io.archive.i iVar = new com.estrongs.io.archive.i(this.f2676a, bVar, hashMap);
                ArrayList arrayList = new ArrayList();
                str = ao.f2673a;
                arrayList.add(str);
                iVar.a(arrayList);
                try {
                    this.d.b();
                    str2 = ao.f2673a;
                    new File(str2).delete();
                } catch (Exception e) {
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (FileSystemException e2) {
            e = e2;
        } catch (IOException e3) {
            e = e3;
        } catch (NullPointerException e4) {
        }
        try {
            String str3 = this.f2676a;
            if (aw.b((CharSequence) str3)) {
                com.estrongs.fs.a.b.a().a(str3.endsWith("/") ? str3 + "*" : str3 + "/*");
            }
            com.estrongs.android.pop.q.a(this.c).y(this.f2676a);
            com.estrongs.android.ui.view.z.a(this.c, C0000R.string.preference_setting_backup_succ, 1).show();
            file.delete();
        } catch (FileSystemException e5) {
            e = e5;
            z = true;
            e.printStackTrace();
            if (z) {
                return;
            }
            file.renameTo(this.f2677b);
            com.estrongs.android.ui.view.z.a(this.c, C0000R.string.preference_setting_backup_fail, 1).show();
        } catch (IOException e6) {
            e = e6;
            z = true;
            e.printStackTrace();
            if (z) {
                return;
            }
            file.renameTo(this.f2677b);
            com.estrongs.android.ui.view.z.a(this.c, C0000R.string.preference_setting_backup_fail, 1).show();
        } catch (NullPointerException e7) {
            z = true;
            if (z) {
                return;
            }
            file.renameTo(this.f2677b);
            com.estrongs.android.ui.view.z.a(this.c, C0000R.string.preference_setting_backup_fail, 1).show();
        } catch (Throwable th2) {
            th = th2;
            z = true;
            if (!z) {
                file.renameTo(this.f2677b);
                com.estrongs.android.ui.view.z.a(this.c, C0000R.string.preference_setting_backup_fail, 1).show();
            }
            throw th;
        }
    }
}
