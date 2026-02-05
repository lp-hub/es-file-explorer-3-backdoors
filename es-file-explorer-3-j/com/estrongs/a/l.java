package com.estrongs.a;

import android.util.SparseArray;
import com.estrongs.android.util.aw;
import com.estrongs.fs.b.z;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class l {

    /* renamed from: b, reason: collision with root package name */
    private static final String f225b = com.estrongs.fs.c.d.f3039a + "/task/tasks.rpt";
    private static l c = null;
    private ArrayList<JSONObject> d = new ArrayList<>();
    private ArrayList<a> e = new ArrayList<>();
    private SparseArray<List<a>> f = new SparseArray<>();
    private o g = null;

    /* renamed from: a, reason: collision with root package name */
    public final com.estrongs.a.a.k f226a = new m(this);
    private Comparator<a> h = new n(this);

    private l() {
        d();
    }

    private a a(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("task_type");
        return 6 == optInt ? new com.estrongs.fs.b.q(com.estrongs.fs.d.a(), jSONObject) : 23 == optInt ? new z(com.estrongs.fs.d.a(), jSONObject) : new a(jSONObject);
    }

    public static synchronized l a() {
        l lVar;
        synchronized (l.class) {
            if (c == null) {
                c = new l();
            }
            lVar = c;
        }
        return lVar;
    }

    private static JSONArray a(List<JSONObject> list) {
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<JSONObject> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        } catch (Exception e) {
        }
        return jSONArray;
    }

    private void c() {
        OutputStreamWriter outputStreamWriter;
        Throwable th;
        JSONArray a2 = a(this.d);
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            File file = new File(f225b);
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(!file.exists() ? com.estrongs.fs.c.d.i(f225b) : file));
        } catch (IOException e) {
        } catch (Throwable th2) {
            outputStreamWriter = null;
            th = th2;
        }
        try {
            outputStreamWriter.write(a2.toString());
            com.estrongs.fs.c.d.a(outputStreamWriter);
        } catch (IOException e2) {
            outputStreamWriter2 = outputStreamWriter;
            com.estrongs.fs.c.d.a(outputStreamWriter2);
        } catch (Throwable th3) {
            th = th3;
            com.estrongs.fs.c.d.a(outputStreamWriter);
            throw th;
        }
    }

    private void c(a aVar, boolean z) {
        aVar.removeTaskStatusChangeListener(this.f226a);
        if (this.e.contains(aVar)) {
            if (z && aVar.getTaskStatus() != 4 && aVar.getTaskStatus() != 5) {
                aVar.requestStop();
            }
            this.e.remove(aVar);
        } else {
            List<a> list = this.f.get(aVar.getTastType());
            if (list != null) {
                list.remove(aVar);
            }
        }
        Iterator<JSONObject> it = this.d.iterator();
        while (it.hasNext()) {
            JSONObject next = it.next();
            if (aVar.getTaskId() == next.optLong("task_id")) {
                this.d.remove(next);
                return;
            }
        }
    }

    private void d() {
        try {
            String stringBuffer = com.estrongs.fs.c.d.j(f225b).toString();
            if (aw.a((CharSequence) stringBuffer)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(stringBuffer);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    this.d.add(optJSONObject);
                    d(a(optJSONObject));
                }
            }
        } catch (Exception e) {
        }
    }

    private void d(a aVar) {
        aVar.addTaskStatusChangeListener(this.f226a);
        this.e.add(aVar);
    }

    public synchronized void a(a aVar) {
        a(aVar, true);
    }

    public synchronized void a(a aVar, boolean z) {
        if (this.e.contains(aVar)) {
            aVar.addTaskStatusChangeListener(this.f226a);
        } else {
            d(aVar);
            if (this.g != null && z) {
                this.g.a(aVar);
            }
            b(aVar);
        }
    }

    public void a(o oVar) {
        this.g = oVar;
    }

    public List<a> b() {
        Collections.sort(this.e, this.h);
        return this.e;
    }

    public synchronized void b(a aVar) {
        if (!this.d.contains(aVar.summary())) {
            this.d.add(aVar.summary());
        }
        c();
    }

    public void b(a aVar, boolean z) {
        c(aVar, false);
        if (this.g != null && z) {
            this.g.b(aVar);
        }
        c();
    }

    public void c(a aVar) {
        b(aVar, true);
    }
}
