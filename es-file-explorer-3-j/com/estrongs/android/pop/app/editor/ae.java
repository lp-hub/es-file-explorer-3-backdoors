package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
class ae extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopNoteEditor f725a;

    private ae(PopNoteEditor popNoteEditor) {
        this.f725a = popNoteEditor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ae(PopNoteEditor popNoteEditor, g gVar) {
        this(popNoteEditor);
    }

    private int a(b bVar, OutputStream outputStream, int i, int i2, long j, long j2) {
        EditText editText;
        String str;
        String str2;
        String str3;
        char[] cArr = new char[4096];
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        while (i4 != -1) {
            i4 = bVar.read(cArr, 0, cArr.length);
            long b2 = bVar.b();
            if (b2 >= j && !z2) {
                i4 = (int) (i4 - (b2 - j));
                z = true;
            }
            if (i4 > 0) {
                String str4 = new String(cArr, 0, i4);
                String a2 = a(str4, i, i2);
                str2 = this.f725a.d;
                byte[] bytes = a2.getBytes(str2);
                if (!z) {
                    int length = bytes.length;
                    str3 = this.f725a.d;
                    i3 += length - str4.getBytes(str3).length;
                }
                outputStream.write(bytes);
            }
            if (z && !z2) {
                z2 = true;
                bVar.a(j2);
                editText = this.f725a.i;
                String obj = editText.getText().toString();
                if (obj != null && obj.length() != 0) {
                    String a3 = a(obj, i2);
                    str = this.f725a.d;
                    outputStream.write(a3.getBytes(str));
                }
            }
        }
        return i3;
    }

    private String a(String str, int i) {
        return str.replaceAll(an.a(0), an.a(1)).replaceAll(an.a(2), an.a(1)).replaceAll(an.a(1), an.a(i));
    }

    private String a(String str, int i, int i2) {
        return str.replaceAll(an.a(i), an.a(i2));
    }

    private void a(a aVar, a aVar2) {
        String str;
        String str2;
        String str3;
        String str4;
        int i = 0;
        if (!a.a(aVar.h())) {
            aVar.b();
            aVar2.a(new File(aVar.h()));
            return;
        }
        InputStream e = aVar2.e();
        OutputStream f = aVar.f();
        byte[] bArr = new byte[4096];
        while (i != -1) {
            try {
                try {
                    i = e.read(bArr, 0, bArr.length);
                    if (i > 0) {
                        f.write(bArr, 0, i);
                    }
                } catch (IOException e2) {
                    str3 = PopNoteEditor.c;
                    Log.e(str3, "updateFile error!");
                    if (e != null) {
                        try {
                            e.close();
                        } catch (Exception e3) {
                            str4 = PopNoteEditor.c;
                            Log.e(str4, "updateFile file close error!");
                            return;
                        }
                    }
                    if (f != null) {
                        f.close();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (e != null) {
                    try {
                        e.close();
                    } catch (Exception e4) {
                        str2 = PopNoteEditor.c;
                        Log.e(str2, "updateFile file close error!");
                        throw th;
                    }
                }
                if (f != null) {
                    f.close();
                }
                throw th;
            }
        }
        if (e != null) {
            try {
                e.close();
            } catch (Exception e5) {
                str = PopNoteEditor.c;
                Log.e(str, "updateFile file close error!");
                return;
            }
        }
        if (f != null) {
            f.close();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r4 == 2) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(a aVar, OutputStream outputStream, long j, long j2) {
        boolean z;
        EditText editText;
        int i;
        int i2;
        String str;
        int i3;
        byte[] bArr = new byte[4096];
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        while (i4 != -1) {
            int a2 = aVar.a(bArr, 0, bArr.length);
            long a3 = aVar.a();
            if (a3 < j || z2) {
                i4 = a2;
                z = z3;
            } else {
                int i5 = (int) (a2 - (a3 - j));
                z = true;
                i4 = i5;
            }
            if (i4 > 0) {
                outputStream.write(bArr, 0, i4);
            }
            if (!z || z2) {
                z3 = z;
            } else {
                aVar.a(j2);
                editText = this.f725a.i;
                String obj = editText.getText().toString();
                if (obj != null && obj.length() != 0) {
                    i = this.f725a.Q;
                    if (i != 0) {
                        i3 = this.f725a.Q;
                    }
                    i2 = this.f725a.Q;
                    obj = a(obj, i2);
                    str = this.f725a.d;
                    outputStream.write(obj.getBytes(str));
                }
                z2 = true;
                z3 = z;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0346 A[Catch: all -> 0x00e6, IOException -> 0x03fe, TryCatch #8 {IOException -> 0x03fe, blocks: (B:131:0x0341, B:122:0x0346, B:124:0x034b), top: B:130:0x0341, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x034b A[Catch: all -> 0x00e6, IOException -> 0x03fe, TRY_LEAVE, TryCatch #8 {IOException -> 0x03fe, blocks: (B:131:0x0341, B:122:0x0346, B:124:0x034b), top: B:130:0x0341, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0341 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Object obj;
        int i;
        int i2;
        a aVar;
        a aVar2;
        a aVar3;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Handler handler5;
        Handler handler6;
        c cVar;
        Context context;
        File file;
        Context context2;
        OutputStream f;
        long c;
        c cVar2;
        b bVar;
        StringBuilder sb;
        String str;
        Context context3;
        File file2;
        String str2;
        int i3;
        int i4;
        ai aiVar;
        StringBuilder sb2;
        StringBuilder sb3;
        b bVar2;
        c cVar3;
        File file3;
        Context context4;
        File file4;
        String str3;
        ai aiVar2;
        b bVar3;
        b bVar4;
        b bVar5;
        StringBuilder sb4;
        ObservableScrollView observableScrollView;
        Handler handler7;
        Handler handler8;
        Handler handler9;
        Handler handler10;
        int i5;
        Handler handler11;
        Handler handler12;
        b bVar6;
        StringBuilder sb5;
        StringBuilder sb6;
        int i6;
        b bVar7;
        ai aiVar3;
        int i7;
        b bVar8;
        ai aiVar4;
        Handler handler13;
        Handler handler14;
        String str4;
        Handler handler15;
        Handler handler16;
        obj = this.f725a.A;
        synchronized (obj) {
            this.f725a.f();
            a aVar4 = null;
            OutputStream outputStream = null;
            i = this.f725a.Q;
            i2 = this.f725a.R;
            boolean z = i != i2;
            try {
                try {
                    cVar = this.f725a.P;
                    File d = cVar.d();
                    if (d.exists()) {
                        d.delete();
                    }
                    context = this.f725a.f;
                    file = this.f725a.H;
                    aVar4 = a.a(context, file);
                    try {
                        context2 = this.f725a.f;
                        aVar = a.a(context2, d);
                    } catch (Exception e) {
                        e = e;
                        aVar2 = aVar4;
                        aVar3 = null;
                    }
                } catch (Exception e2) {
                    e = e2;
                    aVar2 = null;
                    aVar3 = null;
                }
                try {
                    try {
                        f = aVar.f();
                        c = aVar4.c();
                        cVar2 = this.f725a.P;
                    } catch (Exception e3) {
                        e = e3;
                        aVar2 = aVar4;
                        aVar3 = aVar;
                        try {
                            e.printStackTrace();
                            handler3 = this.f725a.S;
                            Message obtainMessage = handler3.obtainMessage(5, 1, 0);
                            handler4 = this.f725a.S;
                            handler4.sendMessage(obtainMessage);
                            if (aVar2 != null) {
                                try {
                                    aVar2.d();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                    handler5 = this.f725a.S;
                                    Message obtainMessage2 = handler5.obtainMessage(5, 1, 0);
                                    handler6 = this.f725a.S;
                                    handler6.sendMessage(obtainMessage2);
                                    this.f725a.g();
                                    return;
                                }
                            }
                            if (0 != 0) {
                                outputStream.close();
                            }
                            if (aVar3 != null) {
                                aVar3.d();
                            }
                            this.f725a.g();
                            return;
                        } catch (Throwable th) {
                            th = th;
                            aVar = aVar3;
                            aVar4 = aVar2;
                            if (aVar4 != null) {
                                try {
                                    aVar4.d();
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                    handler = this.f725a.S;
                                    Message obtainMessage3 = handler.obtainMessage(5, 1, 0);
                                    handler2 = this.f725a.S;
                                    handler2.sendMessage(obtainMessage3);
                                    this.f725a.g();
                                    throw th;
                                }
                            }
                            if (0 != 0) {
                                outputStream.close();
                            }
                            if (aVar != null) {
                                aVar.d();
                            }
                            this.f725a.g();
                            throw th;
                        }
                    }
                    if (c > cVar2.b()) {
                        this.f725a.e = this.f725a.getString(C0000R.string.no_enough_space);
                        handler13 = this.f725a.S;
                        Message obtainMessage4 = handler13.obtainMessage(5, 1, 0);
                        handler14 = this.f725a.S;
                        handler14.sendMessage(obtainMessage4);
                        str4 = PopNoteEditor.c;
                        Log.e(str4, "no space for saving");
                        if (aVar4 != null) {
                            try {
                                aVar4.d();
                            } catch (IOException e6) {
                                e6.printStackTrace();
                                handler15 = this.f725a.S;
                                Message obtainMessage5 = handler15.obtainMessage(5, 1, 0);
                                handler16 = this.f725a.S;
                                handler16.sendMessage(obtainMessage5);
                            }
                        }
                        if (f != null) {
                            f.close();
                        }
                        if (aVar != null) {
                            aVar.d();
                        }
                        this.f725a.g();
                        return;
                    }
                    bVar = this.f725a.g;
                    long b2 = bVar.b();
                    sb = this.f725a.y;
                    String sb7 = sb.toString();
                    str = this.f725a.d;
                    long length = b2 - sb7.getBytes(str).length;
                    if (length < 0) {
                        length = 0;
                    }
                    if (z) {
                        context3 = this.f725a.f;
                        file2 = this.f725a.H;
                        str2 = this.f725a.d;
                        b bVar9 = new b(context3, file2, str2);
                        i3 = this.f725a.Q;
                        i4 = this.f725a.R;
                        int a2 = a(bVar9, f, i3, i4, length, b2);
                        bVar9.close();
                        length += a2;
                        if (length < 0) {
                            length = 0;
                        }
                        aiVar = this.f725a.L;
                        aiVar.b(0L);
                    } else {
                        a(aVar4, f, length, b2);
                        aiVar4 = this.f725a.L;
                        aiVar4.b(length);
                    }
                    sb2 = this.f725a.y;
                    sb3 = this.f725a.y;
                    sb2.delete(0, sb3.length());
                    bVar2 = this.f725a.g;
                    bVar2.close();
                    this.f725a.J = aVar.c();
                    f.close();
                    OutputStream outputStream2 = null;
                    this.f725a.F = 0;
                    a(aVar4, aVar);
                    cVar3 = this.f725a.P;
                    cVar3.e();
                    com.estrongs.fs.a.b a3 = com.estrongs.fs.a.b.a();
                    file3 = this.f725a.H;
                    a3.b(file3.getAbsolutePath());
                    char[] cArr = new char[4096];
                    PopNoteEditor popNoteEditor = this.f725a;
                    context4 = this.f725a.f;
                    file4 = this.f725a.H;
                    str3 = this.f725a.d;
                    popNoteEditor.g = new b(context4, file4, str3);
                    aiVar2 = this.f725a.L;
                    aj a4 = aiVar2.a(length);
                    if (a4 != null) {
                        try {
                            bVar4 = this.f725a.g;
                            bVar4.a(a4.f734b);
                            this.f725a.F = a4.f733a;
                        } catch (Exception e7) {
                            e7.printStackTrace();
                            try {
                                bVar3 = this.f725a.g;
                                bVar3.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                    }
                    StringBuilder sb8 = new StringBuilder();
                    while (true) {
                        bVar5 = this.f725a.g;
                        long b3 = bVar5.b();
                        if (b3 == length) {
                            break;
                        }
                        bVar7 = this.f725a.g;
                        int read = bVar7.read(cArr);
                        if (read < 0 || b3 > length) {
                            break;
                        }
                        PopNoteEditor.E(this.f725a);
                        if (read == cArr.length) {
                            aiVar3 = this.f725a.L;
                            i7 = this.f725a.F;
                            bVar8 = this.f725a.g;
                            aiVar3.a(i7, bVar8.b());
                        }
                        if (z) {
                            sb8.append(cArr, 0, read);
                            if (sb8.length() > 12288) {
                                sb8.delete(0, 4096);
                            }
                        }
                    }
                    int i8 = 3;
                    if (z) {
                        sb6 = this.f725a.y;
                        sb6.append(sb8.toString());
                        i6 = this.f725a.F;
                        i8 = 3 - i6;
                    }
                    for (int i9 = 0; i9 < i8; i9++) {
                        bVar6 = this.f725a.g;
                        int read2 = bVar6.read(cArr);
                        if (read2 < 0) {
                            break;
                        }
                        sb5 = this.f725a.y;
                        sb5.append(cArr, 0, read2);
                        PopNoteEditor.E(this.f725a);
                    }
                    PopNoteEditor popNoteEditor2 = this.f725a;
                    sb4 = this.f725a.y;
                    String sb9 = sb4.toString();
                    observableScrollView = this.f725a.j;
                    ah ahVar = new ah(popNoteEditor2, sb9, 0, observableScrollView.getScrollY());
                    handler7 = this.f725a.S;
                    Message obtainMessage6 = handler7.obtainMessage(0);
                    obtainMessage6.obj = ahVar;
                    handler8 = this.f725a.S;
                    handler8.sendMessage(obtainMessage6);
                    handler9 = this.f725a.S;
                    Message obtainMessage7 = handler9.obtainMessage(4);
                    obtainMessage7.obj = true;
                    handler10 = this.f725a.S;
                    handler10.sendMessage(obtainMessage7);
                    PopNoteEditor popNoteEditor3 = this.f725a;
                    i5 = this.f725a.R;
                    popNoteEditor3.Q = i5;
                    if (aVar4 != null) {
                        try {
                            aVar4.d();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                            handler11 = this.f725a.S;
                            Message obtainMessage8 = handler11.obtainMessage(5, 1, 0);
                            handler12 = this.f725a.S;
                            handler12.sendMessage(obtainMessage8);
                        }
                    }
                    if (0 != 0) {
                        outputStream2.close();
                    }
                    if (aVar != null) {
                        aVar.d();
                    }
                    this.f725a.g();
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    if (aVar4 != null) {
                    }
                    if (0 != 0) {
                    }
                    if (aVar != null) {
                    }
                    this.f725a.g();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                aVar = null;
            }
        }
    }
}
