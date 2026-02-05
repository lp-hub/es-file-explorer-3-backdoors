package com.estrongs.fs.impl.n;

import android.os.Looper;
import com.estrongs.a.b.l;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.view.ar;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import com.estrongs.fs.j;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class a implements j {

    /* renamed from: a, reason: collision with root package name */
    private Object f3140a = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public List<g> a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(ak.a());
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    arrayList2.addAll(d((String) arrayList.get(i)));
                    break;
                }
                if (((String) arrayList.get(i)).startsWith((String) arrayList.get(i2))) {
                    break;
                }
                i2++;
            }
        }
        return arrayList2;
    }

    private List<g> d(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("searchPath").append("=").append(str);
        sb.append("&&").append("category").append("=").append(c());
        sb.append("&&").append("recursion").append("=").append("true");
        return com.estrongs.fs.d.a().a(str, sb.toString(), (l<String>) null);
    }

    @Override // com.estrongs.fs.j
    public g a(String str) {
        return null;
    }

    @Override // com.estrongs.fs.j
    public synchronized List<g> a(g gVar, h hVar, TypedMap typedMap) {
        ar t;
        List<g> list = null;
        synchronized (this) {
            if (!new File(b()).exists() || typedMap.getBoolean("refresh")) {
                list = a();
                a(list);
            } else {
                List<g> e = e();
                if (e != null) {
                    if (Looper.myLooper() == null) {
                        Looper.prepare();
                    }
                    if (d()) {
                        FileExplorerActivity E = FileExplorerActivity.E();
                        if (E != null && (t = E.t()) != null) {
                            new f(this, t, e).execute(new String[0]);
                            a(false);
                        }
                    }
                    list = e;
                }
            }
        }
        return list;
    }

    public void a(String str, String str2) {
        new Thread(new e(this, str, str2)).start();
    }

    protected void a(List<g> list) {
        new Thread(new b(this, list)).start();
    }

    protected abstract void a(boolean z);

    protected abstract String b();

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(List<g> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                c(arrayList);
                return;
            } else {
                arrayList.add(list.get(i2).getAbsolutePath());
                i = i2 + 1;
            }
        }
    }

    @Override // com.estrongs.fs.j
    public boolean b(String str) {
        return true;
    }

    @Override // com.estrongs.fs.j
    public InputStream c(String str) {
        return null;
    }

    protected abstract String c();

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(List<String> list) {
        synchronized (this.f3140a) {
            PrintWriter printWriter = null;
            try {
                try {
                    File parentFile = new File(b()).getParentFile();
                    if (!parentFile.exists()) {
                        parentFile.mkdirs();
                    }
                    PrintWriter printWriter2 = new PrintWriter(new OutputStreamWriter(new FileOutputStream(b())));
                    int i = 0;
                    while (true) {
                        try {
                            int i2 = i;
                            if (i2 >= list.size()) {
                                break;
                            }
                            printWriter2.println(list.get(i2));
                            i = i2 + 1;
                        } catch (FileNotFoundException e) {
                            e = e;
                            printWriter = printWriter2;
                            e.printStackTrace();
                            if (printWriter != null) {
                                printWriter.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            printWriter = printWriter2;
                            if (printWriter != null) {
                                printWriter.close();
                            }
                            throw th;
                        }
                    }
                    if (printWriter2 != null) {
                        printWriter2.close();
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void d(List<String> list) {
        new Thread(new c(this, list)).start();
    }

    protected abstract boolean d();

    protected List<g> e() {
        List<String> f = f();
        ArrayList arrayList = new ArrayList();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= f.size()) {
                return arrayList;
            }
            if (currentTask != null && currentTask.taskStopped()) {
                return null;
            }
            File file = new File(f.get(i2));
            if (file.exists()) {
                arrayList.add(new com.estrongs.fs.impl.local.b(file));
            }
            i = i2 + 1;
        }
    }

    public void e(List<String> list) {
        new Thread(new d(this, list)).start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        r0 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        if (r1 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        r1.close();
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<String> f() {
        BufferedReader bufferedReader;
        ArrayList arrayList;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        synchronized (this.f3140a) {
            ArrayList arrayList2 = new ArrayList();
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(b())));
                while (true) {
                    try {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e) {
                                    }
                                }
                                return arrayList2;
                            }
                            if (currentTask != null && currentTask.taskStopped()) {
                                break;
                            }
                            if (readLine.length() > 0) {
                                arrayList2.add(readLine);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e3) {
                                }
                            }
                            return new ArrayList();
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e5) {
                e = e5;
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                throw th;
            }
        }
        return arrayList;
    }
}
