package com.estrongs.android.pop.view;

import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;
import java.text.MessageFormat;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.d f1345a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1346b;
    final /* synthetic */ boolean c;
    final /* synthetic */ String d;
    final /* synthetic */ FileExplorerActivity e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(FileExplorerActivity fileExplorerActivity, com.estrongs.fs.d dVar, String str, boolean z, String str2) {
        this.e = fileExplorerActivity;
        this.f1345a = dVar;
        this.f1346b = str;
        this.c = z;
        this.d = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            if (this.f1345a.b(this.f1346b)) {
                this.e.b(this.e.getString(C0000R.string.operation_fail_file_exist));
            } else if (this.f1345a.b(this.f1346b, this.c)) {
                this.e.b(MessageFormat.format(this.e.getString(C0000R.string.operation_file_created), this.d));
            } else {
                this.e.b(this.e.getString(C0000R.string.operation_failed));
            }
        } catch (FileSystemException e) {
            this.e.b(this.e.getString(C0000R.string.operation_failed) + ":" + e.getMessage());
        }
    }
}
