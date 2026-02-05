package com.estrongs.fs.b;

import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class q extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.d f3018a;

    /* renamed from: b, reason: collision with root package name */
    protected List<k> f3019b;
    boolean c;
    s d;
    public String e;
    Long f;
    Long g;
    private String h;
    private String i;
    private boolean j;
    private boolean k;
    private String l;
    private String m;

    public q(com.estrongs.fs.d dVar, String str, String str2) {
        this(dVar, str, str2, true);
    }

    public q(com.estrongs.fs.d dVar, String str, String str2, boolean z) {
        this.f3018a = null;
        this.f3019b = new ArrayList();
        this.c = false;
        this.d = new s();
        this.j = true;
        this.k = false;
        this.m = null;
        this.f = 0L;
        this.g = 0L;
        this.f3018a = dVar;
        this.h = str;
        str2 = str2.endsWith(File.separator) ? str2 : str2 + File.separator;
        this.i = str2;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        d();
        if (z) {
            com.estrongs.a.l.a().a(this);
        }
    }

    public q(com.estrongs.fs.d dVar, JSONObject jSONObject) {
        super(jSONObject);
        this.f3018a = null;
        this.f3019b = new ArrayList();
        this.c = false;
        this.d = new s();
        this.j = true;
        this.k = false;
        this.m = null;
        this.f = 0L;
        this.g = 0L;
        this.f3018a = dVar;
        this.h = jSONObject.optString("source");
        this.i = com.estrongs.android.util.ak.aY(jSONObject.optString("target"));
        if (!this.i.endsWith(File.separator)) {
            this.i += File.separator;
        }
        this.e = this.i + getTaskId() + "_" + jSONObject.optString("title");
        this.processData.f = new File(this.e).length();
        this.processData.e = jSONObject.optLong("size");
        if (this.processData.f <= 0) {
            if (jSONObject.optInt("status") == 4) {
                setTaskStatus(4);
                return;
            } else {
                setTaskStatus(5);
                return;
            }
        }
        if (this.processData.f < this.processData.e) {
            this.processData.i = 2;
            setTaskStatus(5);
        } else if (this.processData.f == this.processData.e) {
            setTaskStatus(4);
        }
    }

    private void d() {
        if (this.startTime == -1) {
            this.startTime = System.currentTimeMillis();
        }
        String d = com.estrongs.android.util.ak.d(this.h);
        if (d != null) {
            d = d.replace(':', '_');
        }
        recordSummary("task_id", Long.valueOf(getTaskId()));
        recordSummary("start_time", Long.valueOf(this.startTime));
        recordSummary("task_type", 6);
        recordSummary("restartable", true);
        recordSummary("title", d);
        recordSummary("items_ori_count", 1);
        recordSummary("source", this.h);
        recordSummary("target", this.i + d);
        recordSummary("file_type", Integer.valueOf(com.estrongs.android.util.av.a(this.h)));
        recordSummary("status", 1);
    }

    protected boolean a() {
        com.estrongs.fs.g gVar;
        com.estrongs.fs.g a2;
        com.estrongs.a.a.b bVar;
        if (this.processData.i == -1) {
            this.processData.i = 4;
        }
        onProgress(this.processData);
        this.processData.e = summary().optLong("size");
        if (this.h.toLowerCase().startsWith("http") || this.h.toLowerCase().startsWith("https")) {
            TypedMap typedMap = new TypedMap();
            int i = 0;
            boolean z = false;
            com.estrongs.a.a.b bVar2 = null;
            com.estrongs.fs.g gVar2 = null;
            while (gVar2 == null) {
                if (taskStopped() || i > 20) {
                    return false;
                }
                if (z) {
                    try {
                        bVar = (com.estrongs.a.a.b) getDecision(com.estrongs.a.a.b.class, this.h, Long.valueOf(getTaskId()));
                    } catch (FileSystemException e) {
                        e = e;
                    }
                    try {
                        if (bVar.d) {
                            bVar.d = false;
                            requestStop();
                            return false;
                        }
                        typedMap.put("NEW_USERNAME", bVar.f190b);
                        typedMap.put("NEW_PASSWORD", bVar.c);
                        a2 = new com.estrongs.fs.impl.g.b().a(this.h, typedMap);
                    } catch (FileSystemException e2) {
                        bVar2 = bVar;
                        e = e2;
                        if (e.getMessage() == null || !e.getMessage().contains("unauthorized")) {
                            return false;
                        }
                        int i2 = i + 1;
                        if (bVar2 != null) {
                            bVar2.e = false;
                        }
                        i = i2;
                        z = true;
                        gVar2 = null;
                    }
                } else {
                    com.estrongs.a.a.b bVar3 = bVar2;
                    a2 = new com.estrongs.fs.impl.g.b().a(this.h);
                    bVar = bVar3;
                }
                com.estrongs.a.a.b bVar4 = bVar;
                gVar2 = a2;
                bVar2 = bVar4;
            }
            gVar = gVar2;
        } else {
            gVar = this.f3018a.j(this.h);
        }
        if (gVar == null) {
            return false;
        }
        this.processData.j = gVar.getName();
        this.processData.c = 1L;
        this.processData.e = gVar.length();
        String name = (this.h.startsWith(Utils.http) || this.h.startsWith(Utils.https)) ? gVar.getName() : null;
        if (name == null) {
            name = com.estrongs.android.util.ak.d(this.h);
        }
        String replace = name.replace(':', '_');
        this.l = this.i + replace;
        recordSummary("title", replace);
        recordSummary("target", this.l);
        recordSummary("file_type", Integer.valueOf(com.estrongs.android.util.av.a(replace)));
        this.e = this.i + getTaskId() + "_" + replace;
        this.processData.f = new File(this.e).length();
        this.f3019b.clear();
        this.f3019b.add(new k(gVar, this.e, this.processData.f, false));
        this.k = this.l.startsWith(this.h);
        this.canRestart = true;
        this.task_type = 6;
        recordSummary("items_selected_count", Long.valueOf(this.processData.c));
        recordSummary("size", Long.valueOf(gVar.length()));
        com.estrongs.a.l.a().b(this);
        return true;
    }

    public String b() {
        return summary().optString("target");
    }

    public String c() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void executeHelper() {
        super.executeHelper();
        if (getTaskStatus() == 5) {
            addTaskStatusChangeListener(com.estrongs.a.l.a().f226a);
        }
    }

    @Override // com.estrongs.a.a
    public com.estrongs.a.a.c getDecision(Class<?> cls, Object... objArr) {
        if (cls.getName().equals(com.estrongs.a.a.b.class.getName())) {
            return super.getDecision(cls, objArr);
        }
        if (objArr != null && objArr.length == 2 && com.estrongs.android.util.aw.b(objArr[1])) {
            return null;
        }
        return super.getDecisionData(cls);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0002. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                com.estrongs.a.a.i iVar = this.processData;
                iVar.d = ((Long) objArr[0]).longValue() + iVar.d;
                this.processData.f196a = (String) objArr[1];
                return;
            case 2:
                if (objArr.length != 3 || !"RBT".equals(objArr[2])) {
                    com.estrongs.a.a.i iVar2 = this.processData;
                    iVar2.f = ((Long) objArr[0]).longValue() + iVar2.f;
                }
                this.processData.f196a = (String) objArr[1];
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                super.handleMessage(i, objArr);
                return;
            case 4:
                List list = (List) objArr[0];
                if (list != null) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        this.f3019b.add(list.get(i2));
                    }
                    return;
                }
                return;
            case 8:
                this.d.f3022a = true;
                super.handleMessage(i, objArr);
                return;
            case 9:
                this.processData.g = ((Long) objArr[0]).longValue();
                this.processData.h = ((Long) objArr[1]).longValue();
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void postTask() {
        if (com.estrongs.android.util.aw.b((CharSequence) this.m)) {
            com.estrongs.fs.impl.local.d.j(this.m);
        }
    }

    @Override // com.estrongs.a.a
    public void requestStop() {
        com.estrongs.a.l.a().c(this);
        super.requestStop();
    }

    @Override // com.estrongs.a.a
    public void reset() {
        long j = this.processData.f;
        super.reset();
        if (this.j) {
            this.processData.f = j;
        }
        this.c = false;
        this.k = false;
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        String str;
        String str2;
        Header[] headers;
        try {
            String str3 = this.h;
            if (str3.startsWith("http://t.cn/")) {
                try {
                    HttpResponse execute = PcsFileSystem.a(false).execute(new HttpGet(str3));
                    int statusCode = execute.getStatusLine().getStatusCode();
                    if (statusCode > 300 && statusCode < 400 && (headers = execute.getHeaders("Location")) != null && headers.length > 0) {
                        str3 = headers[0].getValue();
                    }
                } catch (Exception e) {
                }
            }
            if (!str3.startsWith("http://dwz.cn") || (str = PcsFileSystem.f(str3)) == null) {
                str = str3;
            }
            if (str.startsWith("http://www.estrongs.com/esshare?s=")) {
                str = com.estrongs.android.util.aw.b(str.substring("http://www.estrongs.com/esshare?s=".length()).replace('_', ' ').replace('-', '/'), false);
            }
            if (!str.startsWith("http://dwz.cn") || (str2 = PcsFileSystem.f(str)) == null) {
                str2 = str;
            }
            this.h = str2;
            this.d.f3022a = false;
            if (this.k) {
                setTaskResult(10, new com.estrongs.a.q("Error", (Exception) null));
                return false;
            }
            if (!a()) {
                setTaskResult(10000, new com.estrongs.a.q("Failed to get FileObject for " + this.h, (Exception) null));
                this.processData.i = -1;
                return false;
            }
            new r(this).start();
            if (this.f3019b.size() > 0) {
                this.processData.f196a = this.f3019b.get(0).f3008a.getAbsolutePath();
                onProgress(this.processData);
            }
            this.processData.i = 2;
            onProgress(this.processData);
            while (this.f3019b.size() > 0) {
                if (taskStopped()) {
                    return false;
                }
                if (!this.f3018a.a(this.f3019b.remove(0))) {
                    com.estrongs.fs.a.b.a().a(this.l);
                    return false;
                }
                File a2 = com.estrongs.fs.c.d.a(this.e, this.l);
                if (a2 != null) {
                    recordSummary("title", a2.getName());
                    String absolutePath = a2.getAbsolutePath();
                    recordSummary("target", absolutePath);
                    this.m = absolutePath;
                    com.estrongs.fs.a.b.a().a(absolutePath);
                } else {
                    recordSummary("title", com.estrongs.android.util.ak.d(this.e));
                    recordSummary("target", this.e);
                    this.m = this.e;
                    com.estrongs.fs.a.b.a().a(this.e);
                }
                if (summary().optLong("size") < 0) {
                    recordSummary("size", Long.valueOf(a2.length()));
                }
            }
            if (this.processData.c > 0) {
                this.processData.d = this.processData.c;
            }
            if (this.processData.e > 0) {
                this.processData.f = this.processData.e;
            }
            onProgress(this.processData);
            setTaskResult(0, this.d);
            return true;
        } catch (Exception e2) {
            setTaskResult(10000, new com.estrongs.a.q(e2.toString(), e2));
            return false;
        } finally {
            this.c = true;
        }
    }
}
