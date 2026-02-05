package com.estrongs.android.pop.app.diskusage;

import android.content.ContextWrapper;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.av;
import com.estrongs.android.widget.z;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class b extends z {

    /* renamed from: a, reason: collision with root package name */
    public static String f664a = "fileIcon";

    /* renamed from: b, reason: collision with root package name */
    public static String f665b = "fileName";
    public static String c = "fileSize";
    public static String d = "fileType";
    public static String e = "fileNum";
    public static String f = "fileSizePrecent";
    public static String g = "fileSizeRate";
    public static final DecimalFormat h = new DecimalFormat("0.00");
    private static final d t = new d();
    private long k;
    private File n;
    private com.estrongs.fs.c.a o;
    private com.estrongs.fs.c.b p;
    private long q;
    private ContextWrapper r;
    private boolean l = false;
    private boolean m = true;
    public Map<String, com.estrongs.fs.c.a> i = new HashMap();
    private List<Map.Entry<File, com.estrongs.fs.c.a>> s = new ArrayList(10);

    public b(ContextWrapper contextWrapper) {
        this.r = contextWrapper;
    }

    private void a(String str, boolean z) {
        if (f665b.equals(str)) {
            if (super.c() == null) {
                return;
            }
            com.estrongs.android.util.q.f2708a.a(z);
            Arrays.sort(super.c(), com.estrongs.android.util.q.f2708a);
            return;
        }
        if (d.equals(str)) {
            if (super.c() != null) {
                com.estrongs.android.util.q.f2709b.a(z);
                Arrays.sort(super.c(), com.estrongs.android.util.q.f2709b);
                return;
            }
            return;
        }
        if (!c.equals(str)) {
            return;
        }
        t.a(z);
        try {
            Collections.sort(this.s, t);
        } catch (IllegalArgumentException e2) {
        }
        File[] fileArr = new File[this.s.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.s.size()) {
                super.a(fileArr);
                return;
            } else {
                fileArr[i2] = this.s.get(i2).getKey();
                i = i2 + 1;
            }
        }
    }

    public com.estrongs.fs.c.a a(File file) {
        return this.i.get(file.getAbsolutePath());
    }

    @Override // com.estrongs.android.widget.z
    protected Object a(File file, String str) {
        if (this.n == null || this.n != file) {
            this.n = file;
            this.o = this.i.get(file.getAbsolutePath());
        }
        if (this.o == null) {
            return null;
        }
        if (f664a.equals(str)) {
            return file.isDirectory() ? this.r.getResources().getDrawable(C0000R.drawable.format_folder) : com.estrongs.android.d.d.a(String.valueOf(av.a(file.getName())));
        }
        if (f665b.equals(str)) {
            String name = file.getName();
            return (!name.endsWith(".lnk") || name.lastIndexOf(".lnk") <= 0) ? name : name.substring(0, name.lastIndexOf(".lnk"));
        }
        if (c.equals(str)) {
            return com.estrongs.fs.c.d.c(this.o.b());
        }
        if (e.equals(str)) {
            return "" + this.o.c() + " / " + this.o.d();
        }
        if (f.equals(str)) {
            return h.format((this.o.b() * 100.0d) / (this.q * 1.0d)) + "%";
        }
        if (g.equals(str)) {
            return Float.valueOf(((float) this.o.b()) / ((float) this.q));
        }
        return null;
    }

    public void a() {
        this.l = true;
        if (this.o != null) {
            this.o.a();
        }
    }

    public void a(int i) {
        String str = "";
        if (i == 0 || 1 == i) {
            str = f665b;
        } else if (2 == i || 3 == i) {
            str = d;
        } else if (4 == i || 5 == i) {
            str = c;
        }
        a(str, i % 2 == 0);
    }

    public void a(long j) {
        this.q = j;
    }

    public void a(com.estrongs.fs.c.b bVar) {
        this.p = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.estrongs.android.widget.z
    public boolean a(File[] fileArr) {
        this.l = false;
        if (fileArr == null) {
            return false;
        }
        if (!this.m) {
            this.i.clear();
        }
        HashMap hashMap = new HashMap();
        for (File file : fileArr) {
            if (this.l) {
                break;
            }
            if (this.i.containsKey(file.getAbsolutePath())) {
                this.p.a(file);
            } else {
                this.o = new com.estrongs.fs.c.c(this.p, this.k);
                this.o.a(file);
                this.i.put(file.getAbsolutePath(), this.o);
            }
            hashMap.put(file, this.i.get(file.getAbsolutePath()));
        }
        this.s.clear();
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext() && !this.l) {
            this.s.add(it.next());
        }
        hashMap.clear();
        if (!this.l) {
            super.a(fileArr);
            return true;
        }
        hashMap.clear();
        this.s.clear();
        return false;
    }

    public void b(long j) {
        this.k = j;
    }
}
