package com.estrongs.android.pop.app.editor;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f726a;

    /* renamed from: b, reason: collision with root package name */
    private StringBuilder f727b;
    private int c;
    private boolean d;

    public af(PopNoteEditor popNoteEditor, int i, boolean z) {
        StringBuilder sb;
        StringBuilder sb2;
        this.f726a = popNoteEditor;
        this.f727b = null;
        this.c = 0;
        this.d = false;
        try {
            sb = popNoteEditor.y;
            sb2 = popNoteEditor.y;
            sb.delete(0, sb2.length());
        } catch (Exception e) {
        }
        this.f727b = new StringBuilder();
        popNoteEditor.F = 0;
        this.c = i;
        this.d = z;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Object obj;
        b bVar;
        b bVar2;
        Context context;
        File file;
        String str;
        long j;
        ai aiVar;
        b bVar3;
        int read;
        StringBuilder sb;
        int i;
        long j2;
        StringBuilder sb2;
        ReaderTextView readerTextView;
        ObservableScrollView observableScrollView;
        String str2;
        int a2;
        Handler handler;
        Handler handler2;
        b bVar4;
        StringBuilder sb3;
        b bVar5;
        long j3;
        ai aiVar2;
        int i2;
        b bVar6;
        b bVar7;
        c cVar;
        obj = this.f726a.A;
        synchronized (obj) {
            try {
                try {
                    this.f726a.f();
                    if (this.d) {
                        PopNoteEditor popNoteEditor = this.f726a;
                        cVar = this.f726a.P;
                        popNoteEditor.d = cVar.f();
                    }
                    bVar = this.f726a.g;
                    if (bVar != null) {
                        try {
                            bVar2 = this.f726a.g;
                            bVar2.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    this.f726a.x = null;
                    PopNoteEditor popNoteEditor2 = this.f726a;
                    context = this.f726a.f;
                    file = this.f726a.H;
                    str = this.f726a.d;
                    popNoteEditor2.g = new b(context, file, str);
                    char[] cArr = new char[4096];
                    double d = 0.0d;
                    long j4 = this.c;
                    j = this.f726a.J;
                    long j5 = ((j4 * j) / 100) - 49152;
                    aiVar = this.f726a.L;
                    aj a3 = aiVar.a(j5);
                    if (a3 != null) {
                        try {
                            bVar7 = this.f726a.g;
                            bVar7.a(a3.f734b);
                            this.f726a.F = a3.f733a;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            try {
                                bVar6 = this.f726a.g;
                                bVar6.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    do {
                        bVar3 = this.f726a.g;
                        read = bVar3.read(cArr);
                        if (read < 0) {
                            break;
                        }
                        bVar5 = this.f726a.g;
                        long b2 = bVar5.b();
                        PopNoteEditor.E(this.f726a);
                        if (read == cArr.length) {
                            aiVar2 = this.f726a.L;
                            i2 = this.f726a.F;
                            aiVar2.a(i2, b2);
                        }
                        if (b2 >= j5) {
                            this.f727b.append(cArr, 0, read);
                            if (this.f727b.length() > 12288) {
                                this.f727b.delete(0, 4096);
                            }
                        }
                        j3 = this.f726a.J;
                        d = (b2 / j3) * 100.0d;
                    } while (d < this.c);
                    if (read < 0) {
                        d = 100.0d;
                    }
                    sb = this.f726a.y;
                    sb.append(this.f727b.toString());
                    i = this.f726a.F;
                    int i3 = 3 - i;
                    for (int i4 = 0; i4 < i3; i4++) {
                        bVar4 = this.f726a.g;
                        int read2 = bVar4.read(cArr);
                        if (read2 < 0) {
                            break;
                        }
                        sb3 = this.f726a.y;
                        sb3.append(cArr, 0, read2);
                        PopNoteEditor.E(this.f726a);
                    }
                    double d2 = d - this.c;
                    j2 = this.f726a.J;
                    int i5 = (int) ((d2 * j2) / 100.0d);
                    PopNoteEditor popNoteEditor3 = this.f726a;
                    sb2 = this.f726a.y;
                    String sb4 = sb2.toString();
                    PopNoteEditor popNoteEditor4 = this.f726a;
                    readerTextView = this.f726a.h;
                    observableScrollView = this.f726a.k;
                    int height = observableScrollView.getHeight();
                    String sb5 = this.f727b.toString();
                    str2 = this.f726a.d;
                    a2 = popNoteEditor4.a(readerTextView, height, sb5, str2, i5);
                    ah ahVar = new ah(popNoteEditor3, sb4, 0, a2);
                    handler = this.f726a.S;
                    Message obtainMessage = handler.obtainMessage(0);
                    obtainMessage.obj = ahVar;
                    handler2 = this.f726a.S;
                    handler2.sendMessage(obtainMessage);
                } catch (Exception e4) {
                    com.estrongs.android.pop.utils.a.a((Activity) this.f726a, C0000R.string.noteeditor_load_error);
                    this.f726a.g();
                }
            } finally {
                this.f726a.g();
            }
        }
    }
}
