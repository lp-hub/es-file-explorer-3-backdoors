package com.estrongs.fs.impl.pcs;

import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.netfs.utils.LengthStreamBody;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import java.io.PipedInputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.HttpMultipartMode;
import org.apache.http.entity.mime.MultipartEntity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ long f3165a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PipedInputStream f3166b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ String e;
    final /* synthetic */ UploadOutputStream f;
    final /* synthetic */ boolean g;
    final /* synthetic */ boolean h;
    final /* synthetic */ String i;
    final /* synthetic */ String j;
    final /* synthetic */ String k;
    final /* synthetic */ String l;
    final /* synthetic */ PcsFileSystem m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(PcsFileSystem pcsFileSystem, long j, PipedInputStream pipedInputStream, String str, String str2, String str3, UploadOutputStream uploadOutputStream, boolean z, boolean z2, String str4, String str5, String str6, String str7) {
        this.m = pcsFileSystem;
        this.f3165a = j;
        this.f3166b = pipedInputStream;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = uploadOutputStream;
        this.g = z;
        this.h = z2;
        this.i = str4;
        this.j = str5;
        this.k = str6;
        this.l = str7;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(1:3)(1:102)|4|(7:5|6|(3:8|(1:92)|10)(3:93|(1:96)|95)|11|(2:12|(4:14|(1:16)|17|(2:87|88)(2:19|(2:26|27)(4:21|(1:23)|24|25)))(2:90|91))|28|(1:30))|(3:68|69|(9:71|33|34|35|36|(2:38|(1:(1:41)(1:42)))|43|45|46))|32|33|34|35|36|(0)|43|45|46|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0172, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x011d, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011f, code lost:
    
        if (r14.h != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0121, code lost:
    
        if (r1 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0123, code lost:
    
        r0 = r14.m;
        r1 = r14.i;
        r0.deleteFile(r1, r14.j, r14.k);
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0131, code lost:
    
        r0 = r14.m;
        r1 = r14.i;
        r0.renameFile(r1, r14.j, r14.k, r14.l);
        r1 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ab A[Catch: Exception -> 0x0107, TryCatch #6 {Exception -> 0x0107, blocks: (B:36:0x00a7, B:38:0x00ab, B:41:0x00b1, B:42:0x00f9), top: B:35:0x00a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011d A[Catch: Exception -> 0x012f, TryCatch #1 {Exception -> 0x012f, blocks: (B:55:0x0119, B:57:0x011d, B:60:0x0123, B:61:0x0131), top: B:54:0x0119 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0130 -> B:53:0x00bc). Please report as a decompilation issue!!! */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        ArrayList arrayList;
        LengthStreamBody lengthStreamBody;
        boolean z2;
        String a2;
        boolean a3;
        String h;
        long j = this.f3165a == 0 ? 1L : this.f3165a;
        boolean z3 = true;
        try {
            try {
                arrayList = new ArrayList();
                if (this.f3165a > PcsFileSystem.f3158a) {
                    lengthStreamBody = new LengthStreamBody(this.f3166b, this.c, this.f3165a != 0 ? this.f3165a : 1L, PcsFileSystem.f3158a);
                } else {
                    lengthStreamBody = new LengthStreamBody(this.f3166b, this.c, this.f3165a != 0 ? this.f3165a : 1L);
                }
                while (true) {
                    if (j <= 0) {
                        z2 = true;
                        break;
                    }
                    HttpClient a4 = PcsFileSystem.a();
                    HttpPost httpPost = new HttpPost(this.d);
                    if (this.e.startsWith("bduss:")) {
                        StringBuilder append = new StringBuilder().append("BDUSS=");
                        h = this.m.h(this.e);
                        httpPost.addHeader("Cookie", append.append(h).toString());
                    }
                    MultipartEntity multipartEntity = new MultipartEntity(HttpMultipartMode.STRICT, null, null);
                    multipartEntity.addPart("uploadedfile", lengthStreamBody);
                    httpPost.setEntity(multipartEntity);
                    HttpResponse execute = a4.execute(httpPost);
                    Map parseAsJSON = HttpUtils.parseAsJSON(execute);
                    a3 = this.m.a(parseAsJSON, "upload");
                    if (!a3) {
                        z2 = false;
                        break;
                    }
                    Object obj = parseAsJSON.get("md5");
                    if (obj == null) {
                        z2 = false;
                        break;
                    }
                    arrayList.add((String) obj);
                    HttpEntity entity = execute.getEntity();
                    if (entity != null) {
                        entity.consumeContent();
                    }
                    j -= PcsFileSystem.f3158a;
                }
                if (j > 0) {
                    z2 = false;
                }
            } catch (Throwable th) {
                th = th;
                z3 = z;
            }
        } catch (Exception e) {
            e = e;
            z = true;
        } catch (Throwable th2) {
            th = th2;
        }
        if (z2) {
            try {
                a2 = this.m.a(this.c, this.e, this.f3165a, (List<String>) arrayList);
            } catch (Exception e2) {
                e = e2;
                z = z2;
                try {
                    e.printStackTrace();
                    this.f.setResult(false);
                    this.f3166b.close();
                } catch (Exception e3) {
                }
                try {
                    z = z;
                    if (this.g) {
                    }
                } catch (Exception e4) {
                    z = z;
                }
            } catch (Throwable th3) {
                th = th3;
                z3 = z2;
                try {
                    if (this.g && this.h) {
                        if (z3) {
                            this.m.deleteFile(this.i, this.j, this.k);
                        } else {
                            this.m.renameFile(this.i, this.j, this.k, this.l);
                        }
                    }
                } catch (Exception e5) {
                }
                throw th;
            }
            if (a2 == null) {
                z = false;
                this.f.setResult(z);
                z = z;
                if (this.g) {
                    z = z;
                    if (this.h) {
                        if (z) {
                            PcsFileSystem pcsFileSystem = this.m;
                            String str = this.i;
                            pcsFileSystem.deleteFile(str, this.j, this.k);
                            z = str;
                        } else {
                            PcsFileSystem pcsFileSystem2 = this.m;
                            String str2 = this.i;
                            pcsFileSystem2.renameFile(str2, this.j, this.k, this.l);
                            z = str2;
                        }
                    }
                }
            }
        }
        z = z2;
        this.f.setResult(z);
        z = z;
        if (this.g) {
        }
    }
}
