package com.estrongs.android.pop.app.editor;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f722a;

    private ac(PopNoteEditor popNoteEditor) {
        this.f722a = popNoteEditor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ac(PopNoteEditor popNoteEditor, g gVar) {
        this(popNoteEditor);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0070 A[Catch: Exception -> 0x00df, all -> 0x00e9, TryCatch #0 {Exception -> 0x00df, blocks: (B:4:0x000d, B:8:0x0064, B:10:0x0070, B:13:0x007c, B:16:0x0085, B:18:0x00d2, B:21:0x0091, B:35:0x00cd), top: B:3:0x000d, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0085 A[Catch: Exception -> 0x00df, all -> 0x00e9, TryCatch #0 {Exception -> 0x00df, blocks: (B:4:0x000d, B:8:0x0064, B:10:0x0070, B:13:0x007c, B:16:0x0085, B:18:0x00d2, B:21:0x0091, B:35:0x00cd), top: B:3:0x000d, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c A[EDGE_INSN: B:30:0x007c->B:13:0x007c BREAK  A[LOOP:0: B:8:0x0064->B:29:?], SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Object obj;
        StringBuilder sb;
        StringBuilder sb2;
        Context context;
        File file;
        String str;
        char[] cArr;
        ai aiVar;
        int i;
        aj a2;
        b bVar;
        int i2;
        int i3;
        int i4;
        Handler handler;
        StringBuilder sb3;
        ReaderTextView readerTextView;
        int b2;
        Handler handler2;
        b bVar2;
        StringBuilder sb4;
        b bVar3;
        this.f722a.f();
        obj = this.f722a.A;
        synchronized (obj) {
            try {
                sb = this.f722a.y;
                sb2 = this.f722a.y;
                sb.delete(0, sb2.length());
                PopNoteEditor popNoteEditor = this.f722a;
                context = this.f722a.f;
                file = this.f722a.H;
                str = this.f722a.d;
                popNoteEditor.g = new b(context, file, str);
                cArr = new char[4096];
                aiVar = this.f722a.L;
                i = this.f722a.F;
                a2 = aiVar.a((i - 3) - 1);
            } catch (Exception e) {
                com.estrongs.android.pop.utils.a.a((Activity) this.f722a, C0000R.string.noteeditor_load_error);
            }
            if (a2 != null) {
                try {
                    bVar = this.f722a.g;
                    bVar.a(a2.f734b);
                    i2 = a2.f733a;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                do {
                    i3 = this.f722a.F;
                    i2++;
                    if (i3 - 3 > i2) {
                        break;
                    } else {
                        bVar3 = this.f722a.g;
                    }
                } while (bVar3.read(cArr) > 0);
                PopNoteEditor.C(this.f722a);
                for (i4 = 0; i4 < 3; i4++) {
                    bVar2 = this.f722a.g;
                    int read = bVar2.read(cArr);
                    if (read < 0) {
                        break;
                    }
                    sb4 = this.f722a.y;
                    sb4.append(cArr, 0, read);
                }
                handler = this.f722a.S;
                Message obtainMessage = handler.obtainMessage(1);
                sb3 = this.f722a.y;
                String sb5 = sb3.toString();
                PopNoteEditor popNoteEditor2 = this.f722a;
                PopNoteEditor popNoteEditor3 = this.f722a;
                readerTextView = this.f722a.h;
                b2 = popNoteEditor3.b(readerTextView, sb5);
                obtainMessage.obj = new ah(popNoteEditor2, sb5, 0, b2);
                handler2 = this.f722a.S;
                handler2.sendMessage(obtainMessage);
            }
            i2 = 0;
            do {
                i3 = this.f722a.F;
                i2++;
                if (i3 - 3 > i2) {
                }
            } while (bVar3.read(cArr) > 0);
            PopNoteEditor.C(this.f722a);
            while (i4 < 3) {
            }
            handler = this.f722a.S;
            Message obtainMessage2 = handler.obtainMessage(1);
            sb3 = this.f722a.y;
            String sb52 = sb3.toString();
            PopNoteEditor popNoteEditor22 = this.f722a;
            PopNoteEditor popNoteEditor32 = this.f722a;
            readerTextView = this.f722a.h;
            b2 = popNoteEditor32.b(readerTextView, sb52);
            obtainMessage2.obj = new ah(popNoteEditor22, sb52, 0, b2);
            handler2 = this.f722a.S;
            handler2.sendMessage(obtainMessage2);
        }
        this.f722a.g();
    }
}
