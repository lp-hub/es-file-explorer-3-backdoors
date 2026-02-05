package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class g extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    private List<com.estrongs.fs.g> f3002a;

    /* renamed from: b, reason: collision with root package name */
    private String f3003b;
    private Activity c;
    private List<com.estrongs.fs.g> d;
    private List<String> e = null;
    private List<String> f = null;
    private List<String> g = null;
    private List<String> h = null;
    private List<String> i = null;
    private List<String> j = null;
    private int k = 1;

    public g(Activity activity, List<com.estrongs.fs.g> list, String str) {
        this.c = activity;
        this.f3002a = list;
        this.f3003b = str;
        int size = list.size();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            sb.append(list.get(i).getName());
            if (i + 1 != size) {
                sb.append(" , ");
                if (i >= 4) {
                    sb.append("...");
                    break;
                }
            }
            i++;
        }
        this.processData.j = sb.toString();
        this.processData.p = false;
        this.processData.l = false;
        this.processData.m = false;
        this.processData.n = false;
    }

    private void a(File file, List<String> list, List<String> list2, List<String> list3, List<String> list4) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    a(file2, list, list2, list3, list4);
                }
                return;
            }
            return;
        }
        this.k |= com.estrongs.fs.a.a.h(file.getAbsolutePath());
        if (com.estrongs.android.util.aw.e()) {
            list4.add(file.getAbsolutePath());
            return;
        }
        if (com.estrongs.fs.impl.media.a.a(file.getAbsolutePath())) {
            list.add(file.getAbsolutePath());
        } else if (com.estrongs.fs.impl.media.a.b(file.getAbsolutePath())) {
            list2.add(file.getAbsolutePath());
        } else if (com.estrongs.fs.impl.media.a.c(file.getAbsolutePath())) {
            list3.add(file.getAbsolutePath());
        }
    }

    public List<com.estrongs.fs.g> a() {
        return this.f3002a;
    }

    public String b() {
        return this.f3003b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.a.a
    public void postTask() {
        super.postTask();
        if (this.d == null || this.d.size() < 1 || !com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
            return;
        }
        try {
            if (com.estrongs.android.util.aw.e()) {
                if (this.i.size() > 0) {
                    com.estrongs.fs.impl.media.e.b(this.i);
                }
                if (this.j.size() > 0) {
                    com.estrongs.fs.impl.media.e.a(this.j);
                }
                com.estrongs.fs.impl.media.e.a(this.h, null);
                return;
            }
            if (this.i.size() > 0) {
                com.estrongs.fs.impl.j.b.b().c(this.i);
            }
            if (this.j.size() > 0) {
                com.estrongs.fs.impl.j.b.b().b(this.j);
            }
            if (this.i.size() > 0) {
                com.estrongs.fs.impl.h.b.b().c(this.i);
            }
            if (this.j.size() > 0) {
                com.estrongs.fs.impl.h.b.b().b(this.j);
            }
            if (this.i.size() > 0) {
                com.estrongs.fs.impl.p.b.b().c(this.i);
            }
            if (this.j.size() > 0) {
                com.estrongs.fs.impl.p.b.b().b(this.j);
            }
            if (this.e.size() > 0) {
                com.estrongs.fs.impl.j.b.b().a(this.e);
            }
            if (this.f.size() > 0) {
                com.estrongs.fs.impl.h.b.b().a(this.f);
            }
            if (this.g.size() > 0) {
                com.estrongs.fs.impl.p.b.b().a(this.g);
            }
        } catch (MediaStoreInsertException e) {
            e.printStackTrace();
            bt.b();
        }
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        boolean z;
        try {
            try {
            } catch (Exception e) {
                e.printStackTrace();
                setTaskResult(10000, new com.estrongs.a.q(e.toString(), e));
                if (this.d == null || this.d.size() < 1) {
                    z = false;
                } else {
                    if (com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
                        this.e = new ArrayList();
                        this.f = new ArrayList();
                        this.g = new ArrayList();
                        this.h = new ArrayList();
                        this.i = new ArrayList();
                        this.j = new ArrayList();
                        for (com.estrongs.fs.g gVar : this.d) {
                            String absolutePath = gVar.getAbsolutePath();
                            String str = com.estrongs.android.util.ak.e(absolutePath) + "/" + gVar.getExtra("item_rename_new_name");
                            if (new File(str).isDirectory() && !absolutePath.endsWith("/")) {
                                absolutePath = absolutePath + "/";
                            }
                            if (gVar.getFileType().b()) {
                                this.i.add(absolutePath);
                            } else {
                                this.j.add(absolutePath);
                            }
                            a(new File(str), this.e, this.f, this.g, this.h);
                        }
                    }
                    String str2 = this.f3003b;
                    com.estrongs.fs.a.b.a().a(this.f3003b.endsWith("/") ? this.f3003b + "*" : this.f3003b + "/*", this.k);
                    z = false;
                }
            }
            if (this.f3002a == null || this.f3002a.size() <= 0) {
                if (this.d == null || this.d.size() < 1) {
                    return false;
                }
                if (com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
                    this.e = new ArrayList();
                    this.f = new ArrayList();
                    this.g = new ArrayList();
                    this.h = new ArrayList();
                    this.i = new ArrayList();
                    this.j = new ArrayList();
                    for (com.estrongs.fs.g gVar2 : this.d) {
                        String absolutePath2 = gVar2.getAbsolutePath();
                        String str3 = com.estrongs.android.util.ak.e(absolutePath2) + "/" + gVar2.getExtra("item_rename_new_name");
                        if (new File(str3).isDirectory() && !absolutePath2.endsWith("/")) {
                            absolutePath2 = absolutePath2 + "/";
                        }
                        if (gVar2.getFileType().b()) {
                            this.i.add(absolutePath2);
                        } else {
                            this.j.add(absolutePath2);
                        }
                        a(new File(str3), this.e, this.f, this.g, this.h);
                    }
                }
                String str4 = this.f3003b;
                com.estrongs.fs.a.b.a().a(this.f3003b.endsWith("/") ? this.f3003b + "*" : this.f3003b + "/*", this.k);
                return false;
            }
            this.d = new LinkedList();
            int size = this.f3002a.size();
            this.processData.c = size;
            this.processData.e = size;
            onProgress(this.processData);
            for (int i = 0; i < size; i++) {
                if (taskStopped()) {
                    if (this.d == null || this.d.size() < 1) {
                        return false;
                    }
                    if (com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
                        this.e = new ArrayList();
                        this.f = new ArrayList();
                        this.g = new ArrayList();
                        this.h = new ArrayList();
                        this.i = new ArrayList();
                        this.j = new ArrayList();
                        for (com.estrongs.fs.g gVar3 : this.d) {
                            String absolutePath3 = gVar3.getAbsolutePath();
                            String str5 = com.estrongs.android.util.ak.e(absolutePath3) + "/" + gVar3.getExtra("item_rename_new_name");
                            if (new File(str5).isDirectory() && !absolutePath3.endsWith("/")) {
                                absolutePath3 = absolutePath3 + "/";
                            }
                            if (gVar3.getFileType().b()) {
                                this.i.add(absolutePath3);
                            } else {
                                this.j.add(absolutePath3);
                            }
                            a(new File(str5), this.e, this.f, this.g, this.h);
                        }
                    }
                    String str6 = this.f3003b;
                    com.estrongs.fs.a.b.a().a(this.f3003b.endsWith("/") ? this.f3003b + "*" : this.f3003b + "/*", this.k);
                    return false;
                }
                com.estrongs.fs.g gVar4 = this.f3002a.get(i);
                this.processData.f196a = gVar4.getName();
                onProgress(this.processData);
                if (!com.estrongs.android.pop.utils.aj.a(this.c, gVar4, (String) gVar4.getExtra("item_rename_new_name"), this.f3003b, false, false)) {
                    if (this.d == null || this.d.size() < 1) {
                        return false;
                    }
                    if (com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
                        this.e = new ArrayList();
                        this.f = new ArrayList();
                        this.g = new ArrayList();
                        this.h = new ArrayList();
                        this.i = new ArrayList();
                        this.j = new ArrayList();
                        for (com.estrongs.fs.g gVar5 : this.d) {
                            String absolutePath4 = gVar5.getAbsolutePath();
                            String str7 = com.estrongs.android.util.ak.e(absolutePath4) + "/" + gVar5.getExtra("item_rename_new_name");
                            if (new File(str7).isDirectory() && !absolutePath4.endsWith("/")) {
                                absolutePath4 = absolutePath4 + "/";
                            }
                            if (gVar5.getFileType().b()) {
                                this.i.add(absolutePath4);
                            } else {
                                this.j.add(absolutePath4);
                            }
                            a(new File(str7), this.e, this.f, this.g, this.h);
                        }
                    }
                    String str8 = this.f3003b;
                    com.estrongs.fs.a.b.a().a(this.f3003b.endsWith("/") ? this.f3003b + "*" : this.f3003b + "/*", this.k);
                    return false;
                }
                this.d.add(gVar4);
                this.processData.d = i + 1;
                this.processData.f = i + 1;
                onProgress(this.processData);
            }
            setTaskResult(0, null);
            if (this.d == null || this.d.size() < 1) {
                z = true;
            } else {
                if (com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
                    this.e = new ArrayList();
                    this.f = new ArrayList();
                    this.g = new ArrayList();
                    this.h = new ArrayList();
                    this.i = new ArrayList();
                    this.j = new ArrayList();
                    for (com.estrongs.fs.g gVar6 : this.d) {
                        String absolutePath5 = gVar6.getAbsolutePath();
                        String str9 = com.estrongs.android.util.ak.e(absolutePath5) + "/" + gVar6.getExtra("item_rename_new_name");
                        if (new File(str9).isDirectory() && !absolutePath5.endsWith("/")) {
                            absolutePath5 = absolutePath5 + "/";
                        }
                        if (gVar6.getFileType().b()) {
                            this.i.add(absolutePath5);
                        } else {
                            this.j.add(absolutePath5);
                        }
                        a(new File(str9), this.e, this.f, this.g, this.h);
                    }
                }
                String str10 = this.f3003b;
                com.estrongs.fs.a.b.a().a(this.f3003b.endsWith("/") ? this.f3003b + "*" : this.f3003b + "/*", this.k);
                z = true;
            }
            return z;
        } catch (Throwable th) {
            if (this.d == null) {
                throw th;
            }
            if (this.d.size() < 1) {
                throw th;
            }
            if (com.estrongs.android.util.ak.aZ(this.d.get(0).getAbsolutePath())) {
                this.e = new ArrayList();
                this.f = new ArrayList();
                this.g = new ArrayList();
                this.h = new ArrayList();
                this.i = new ArrayList();
                this.j = new ArrayList();
                for (com.estrongs.fs.g gVar7 : this.d) {
                    String absolutePath6 = gVar7.getAbsolutePath();
                    String str11 = com.estrongs.android.util.ak.e(absolutePath6) + "/" + gVar7.getExtra("item_rename_new_name");
                    if (new File(str11).isDirectory() && !absolutePath6.endsWith("/")) {
                        absolutePath6 = absolutePath6 + "/";
                    }
                    if (gVar7.getFileType().b()) {
                        this.i.add(absolutePath6);
                    } else {
                        this.j.add(absolutePath6);
                    }
                    a(new File(str11), this.e, this.f, this.g, this.h);
                }
            }
            String str12 = this.f3003b;
            com.estrongs.fs.a.b.a().a(this.f3003b.endsWith("/") ? this.f3003b + "*" : this.f3003b + "/*", this.k);
            throw th;
        }
    }
}
