package com.estrongs.fs.b;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import java.util.Date;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class z extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    public String f3031a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3032b;
    public com.estrongs.fs.impl.pcs.a c;
    protected com.estrongs.fs.d d;
    private boolean e;
    private boolean f;
    private Object g;
    private Long h;
    private Long i;
    private String j;
    private String k;
    private PcsFileSystem l;

    public z(com.estrongs.fs.d dVar, String str, com.estrongs.fs.impl.pcs.a aVar) {
        this.f3032b = false;
        this.d = null;
        this.e = false;
        this.f = true;
        this.g = new Object();
        this.h = 0L;
        this.i = 0L;
        this.j = null;
        this.k = null;
        this.l = (PcsFileSystem) com.estrongs.fs.impl.i.b.a("pcs");
        a(dVar, str, aVar);
        b();
        com.estrongs.a.l.a().a(this);
    }

    public z(com.estrongs.fs.d dVar, String str, String str2) {
        this(dVar, str, new com.estrongs.fs.impl.pcs.a(str, str2, "/apps/Downloads/"));
    }

    public z(com.estrongs.fs.d dVar, JSONObject jSONObject) {
        super(jSONObject);
        this.f3032b = false;
        this.d = null;
        this.e = false;
        this.f = true;
        this.g = new Object();
        this.h = 0L;
        this.i = 0L;
        this.j = null;
        this.k = null;
        this.l = (PcsFileSystem) com.estrongs.fs.impl.i.b.a("pcs");
        a(dVar, jSONObject.optString("user_info"), new com.estrongs.fs.impl.pcs.a(jSONObject));
        if (jSONObject.optInt("status") != 4) {
            setTaskStatus(1);
        } else {
            setTaskStatus(4);
        }
        this.processData.f = 0L;
        this.processData.e = jSONObject.optLong("size");
    }

    private void a(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }

    private void a(com.estrongs.fs.d dVar, String str, com.estrongs.fs.impl.pcs.a aVar) {
        this.d = dVar;
        String[] split = str.split(":");
        this.j = split[0];
        this.k = split[1];
        this.c = aVar;
        this.f3031a = "pcs://" + this.j + ":" + this.k + "@pcs/files/apps/Downloads/";
    }

    private void b() {
        if (this.startTime == -1) {
            this.startTime = System.currentTimeMillis();
        }
        recordSummary("task_id", Long.valueOf(getTaskId()));
        recordSummary("start_time", Long.valueOf(this.startTime));
        recordSummary("task_type", 23);
        recordSummary("restartable", false);
        recordSummary("title", com.estrongs.android.util.ak.d(this.c.f3161b));
        recordSummary("items_ori_count", 1);
        recordSummary("source", this.c.f3161b);
        recordSummary("target", this.f3031a + com.estrongs.android.util.ak.d(this.c.f3161b));
        recordSummary("status", 1);
        recordSummary("user_info", this.j + ":" + this.k);
    }

    private boolean c() {
        int a2 = com.estrongs.android.util.aw.a(this.c.getExtra("status"));
        if (a2 != 2 && a2 != 3 && a2 != 4 && a2 != 5 && a2 != 6 && a2 != 7) {
            return false;
        }
        setTaskResult(a2, null);
        return true;
    }

    protected boolean a() {
        this.processData.i = 4;
        onProgress(this.processData);
        if (com.estrongs.android.util.aw.a((CharSequence) this.c.f3160a)) {
            try {
                this.c.f3160a = this.l.a(this.j, this.k, this.c.f3161b, "/apps/Downloads/");
                recordSummary("pcs_id", this.c.f3160a);
                com.estrongs.fs.a.b.a().a(this.c.getPath());
            } catch (PcsFileSystem.PcsFileSystemException e) {
                if (e == null) {
                    setTaskResult(10000, new com.estrongs.a.q("Failed to add file " + this.c.f3161b, (Exception) null));
                    return false;
                }
                setTaskResult(e.errorCode, null);
                return false;
            }
        }
        while (this.c.getExtra("name") == null) {
            try {
                this.l.a(this.j, this.k, this.c, 0);
                if (this.c.getExtra("name") != null) {
                    break;
                }
                a(300L);
            } catch (PcsFileSystem.PcsFileSystemException e2) {
                if (e2 == null) {
                    setTaskResult(10000, new com.estrongs.a.q("Failed to query file info " + this.c.f3161b, (Exception) null));
                    return false;
                }
                setTaskResult(e2.errorCode, null);
                return false;
            }
        }
        if (com.estrongs.android.util.aw.b((CharSequence) this.c.getName())) {
            recordSummary("title", this.c.getName());
            recordSummary("target", this.f3031a + this.c.getName());
        }
        while (this.c.length() < 1) {
            this.l.a(this.j, this.k, this.c, 1);
            if (this.c.length() > 0) {
                break;
            }
            a(300L);
        }
        if (c()) {
            return false;
        }
        recordSummary("size", Long.valueOf(this.c.length()));
        this.processData.n = false;
        this.processData.j = this.c.getName();
        this.processData.c = 1L;
        this.processData.g = this.c.length();
        this.processData.e = this.processData.g;
        this.processData.f196a = this.c.f3161b;
        this.processData.i = 2;
        onProgress(this.processData);
        com.estrongs.a.l.a().b(this);
        return true;
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
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                this.processData.d += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                return;
            case 2:
                this.processData.f += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                if (hasProgressListener() && this.f) {
                    Long valueOf = Long.valueOf(this.processData.f - this.i.longValue());
                    Long valueOf2 = Long.valueOf(new Date().getTime());
                    this.processData.f197b = (int) (((float) valueOf.longValue()) / ((valueOf2.longValue() - this.h.longValue()) / 1000.0d));
                    this.i = Long.valueOf(this.processData.f);
                    this.h = valueOf2;
                    synchronized (this.g) {
                        this.f = false;
                    }
                    onProgress(this.processData);
                    return;
                }
                return;
            case 9:
                this.processData.g = ((Long) objArr[0]).longValue();
                this.processData.h = ((Long) objArr[1]).longValue();
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    @Override // com.estrongs.a.a
    public void requestStop() {
        com.estrongs.a.l.a().c(this);
        super.requestStop();
    }

    @Override // com.estrongs.a.a
    public void reset() {
        super.reset();
        this.e = false;
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        String str;
        String str2;
        int i;
        Header[] headers;
        try {
            String str3 = this.c.f3161b;
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
            this.c.f3161b = str2;
            if (!a()) {
                return false;
            }
            if (hasProgressListener()) {
                new aa(this).start();
            }
            this.processData.i = 2;
            onProgress(this.processData);
            int i2 = 0;
            while (!this.f3032b) {
                try {
                    this.l.a(this.j, this.k, this.c, 1);
                    if (com.estrongs.android.util.aw.a(this.c.getExtra("status"), -1) == 7) {
                        com.estrongs.a.l.a().c(this);
                    }
                } catch (PcsFileSystem.PcsFileSystemException e2) {
                    if (i2 > 3) {
                        setTaskResult(e2.errorCode, null);
                        return false;
                    }
                    i = i2 + 1;
                }
                if (c()) {
                    return false;
                }
                i = i2;
                this.processData.h = this.c.d;
                this.processData.f = this.processData.h;
                onProgress(this.processData);
                if (this.processData.f >= this.processData.e || com.estrongs.android.util.aw.a(this.c.getExtra("status"), -1) == 0) {
                    recordSummary("end_time", Long.valueOf(this.c.lastModified()));
                    com.estrongs.fs.a.b.a().a(this.c.getPath());
                    setTaskResult(0, null);
                    return true;
                }
                a(300L);
                taskStopped();
                i2 = i;
            }
            try {
                this.d.a(this.c);
            } catch (FileSystemException e3) {
                e3.printStackTrace();
            }
            setTaskStatus(5);
            return false;
        } catch (Exception e4) {
            setTaskResult(10000, new com.estrongs.a.q(e4.toString(), e4));
            return false;
        } finally {
            this.e = true;
        }
    }
}
