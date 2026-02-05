package com.estrongs.android.pop.view.utils;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ak;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class RemoteSynchronizer {
    public static aa e;

    /* renamed from: a, reason: collision with root package name */
    public static final String f1430a = com.estrongs.android.pop.a.c + "/synFiles";

    /* renamed from: b, reason: collision with root package name */
    public static final String f1431b = com.estrongs.android.pop.a.c + "/synMapFiles";
    public static Map<String, RemoteFile> c = new HashMap();
    public static Map<String, RemoteFile> d = new LinkedHashMap();
    private static HashMap<String, ab> f = new HashMap<>();
    private static final Object g = new Object();
    private static boolean h = false;
    private static com.estrongs.a.a.j i = new x();
    private static boolean j = false;
    private static boolean k = false;
    private static Object l = new Object();
    private static Object m = new Object();

    /* loaded from: classes.dex */
    public class RemoteFile implements Serializable {
        private static final long serialVersionUID = -1026136086149303164L;
        public long lastModified;
        public String path;
        public long size;
        public String tmpPath = null;
        public String cachePath = null;
        public long localFileLastModified = -1;

        public RemoteFile(com.estrongs.fs.g gVar) {
            this.path = null;
            this.size = -1L;
            this.lastModified = -1L;
            this.path = gVar.getAbsolutePath();
            this.size = gVar.length();
            this.lastModified = gVar.lastModified();
        }
    }

    public static void a() {
        new Thread(new w(), "RemoteSynchronizerControl").start();
    }

    public static void a(RemoteFile remoteFile) {
        synchronized (g) {
            if (!h) {
                a();
                h = true;
            }
        }
        synchronized (f) {
            ab abVar = f.get(remoteFile.path);
            if (abVar == null) {
                f.put(remoteFile.path, new ab());
                d.put(remoteFile.path, remoteFile);
                b();
            } else {
                abVar.f1433a = true;
            }
            f.notify();
        }
    }

    public static void a(String str) {
        synchronized (m) {
            if (e == null) {
                e = new aa(str);
                e.startWatching();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static y b(RemoteFile remoteFile, ab abVar) {
        y yVar = new y(remoteFile, abVar);
        yVar.setDescription(String.format(FexApplication.a().getString(C0000R.string.synchronize_task_description), ak.bv(ak.aY(remoteFile.path))));
        yVar.addPostListener(i);
        return yVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:45:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b() {
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(f1430a));
                try {
                    Iterator<RemoteFile> it = d.values().iterator();
                    while (it.hasNext()) {
                        objectOutputStream.writeObject(it.next());
                    }
                    objectOutputStream.flush();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                    e.printStackTrace();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (IOException e5) {
                    e = e5;
                    e.printStackTrace();
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e7) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e8) {
            e = e8;
            objectOutputStream = null;
        } catch (IOException e9) {
            e = e9;
            objectOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void c() {
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(new FileOutputStream(f1431b));
                } catch (Throwable th) {
                    th = th;
                    if (objectOutputStream2 != null) {
                        try {
                            objectOutputStream2.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                e = e3;
                objectOutputStream = null;
            } catch (IOException e4) {
                e = e4;
            }
            try {
                objectOutputStream.writeObject(c);
                objectOutputStream.flush();
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e5) {
                    }
                }
            } catch (FileNotFoundException e6) {
                e = e6;
                e.printStackTrace();
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e7) {
                    }
                }
            } catch (IOException e8) {
                e = e8;
                objectOutputStream2 = objectOutputStream;
                e.printStackTrace();
                if (objectOutputStream2 != null) {
                    try {
                        objectOutputStream2.close();
                    } catch (IOException e9) {
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0098 A[Catch: Exception -> 0x00d6, all -> 0x013f, TryCatch #16 {Exception -> 0x00d6, all -> 0x013f, blocks: (B:73:0x0092, B:75:0x0098, B:76:0x009f, B:77:0x00a7, B:79:0x00ad, B:82:0x00c8, B:85:0x00d2, B:91:0x0121), top: B:72:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ad A[Catch: Exception -> 0x00d6, all -> 0x013f, TryCatch #16 {Exception -> 0x00d6, all -> 0x013f, blocks: (B:73:0x0092, B:75:0x0098, B:76:0x009f, B:77:0x00a7, B:79:0x00ad, B:82:0x00c8, B:85:0x00d2, B:91:0x0121), top: B:72:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void d() {
        ObjectInputStream objectInputStream;
        Iterator<Map.Entry<? extends String, ? extends RemoteFile>> it;
        ObjectInputStream objectInputStream2;
        ObjectInputStream objectInputStream3 = null;
        synchronized (l) {
            if (j && k) {
                return;
            }
            if (!com.estrongs.android.pop.q.a(FexApplication.a()).o()) {
                new File(f1430a).delete();
                return;
            }
            HashSet hashSet = new HashSet();
            if (!j) {
                ObjectInputStream objectInputStream4 = f1430a;
                if (new File((String) objectInputStream4).exists()) {
                    try {
                        j = true;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        FileInputStream fileInputStream = new FileInputStream(f1430a);
                        objectInputStream2 = new ObjectInputStream(fileInputStream);
                        try {
                            ArrayList arrayList = new ArrayList();
                            while (fileInputStream.available() > 0) {
                                arrayList.add((RemoteFile) objectInputStream2.readObject());
                            }
                            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                                RemoteFile remoteFile = (RemoteFile) arrayList.get(i2);
                                if (new File(remoteFile.cachePath).lastModified() >= remoteFile.localFileLastModified) {
                                    a(remoteFile);
                                }
                                hashSet.add(remoteFile.path);
                            }
                            if (objectInputStream2 != null) {
                                try {
                                    objectInputStream2.close();
                                } catch (IOException e2) {
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            j = false;
                            e.printStackTrace();
                            if (objectInputStream2 != null) {
                                try {
                                    objectInputStream2.close();
                                } catch (IOException e4) {
                                }
                            }
                            if (!k) {
                                k = true;
                                try {
                                    FileInputStream fileInputStream2 = new FileInputStream(f1431b);
                                    objectInputStream = new ObjectInputStream(fileInputStream2);
                                    try {
                                        if (fileInputStream2.available() > 0) {
                                        }
                                        it = r2.entrySet().iterator();
                                        while (it.hasNext()) {
                                        }
                                        c.putAll(r2);
                                        if (objectInputStream != null) {
                                        }
                                    } catch (Exception e5) {
                                        e = e5;
                                        objectInputStream3 = objectInputStream;
                                        try {
                                            k = false;
                                            e.printStackTrace();
                                            if (objectInputStream3 != null) {
                                                try {
                                                    objectInputStream3.close();
                                                } catch (IOException e6) {
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            objectInputStream = objectInputStream3;
                                            if (objectInputStream != null) {
                                                try {
                                                    objectInputStream.close();
                                                } catch (IOException e7) {
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        if (objectInputStream != null) {
                                        }
                                        throw th;
                                    }
                                } catch (Exception e8) {
                                    e = e8;
                                } catch (Throwable th4) {
                                    th = th4;
                                    objectInputStream = null;
                                }
                            }
                        }
                    } catch (Exception e9) {
                        e = e9;
                        objectInputStream2 = null;
                    } catch (Throwable th5) {
                        th = th5;
                        objectInputStream4 = 0;
                        if (objectInputStream4 != 0) {
                            try {
                                objectInputStream4.close();
                            } catch (IOException e10) {
                            }
                        }
                        throw th;
                    }
                }
            }
            if (!k && new File(f1431b).exists()) {
                k = true;
                FileInputStream fileInputStream22 = new FileInputStream(f1431b);
                objectInputStream = new ObjectInputStream(fileInputStream22);
                Map<? extends String, ? extends RemoteFile> map = fileInputStream22.available() > 0 ? (Map) objectInputStream.readObject() : null;
                it = map.entrySet().iterator();
                while (it.hasNext()) {
                    RemoteFile value = it.next().getValue();
                    File file = new File(value.cachePath);
                    if (!hashSet.contains(value.path) && file.lastModified() > value.localFileLastModified) {
                        a(value);
                    }
                }
                c.putAll(map);
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e11) {
                    }
                }
            }
        }
    }

    public static void e() {
        synchronized (l) {
            c.clear();
            if (new File(f1431b).exists()) {
                new File(f1431b).delete();
            }
        }
    }

    public static void f() {
        synchronized (m) {
            if (e != null) {
                e.stopWatching();
                e = null;
            }
        }
    }
}
