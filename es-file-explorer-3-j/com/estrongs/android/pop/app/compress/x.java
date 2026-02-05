package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.os.HandlerThread;
import android.os.Message;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.android.util.aw;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class x extends HandlerThread {

    /* renamed from: a, reason: collision with root package name */
    public List<String> f629a;

    /* renamed from: b, reason: collision with root package name */
    public List<String> f630b;
    public List<String> c;
    public List<String> d;
    public int e;
    final /* synthetic */ l f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(l lVar, String str, int i) {
        super(str, i);
        this.f = lVar;
        this.f629a = new ArrayList();
        this.f630b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = 1;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:55|56|(2:58|(1:60))|61|(2:63|(5:65|66|67|(2:69|(1:71))(6:73|(1:75)|76|(1:78)|79|(1:81))|72))|84|66|67|(0)(0)|72) */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0475, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0476, code lost:
    
        r1.printStackTrace();
        com.estrongs.android.pop.utils.bt.b();
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0198 A[Catch: MediaStoreInsertException -> 0x01a8, TryCatch #4 {MediaStoreInsertException -> 0x01a8, blocks: (B:103:0x0192, B:105:0x0198, B:107:0x01a0, B:110:0x020c, B:112:0x0214, B:113:0x021d, B:115:0x0225, B:116:0x022e, B:118:0x0236), top: B:102:0x0192 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x020c A[Catch: MediaStoreInsertException -> 0x01a8, TRY_ENTER, TryCatch #4 {MediaStoreInsertException -> 0x01a8, blocks: (B:103:0x0192, B:105:0x0198, B:107:0x01a0, B:110:0x020c, B:112:0x0214, B:113:0x021d, B:115:0x0225, B:116:0x022e, B:118:0x0236), top: B:102:0x0192 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02f5 A[Catch: MediaStoreInsertException -> 0x0305, TryCatch #2 {MediaStoreInsertException -> 0x0305, blocks: (B:140:0x02ef, B:142:0x02f5, B:144:0x02fd, B:147:0x039b, B:149:0x03a3, B:150:0x03ac, B:152:0x03b4, B:153:0x03bd, B:155:0x03c5), top: B:139:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x039b A[Catch: MediaStoreInsertException -> 0x0305, TRY_ENTER, TryCatch #2 {MediaStoreInsertException -> 0x0305, blocks: (B:140:0x02ef, B:142:0x02f5, B:144:0x02fd, B:147:0x039b, B:149:0x03a3, B:150:0x03ac, B:152:0x03b4, B:153:0x03bd, B:155:0x03c5), top: B:139:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0077 A[Catch: Throwable -> 0x0112, all -> 0x03d0, TryCatch #5 {Throwable -> 0x0112, blocks: (B:3:0x0002, B:6:0x001e, B:8:0x0043, B:9:0x004c, B:11:0x0054, B:13:0x00fb, B:14:0x006f, B:16:0x0077, B:17:0x0080, B:53:0x0060), top: B:2:0x0002, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e8 A[Catch: MediaStoreInsertException -> 0x01f5, TryCatch #3 {MediaStoreInsertException -> 0x01f5, blocks: (B:29:0x00e2, B:31:0x00e8, B:33:0x00f0, B:37:0x01c0, B:39:0x01c8, B:40:0x01d1, B:42:0x01d9, B:43:0x01e2, B:45:0x01ea), top: B:28:0x00e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01c0 A[Catch: MediaStoreInsertException -> 0x01f5, TRY_ENTER, TryCatch #3 {MediaStoreInsertException -> 0x01f5, blocks: (B:29:0x00e2, B:31:0x00e8, B:33:0x00f0, B:37:0x01c0, B:39:0x01c8, B:40:0x01d1, B:42:0x01d9, B:43:0x01e2, B:45:0x01ea), top: B:28:0x00e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0424 A[Catch: MediaStoreInsertException -> 0x0475, TryCatch #1 {MediaStoreInsertException -> 0x0475, blocks: (B:67:0x041e, B:69:0x0424, B:71:0x042c, B:73:0x0441, B:75:0x0449, B:76:0x0452, B:78:0x045a, B:79:0x0463, B:81:0x046b), top: B:66:0x041e }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0441 A[Catch: MediaStoreInsertException -> 0x0475, TRY_ENTER, TryCatch #1 {MediaStoreInsertException -> 0x0475, blocks: (B:67:0x041e, B:69:0x0424, B:71:0x042c, B:73:0x0441, B:75:0x0449, B:76:0x0452, B:78:0x045a, B:79:0x0463, B:81:0x046b), top: B:66:0x041e }] */
    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        com.estrongs.io.archive.d dVar;
        com.estrongs.io.archive.d dVar2;
        Context context5;
        boolean z;
        int i;
        String str;
        int i2;
        String str2;
        com.estrongs.io.archive.h hVar;
        com.estrongs.io.archive.h hVar2;
        Context context6;
        com.estrongs.io.archive.d dVar3;
        boolean z2;
        int i3;
        String str3;
        int i4;
        String str4;
        com.estrongs.io.archive.h hVar3;
        com.estrongs.io.archive.h hVar4;
        boolean z3;
        int i5;
        String str5;
        int i6;
        String str6;
        com.estrongs.io.archive.h hVar5;
        com.estrongs.io.archive.h hVar6;
        String str7;
        boolean z4;
        String str8;
        String str9;
        am amVar;
        List list;
        com.estrongs.io.archive.h hVar7;
        com.estrongs.io.a.a.a aVar;
        am amVar2;
        com.estrongs.io.archive.d dVar4;
        boolean z5;
        int i7;
        String str10;
        int i8;
        String str11;
        com.estrongs.io.archive.h hVar8;
        com.estrongs.io.archive.h hVar9;
        am amVar3;
        List list2;
        com.estrongs.io.archive.h hVar10;
        List<String> list3;
        com.estrongs.io.a.a.a aVar2;
        am amVar4;
        try {
            try {
                HashMap hashMap = new HashMap();
                str7 = this.f.v;
                hashMap.put("charset_name", str7);
                z4 = this.f.r;
                hashMap.put("reload", z4 ? "true" : "false");
                str8 = this.f.t;
                hashMap.put("password", str8);
                l lVar = this.f;
                str9 = this.f.u;
                lVar.z = com.estrongs.io.archive.c.b(str9, hashMap);
                amVar = this.f.C;
                if (amVar != null) {
                    amVar4 = this.f.C;
                    amVar4.a();
                }
                list = this.f.x;
                try {
                    if (list != null) {
                        list2 = this.f.x;
                        if (list2.size() != 0) {
                            hVar10 = this.f.z;
                            list3 = this.f.x;
                            aVar2 = this.f.n;
                            hVar10.a(list3, aVar2);
                            amVar2 = this.f.C;
                            if (amVar2 != null) {
                                amVar3 = this.f.C;
                                amVar3.b();
                            }
                            Message message = new Message();
                            message.what = 1;
                            message.arg1 = 11;
                            dVar4 = this.f.e;
                            dVar4.sendMessage(message);
                            z5 = this.f.r;
                            if (z5) {
                                hVar8 = this.f.z;
                                if (hVar8 != null) {
                                    hVar9 = this.f.z;
                                    hVar9.g();
                                }
                            }
                            i7 = this.f.y;
                            if (i7 != 1) {
                                i8 = this.f.y;
                                if (i8 != 3) {
                                    com.estrongs.fs.a.b a2 = com.estrongs.fs.a.b.a();
                                    str11 = this.f.w;
                                    a2.a(str11);
                                    if (aw.e()) {
                                        if (this.d.size() > 0) {
                                            com.estrongs.fs.impl.media.e.a(this.d, null);
                                            return;
                                        }
                                        return;
                                    }
                                    if (this.f629a.size() > 0) {
                                        com.estrongs.fs.impl.j.b.b().a(this.f629a);
                                    }
                                    if (this.f630b.size() > 0) {
                                        com.estrongs.fs.impl.h.b.b().a(this.f630b);
                                    }
                                    if (this.c.size() > 0) {
                                        com.estrongs.fs.impl.p.b.b().a(this.c);
                                        return;
                                    }
                                    return;
                                }
                            }
                            com.estrongs.fs.a.b a3 = com.estrongs.fs.a.b.a();
                            StringBuilder sb = new StringBuilder();
                            str10 = this.f.w;
                            a3.a(sb.append(com.estrongs.android.util.ak.bp(str10)).append("*").toString());
                            if (aw.e()) {
                            }
                        }
                    }
                    if (aw.e()) {
                    }
                } catch (MediaStoreInsertException e) {
                    e.printStackTrace();
                    bt.b();
                    return;
                }
                hVar7 = this.f.z;
                aVar = this.f.n;
                hVar7.a(aVar);
                amVar2 = this.f.C;
                if (amVar2 != null) {
                }
                Message message2 = new Message();
                message2.what = 1;
                message2.arg1 = 11;
                dVar4 = this.f.e;
                dVar4.sendMessage(message2);
                z5 = this.f.r;
                if (z5) {
                }
                i7 = this.f.y;
                if (i7 != 1) {
                }
                com.estrongs.fs.a.b a32 = com.estrongs.fs.a.b.a();
                StringBuilder sb2 = new StringBuilder();
                str10 = this.f.w;
                a32.a(sb2.append(com.estrongs.android.util.ak.bp(str10)).append("*").toString());
            } catch (Throwable th) {
                z3 = this.f.r;
                if (z3) {
                    hVar5 = this.f.z;
                    if (hVar5 != null) {
                        hVar6 = this.f.z;
                        hVar6.g();
                    }
                }
                i5 = this.f.y;
                if (i5 != 1) {
                    i6 = this.f.y;
                    if (i6 != 3) {
                        com.estrongs.fs.a.b a4 = com.estrongs.fs.a.b.a();
                        str6 = this.f.w;
                        a4.a(str6);
                        if (aw.e()) {
                            if (this.f629a.size() > 0) {
                                com.estrongs.fs.impl.j.b.b().a(this.f629a);
                            }
                            if (this.f630b.size() > 0) {
                                com.estrongs.fs.impl.h.b.b().a(this.f630b);
                            }
                            if (this.c.size() > 0) {
                                com.estrongs.fs.impl.p.b.b().a(this.c);
                            }
                        } else if (this.d.size() > 0) {
                            com.estrongs.fs.impl.media.e.a(this.d, null);
                        }
                        throw th;
                    }
                }
                com.estrongs.fs.a.b a5 = com.estrongs.fs.a.b.a();
                StringBuilder sb3 = new StringBuilder();
                str5 = this.f.w;
                a5.a(sb3.append(com.estrongs.android.util.ak.bp(str5)).append("*").toString());
                if (aw.e()) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            String message3 = th2.getMessage();
            String name = message3 == null ? th2.getClass().getName() : message3;
            if (name.contains("WRONG PASSWORD")) {
                this.f.t = null;
                dVar3 = this.f.e;
                dVar3.post(new y(this));
                this.f.e();
                z2 = this.f.r;
                if (z2) {
                    hVar3 = this.f.z;
                    if (hVar3 != null) {
                        hVar4 = this.f.z;
                        hVar4.g();
                    }
                }
                i3 = this.f.y;
                try {
                    if (i3 != 1) {
                        i4 = this.f.y;
                        if (i4 != 3) {
                            com.estrongs.fs.a.b a6 = com.estrongs.fs.a.b.a();
                            str4 = this.f.w;
                            a6.a(str4);
                            if (!aw.e()) {
                                if (this.d.size() > 0) {
                                    com.estrongs.fs.impl.media.e.a(this.d, null);
                                    return;
                                }
                                return;
                            }
                            if (this.f629a.size() > 0) {
                                com.estrongs.fs.impl.j.b.b().a(this.f629a);
                            }
                            if (this.f630b.size() > 0) {
                                com.estrongs.fs.impl.h.b.b().a(this.f630b);
                            }
                            if (this.c.size() > 0) {
                                com.estrongs.fs.impl.p.b.b().a(this.c);
                                return;
                            }
                            return;
                        }
                    }
                    if (!aw.e()) {
                    }
                } catch (MediaStoreInsertException e2) {
                    e2.printStackTrace();
                    bt.b();
                    return;
                }
                com.estrongs.fs.a.b a7 = com.estrongs.fs.a.b.a();
                StringBuilder sb4 = new StringBuilder();
                str3 = this.f.w;
                a7.a(sb4.append(com.estrongs.android.util.ak.bp(str3)).append("*").toString());
            } else {
                if (name.contains("NOT_SUPPORTED_ENC_ALG")) {
                    context6 = this.f.c;
                    name = name.replaceAll("NOT_SUPPORTED_ENC_ALG", context6.getResources().getString(C0000R.string.msg_not_supported_crypto_alg));
                } else if (name.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH")) {
                    context4 = this.f.c;
                    name = name.replaceAll("NOT_SUPPORTED_ENC_ALG", context4.getResources().getString(C0000R.string.msg_not_supported_crypto_alg_strength));
                } else if (name.contains("not a WinZip AES")) {
                    context3 = this.f.c;
                    name = context3.getResources().getString(C0000R.string.msg_not_supported_crypto_alg);
                } else if (name.contains("FILENAME_CONFILCT")) {
                    context2 = this.f.c;
                    name = name.replaceAll("FILENAME_CONFILCT", context2.getResources().getString(C0000R.string.msg_filename_confilct));
                } else if (name.contains("path_create_error")) {
                    context = this.f.c;
                    name = name.replaceAll("path_create_error", context.getResources().getString(C0000R.string.path_create_error));
                }
                dVar = this.f.e;
                dVar2 = this.f.e;
                StringBuilder sb5 = new StringBuilder();
                context5 = this.f.c;
                dVar.sendMessage(dVar2.obtainMessage(2, sb5.append(context5.getResources().getString(C0000R.string.msg_operation_exception)).append("(").append(name).append(").").toString()));
                z = this.f.r;
                if (z) {
                    hVar = this.f.z;
                    if (hVar != null) {
                        hVar2 = this.f.z;
                        hVar2.g();
                    }
                }
                i = this.f.y;
                try {
                    if (i != 1) {
                        i2 = this.f.y;
                        if (i2 != 3) {
                            com.estrongs.fs.a.b a8 = com.estrongs.fs.a.b.a();
                            str2 = this.f.w;
                            a8.a(str2);
                            if (!aw.e()) {
                                if (this.d.size() > 0) {
                                    com.estrongs.fs.impl.media.e.a(this.d, null);
                                    return;
                                }
                                return;
                            }
                            if (this.f629a.size() > 0) {
                                com.estrongs.fs.impl.j.b.b().a(this.f629a);
                            }
                            if (this.f630b.size() > 0) {
                                com.estrongs.fs.impl.h.b.b().a(this.f630b);
                            }
                            if (this.c.size() > 0) {
                                com.estrongs.fs.impl.p.b.b().a(this.c);
                                return;
                            }
                            return;
                        }
                    }
                    if (!aw.e()) {
                    }
                } catch (MediaStoreInsertException e3) {
                    e3.printStackTrace();
                    bt.b();
                    return;
                }
                com.estrongs.fs.a.b a9 = com.estrongs.fs.a.b.a();
                StringBuilder sb6 = new StringBuilder();
                str = this.f.w;
                a9.a(sb6.append(com.estrongs.android.util.ak.bp(str)).append("*").toString());
            }
        }
    }
}
