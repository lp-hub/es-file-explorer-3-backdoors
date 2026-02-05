package com.estrongs.android.pop.utils;

import android.app.Activity;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class aw extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1208a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f1209b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ boolean[] e;
    final /* synthetic */ boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(Activity activity, com.estrongs.fs.g gVar, String str, String str2, boolean[] zArr, boolean z) {
        this.f1208a = activity;
        this.f1209b = gVar;
        this.c = str;
        this.d = str2;
        this.e = zArr;
        this.f = z;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z;
        try {
            z = com.estrongs.fs.d.a(this.f1208a).b(this.f1209b, this.c);
        } catch (FileExistException e) {
            a.a(this.f1208a, this.f1208a.getText(C0000R.string.operation_fail_file_exist));
            z = false;
        } catch (FileSystemException e2) {
            String message = e2.getMessage();
            Log.e("FileOperateUtils", "Failed to renameFile : " + com.estrongs.android.util.ak.B(this.d), e2);
            a.a(this.f1208a, (CharSequence) (((Object) this.f1208a.getText(C0000R.string.operation_failed)) + (message == null ? "" : ":" + message)));
            z = false;
        }
        this.e[0] = z;
        if (z && this.f) {
            a.a(this.f1208a, this.f1208a.getText(C0000R.string.rename_success));
        }
    }
}
