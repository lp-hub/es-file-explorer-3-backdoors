package com.estrongs.android.pop.app.compress;

import android.os.Handler;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f592a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(an anVar) {
        this.f592a = anVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Handler handler;
        com.estrongs.io.archive.h hVar;
        ArchiveEntryFile archiveEntryFile;
        Handler handler2;
        Handler handler3;
        this.f592a.f589a = false;
        try {
            hVar = this.f592a.f590b;
            archiveEntryFile = this.f592a.e;
            File c = hVar.c(archiveEntryFile, new aq(this));
            if (this.f592a.f589a) {
                if (c != null && c.exists()) {
                    c.delete();
                }
            } else {
                if (c == null) {
                    throw new Exception("");
                }
                handler2 = this.f592a.c;
                handler3 = this.f592a.c;
                handler2.sendMessage(handler3.obtainMessage(1, c.getAbsolutePath()));
            }
            this.f592a.g = false;
        } catch (Exception e) {
            e.printStackTrace();
            if (!this.f592a.f589a) {
                if (e.getMessage() != null && e.getMessage().contains("WRONG PASSWORD")) {
                    this.f592a.g = true;
                }
                handler = this.f592a.c;
                handler.post(new ar(this, e));
            }
        } finally {
            this.f592a.dismiss();
        }
    }
}
