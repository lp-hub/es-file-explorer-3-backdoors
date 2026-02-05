package com.estrongs.android.pop.app.compress;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;
import com.estrongs.io.model.ArchiveEntryFile;

/* loaded from: classes.dex */
public class an extends ProgressDialog {

    /* renamed from: a, reason: collision with root package name */
    boolean f589a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.io.archive.h f590b;
    private Handler c;
    private String d;
    private ArchiveEntryFile e;
    private String f;
    private boolean g;

    public an(Context context, Handler handler, com.estrongs.io.archive.h hVar) {
        super(context);
        this.f589a = false;
        this.g = true;
        this.c = handler;
        this.f590b = hVar;
        setMessage(context.getText(C0000R.string.wait_loading_file));
        setProgressStyle(0);
        setButton2(context.getText(C0000R.string.confirm_cancel), new ao(this));
    }

    public void a(ArchiveEntryFile archiveEntryFile) {
        this.e = archiveEntryFile;
    }

    public void a(String str) {
        this.f = str;
    }

    public boolean a() {
        return this.g;
    }

    public void b(String str) {
        this.d = str;
    }

    @Override // android.app.ProgressDialog, android.app.Dialog
    public void onStart() {
        new ap(this).start();
    }
}
