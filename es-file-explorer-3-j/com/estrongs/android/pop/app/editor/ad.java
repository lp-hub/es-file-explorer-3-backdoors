package com.estrongs.android.pop.app.editor;

import android.util.Log;
import android.widget.SeekBar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public boolean f723a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f724b;
    private Object c = new Object();

    public ad(PopNoteEditor popNoteEditor) {
        this.f724b = popNoteEditor;
        this.f723a = false;
        this.f723a = true;
    }

    public void a() {
        this.f723a = true;
        synchronized (this.c) {
            this.c.notify();
        }
    }

    public void b() {
        this.f723a = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r0 != false) goto L8;
     */
    /* JADX WARN: Incorrect condition in loop: B:2:0x0006 */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        boolean z2;
        int j;
        String str;
        SeekBar seekBar;
        boolean z3;
        while (!z) {
            z2 = this.f724b.D;
            if (!z2) {
                z3 = this.f724b.C;
            }
            synchronized (this.c) {
                try {
                    this.c.wait(100L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            if (this.f723a) {
                j = this.f724b.j();
                this.f723a = false;
                if (j < 0) {
                    str = PopNoteEditor.c;
                    Log.e(str, "ProgressThread invalid progress");
                } else {
                    seekBar = this.f724b.u;
                    seekBar.setProgress(j);
                }
            } else {
                synchronized (this.c) {
                    try {
                        this.c.wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }
}
