package com.estrongs.android.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Environment;
import android.os.Handler;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class e extends ar {

    /* renamed from: a, reason: collision with root package name */
    public String f2833a;
    private com.estrongs.io.archive.h ac;
    private boolean ah;
    private int ai;
    private String aj;
    private Map<String, File> ak;
    private String al;
    private Handler am;
    private File an;
    private com.estrongs.android.widget.bp ao;
    private com.estrongs.android.pop.app.compress.an ap;
    private SparseBooleanArray aq;
    private com.estrongs.android.pop.app.compress.as ar;
    private m as;

    /* renamed from: b, reason: collision with root package name */
    public String f2834b;
    protected boolean c;

    public e(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, bs bsVar) {
        super(activity, viewGroup, aVar, bsVar, true, false);
        this.ac = null;
        this.f2833a = null;
        this.ah = false;
        this.ak = new HashMap(10);
        this.al = "";
        this.f2834b = com.estrongs.android.util.g.f2695a[0];
        this.ao = null;
        this.aq = new SparseBooleanArray();
        this.c = false;
        this.as = null;
        a(new f(this));
        this.am = new g(this);
        this.ao = new h(this, this.ad);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (com.estrongs.android.util.ak.aO(str) && com.estrongs.android.util.av.a(str) == -1) {
                AppRunner.s(this.ad, str);
            } else {
                Intent a2 = com.estrongs.android.pop.app.b.a(this.ad, str);
                if (a2 == null) {
                    com.estrongs.android.ui.view.z.a(this.ad, n(C0000R.string.app_type_error), 0).show();
                } else if (com.estrongs.android.util.av.G(str)) {
                    a(a2);
                } else {
                    a2.setComponent(null);
                    AppRunner.a(this.ad, a2, str);
                }
            }
        } catch (Exception e) {
            if (e instanceof ActivityNotFoundException) {
                com.estrongs.android.ui.view.z.a(this.ad, n(C0000R.string.app_type_error), 0).show();
            } else {
                com.estrongs.android.ui.view.z.a(this.ad, n(C0000R.string.msg_operation_exception) + ":" + e.getMessage(), 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<com.estrongs.fs.g> list, boolean z) {
        String aF = com.estrongs.android.util.ak.aF(this.f2833a);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                com.estrongs.android.pop.app.compress.l lVar = new com.estrongs.android.pop.app.compress.l(this.ad, aF, this.f2834b, this.aj, null, arrayList, z, true, this.ai, null);
                lVar.a(new l(this));
                lVar.b();
                return;
            }
            arrayList.add(list.get(i2).getPath());
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (this.ac != null) {
            com.estrongs.fs.c.d.a(com.estrongs.fs.c.d.g("zip/" + com.estrongs.android.util.ak.bl(com.estrongs.android.util.ak.d(this.ac.j()))));
        }
    }

    private void r() {
        for (File file : this.ak.values()) {
            if (file.exists()) {
                file.delete();
            }
        }
        this.ak.clear();
        q();
        if (this.ad.getIntent().getBooleanExtra("isTmpFile", false)) {
            String aF = com.estrongs.android.util.ak.aF(this.f2833a);
            if (aF == null) {
                return;
            }
            File file2 = new File(aF);
            file2.delete();
            file2.getParentFile().delete();
        }
        if (this.c) {
            return;
        }
        n();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.estrongs.fs.g gVar, View view, int i, long j) {
        File a2 = ((com.estrongs.fs.impl.e.a) gVar).a();
        String path = a2.getPath();
        if (a2.isDirectory()) {
            this.an = a2;
            g();
            if (this.z != null) {
                this.z.a(c(), true);
                return;
            }
            return;
        }
        if (com.estrongs.android.util.av.h(a2.getName())) {
            com.estrongs.android.ui.view.z.a(this.ad, n(C0000R.string.msg_can_not_open_nested_zip), 0).show();
            return;
        }
        File file = this.ak.get(path);
        if (file != null) {
            b(file.getAbsolutePath());
            return;
        }
        this.al = path;
        if (this.ap == null) {
            this.ap = new com.estrongs.android.pop.app.compress.an(this.ad, this.am, this.ac);
        }
        ArchiveEntryFile archiveEntryFile = (ArchiveEntryFile) a2;
        this.ap.b(this.al);
        this.ap.a(archiveEntryFile);
        if (this.ar == null) {
            this.ar = new com.estrongs.android.pop.app.compress.as(this.ad, false, true);
            this.ar.setButton(-1, m(C0000R.string.confirm_ok), new i(this));
            this.ar.setButton(-2, m(C0000R.string.confirm_cancel), new j(this));
        }
        if (!archiveEntryFile.isEncrypted() || (!this.ap.a() && this.ar.b())) {
            this.ap.show();
        } else {
            this.ar.show();
        }
    }

    @Override // com.estrongs.android.view.ar
    public void a(String str) {
        if (this.ap != null) {
            this.ap = null;
        }
        this.f2833a = str;
        this.w = str;
        if (this.z != null) {
            this.z.a(c(), true);
        }
        c(n(C0000R.string.wait_loading_file));
        if (this.as != null) {
            this.as.a();
        }
        if (this.ac != null) {
            r();
        }
        this.as = new m(this);
        this.as.start();
    }

    protected void a(List<com.estrongs.fs.g> list) {
        u();
        c(list);
        int size = this.B.size();
        if (size != 0) {
            if (size >= 200) {
                size = 200;
            }
            this.T = size;
            b(this.B);
            return;
        }
        if (com.estrongs.android.util.ak.aU(c())) {
            if (com.estrongs.android.util.ak.aJ(c())) {
                f(C0000R.string.list_empty_bt);
                return;
            } else {
                f(C0000R.string.list_empty);
                return;
            }
        }
        if ("mounted".equals(Environment.getExternalStorageState())) {
            f(C0000R.string.folder_empty);
        } else {
            f(C0000R.string.sdcard_unmounted);
        }
    }

    public void a(List<com.estrongs.fs.g> list, boolean z) {
        w();
        String aF = com.estrongs.android.util.ak.aF(this.f2833a);
        if (this.ah) {
            b(list, z);
        } else {
            new com.estrongs.android.pop.app.compress.a(this.ad, true, aF, this.f2834b, null, new k(this, aF, list, z)).a();
        }
    }

    @Override // com.estrongs.android.view.ar
    public void a_() {
        r();
        super.a_();
    }

    @Override // com.estrongs.android.view.ar
    public void b(boolean z) {
        if (this.an == null) {
            return;
        }
        this.w = (this.an == null || "/".equals(this.an.getPath())) ? this.f2833a : this.f2833a + '*' + this.an.getPath();
        this.aq.clear();
        this.B.clear();
        File[] listFiles = this.an.listFiles();
        ArrayList arrayList = new ArrayList();
        for (File file : listFiles) {
            arrayList.add(new com.estrongs.fs.impl.e.a(file));
        }
        a(arrayList);
        u();
    }

    @Override // com.estrongs.android.view.ar
    public String c() {
        return this.w;
    }

    @Override // com.estrongs.android.view.ar
    public void g() {
        b(false);
    }

    @Override // com.estrongs.android.view.ar
    public com.estrongs.fs.g j() {
        if (this.an == null || "/".equals(this.an.getPath())) {
            return null;
        }
        this.an = this.an.getParentFile();
        g();
        if (this.z != null) {
            this.z.a(c(), true);
        }
        return new com.estrongs.fs.impl.e.a(this.an);
    }

    @Override // com.estrongs.android.view.ar
    public boolean m() {
        return this.q.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
        if (this.ac != null) {
            this.ac.d();
            this.ac.g();
            try {
                this.ac.c();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public File o() {
        return this.an;
    }

    public com.estrongs.io.archive.h p() {
        return this.ac;
    }
}
