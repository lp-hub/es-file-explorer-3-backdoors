package com.estrongs.fs;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.estrongs.a.b.p;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.ui.pcs.aw;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.view.ae;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.o;
import com.estrongs.fs.b.y;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
public class d {
    private static d c;
    private Context d;

    /* renamed from: a, reason: collision with root package name */
    private static HashMap<String, j> f3043a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private static HashMap<String, String> f3044b = new HashMap<>();
    private static HashMap<String, com.estrongs.old.fs.a> e = new HashMap<>();

    private d(Context context) {
        this.d = null;
        this.d = context;
    }

    public static d a() {
        return a((Context) null);
    }

    public static d a(Context context) {
        if (c == null) {
            c = new d(FexApplication.a());
        }
        return c;
    }

    private String a(NetFsException.ERROR_CODE error_code) {
        if (error_code == NetFsException.ERROR_CODE.NETFS_ERROR_OPERATION_NOT_SUPPORT) {
            return this.d.getString(C0000R.string.operation_not_supported_message);
        }
        return null;
    }

    private void a(String str, g gVar) {
        if (str == null || gVar == null) {
            return;
        }
        try {
            switch (ak.E(str)) {
                case 0:
                    com.estrongs.fs.impl.local.d.a(str, gVar);
                    break;
                case 1:
                    com.estrongs.fs.impl.o.b.a(str, gVar);
                    break;
                case 2:
                case 5:
                case 19:
                case 20:
                    com.estrongs.old.fs.a n = n(ak.bi(str));
                    if (n != null) {
                        n.a(str, gVar);
                        break;
                    }
                    break;
                default:
                    return;
            }
        } catch (Exception e2) {
        }
    }

    public static synchronized void a(String str, j jVar) {
        synchronized (d.class) {
            if (jVar != null) {
                f3043a.put(str, jVar);
            }
        }
    }

    private void a(List<g> list, String str, h hVar, boolean z, boolean z2) {
        List<g> a2;
        if ((ak.aO(str) && ak.a(new File(str))) || (a2 = a((g) new m(str), true, false, (h) null, com.estrongs.a.b.l.f210a)) == null) {
            return;
        }
        ae aeVar = (a2 == null || a2.size() <= 0) ? null : new ae(str, Integer.MAX_VALUE);
        for (g gVar : a2) {
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            if (currentTask != null && currentTask.taskStopped()) {
                return;
            }
            if (currentTask != null) {
                currentTask.sendMessage(1, 1L, gVar.getAbsolutePath());
            }
            if (aeVar.a(gVar) && (!z2 || !gVar.getName().startsWith("."))) {
                if (gVar.getFileType().a() && z) {
                    try {
                        a(list, gVar.getAbsolutePath(), hVar, z, z2);
                    } catch (StackOverflowError e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                if (currentTask != null && currentTask.taskStopped()) {
                    return;
                }
                if (hVar == null || hVar.a(gVar)) {
                    list.add(gVar);
                }
            }
        }
    }

    private boolean a(String str, String str2) {
        if (ak.F(str)) {
            return com.estrongs.fs.impl.o.b.b(str, str2);
        }
        if (ak.H(str) || ak.G(str)) {
            com.estrongs.old.fs.a n = n(ak.bi(str));
            if (n != null) {
                return n.b(str, str2);
            }
            return false;
        }
        if (ak.an(str) || ak.aq(str) || ak.ao(str)) {
            try {
                return com.estrongs.fs.impl.i.b.g(ak.bw(str), ak.bw(str2));
            } catch (NetFsException e2) {
                throw new FileSystemException(a(e2.error), e2);
            }
        }
        if (!ak.m(str)) {
            return false;
        }
        try {
            return com.estrongs.fs.impl.q.b.b(str, str2);
        } catch (Exception e3) {
            throw new FileSystemException(e3.getMessage(), e3);
        }
    }

    private List<g> b(g gVar, boolean z, boolean z2, h hVar, com.estrongs.a.b.l<String> lVar, TypedMap typedMap) {
        String path;
        List list;
        com.estrongs.fs.a.d e2;
        if (gVar == null || (path = gVar.getPath()) == null) {
            return null;
        }
        if (path.contains("net://") && path.contains("@baidu")) {
            throw new FileSystemException("baidu-up-to-pcs");
        }
        if (!path.endsWith("/")) {
            path = path + "/";
        }
        h hVar2 = hVar == null ? h.d : hVar;
        com.estrongs.fs.a.d e3 = com.estrongs.fs.a.b.a().e(path);
        typedMap.remove("cacheStatus");
        if (!z && e3 != null && com.estrongs.fs.a.b.a().d(path)) {
            if (e3.f2955a) {
                typedMap.put("cacheStatus", 1);
            } else {
                typedMap.put("cacheStatus", 2);
            }
            typedMap.put("get_data_from_cache", true);
            return e3.a();
        }
        typedMap.put("get_data_from_cache", false);
        if (ak.aU(path)) {
            List<g> a2 = com.estrongs.fs.impl.l.a.a(this.d, path);
            if (z2) {
                com.estrongs.fs.a.b.a().a(path, a2, false);
            }
            if (!ak.aN(path)) {
                return a2;
            }
            com.estrongs.fs.impl.c.a.a(a2);
            return a2;
        }
        boolean z3 = typedMap.getInt("page", -1L) >= 2 || typedMap.getInt(INetFileSystem.LIST_OFFSET, -1L) > 0;
        boolean b2 = ak.b(path, typedMap);
        com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
        int E = ak.E(path);
        switch (E) {
            case 0:
                list = com.estrongs.fs.impl.local.d.a(path, hVar2, lVar);
                break;
            case 1:
                if (a3 != null) {
                    a3.a("SMB_List", "SMB_List");
                }
                list = com.estrongs.fs.impl.o.b.a(path, hVar2, lVar);
                break;
            case 2:
            case 5:
            case 19:
            case 20:
                String str = null;
                if (E == 2) {
                    str = "FTP_List";
                } else if (E == 5) {
                    str = "SFTP_List";
                } else if (E == 19) {
                    str = "FTPS_List";
                }
                if (a3 != null && str != null) {
                    a3.a(str, str);
                }
                com.estrongs.old.fs.a n = n(ak.bi(path));
                if (n != null) {
                    TypedMap typedMap2 = new TypedMap();
                    typedMap2.put("server", ak.h(path));
                    int g = q.a(FexApplication.a()).g(path);
                    if (ak.H(path) && q.a(FexApplication.a()).b(path)) {
                        typedMap2.put("mode", Boolean.valueOf(q.a(FexApplication.a()).f(path)));
                    }
                    typedMap2.put("encode", com.estrongs.android.util.g.a(g));
                    n.a(typedMap2);
                    list = n.a(path, hVar2);
                    break;
                } else {
                    throw new FsProviderNotFoundException(ak.bi(path), com.estrongs.android.pop.a.a.a(ak.bi(path)));
                }
                break;
            case 3:
                if (a3 != null) {
                    a3.a("Bluetooth_List", "Bluetooth_List");
                }
                list = com.estrongs.fs.impl.c.a.a(path, hVar2, lVar);
                break;
            case 4:
            case 23:
                try {
                    List a4 = com.estrongs.fs.impl.i.b.a(this.d, ak.bw(path), true, hVar2, typedMap);
                    if (ak.ao(path) && a4 != null) {
                        boolean endsWith = path.endsWith("PCS_DRIVE_Js1a7M5e_9yAcTvFX/");
                        Iterator it = a4.iterator();
                        while (it.hasNext()) {
                            com.estrongs.fs.impl.i.a aVar = (com.estrongs.fs.impl.i.a) ((g) it.next());
                            String str2 = path + aVar.getName();
                            int indexOf = aVar.absolutePath.indexOf("/>");
                            String str3 = indexOf != -1 ? path + aVar.absolutePath.substring(indexOf + 1) : null;
                            if (endsWith) {
                                str2 = str2.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
                                if (str3 != null) {
                                    str3 = str3.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files");
                                }
                            }
                            aVar.a(str2);
                            if (str3 != null) {
                                str2 = str3;
                            }
                            aVar.b(str2);
                            aVar.putExtra("user_info", aw.a().f());
                        }
                    }
                    if (!path.endsWith("@pcs/files/apps/Downloads/")) {
                        list = a4;
                        break;
                    } else {
                        List<com.estrongs.fs.impl.pcs.a> a5 = ((PcsFileSystem) com.estrongs.fs.impl.i.b.a("pcs")).a(ak.aa(path), ak.ac(path), typedMap);
                        Log.d("PCSD", "fos before downlist: " + a4);
                        if (a5 == null || a5.size() <= 0) {
                            list = a4;
                        } else {
                            if (a4 == null) {
                                a4 = new LinkedList();
                            }
                            a4.addAll(a5);
                            list = a4;
                        }
                        Log.d("PCSD", "fos after downlist: " + list);
                        break;
                    }
                } catch (NetFsException e4) {
                    throw new FileSystemException(a(e4.error), e4);
                } catch (PcsFileSystem.PcsFileSystemException e5) {
                    throw new FileSystemException(e5);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 15:
            case 16:
            case 17:
            case 24:
            case 25:
            case FTPCommand.LIST /* 26 */:
            case 27:
            case 28:
            case 29:
            case 30:
            default:
                String bi = ak.bi(path);
                j o = o(bi);
                if (o == null) {
                    throw new FileSystemException("Not result in the file system for " + bi);
                }
                if (o instanceof com.estrongs.fs.impl.f.a) {
                    list = ((com.estrongs.fs.impl.f.a) o).a(gVar, typedMap);
                } else if (o instanceof com.estrongs.fs.impl.n.a) {
                    if (typedMap == null || typedMap == TypedMap.EMPTY) {
                        typedMap = new TypedMap();
                    }
                    typedMap.put("refresh", Boolean.valueOf(z));
                    list = o.a(gVar, hVar2, typedMap);
                } else {
                    list = o.a(gVar, hVar2, typedMap);
                }
                if (ak.bi("app://").equals(bi) || ak.bi("book://").equals(bi) || ak.bi("apk://").equals(bi) || ak.bi("storage://").equals(bi)) {
                    return list;
                }
                break;
            case 12:
                return com.estrongs.fs.impl.h.b.b().a(this.d, path, hVar2, lVar, typedMap);
            case 13:
                return com.estrongs.fs.impl.j.b.b().a(this.d, path, hVar2, lVar, typedMap);
            case 14:
                return com.estrongs.fs.impl.p.b.b().a(this.d, path, hVar2, lVar, typedMap);
            case 18:
                try {
                    list = SPFileSystem.listFiles(this.d, path, z, hVar2, typedMap);
                    break;
                } catch (NetFsException e6) {
                    throw new FileSystemException(a(e6.error), e6);
                }
            case 21:
            case 22:
                if (a3 != null) {
                    a3.a("WEBDAV_List", "WEBDAV_List");
                }
                list = com.estrongs.fs.impl.q.b.a(path, hVar2, lVar);
                break;
            case FTPCommand.HELP /* 31 */:
                list = com.estrongs.fs.impl.k.a.a(path, hVar2, lVar);
                break;
        }
        if (z2 && list != null && ((!ak.aO(path) || ak.aZ(path)) && !b2)) {
            com.estrongs.fs.a.b.a().a(path, (List<g>) list, z3);
        }
        if (!typedMap.containsKey(INetFileSystem.LIST_OFFSET) || (e2 = com.estrongs.fs.a.b.a().e(path)) == null) {
            return list;
        }
        if (typedMap.getBoolean(INetFileSystem.LIST_FINISHED)) {
            e2.f2955a = true;
            return list;
        }
        e2.f2955a = false;
        return list;
    }

    private boolean b(g gVar) {
        j o;
        if (gVar == null) {
            return false;
        }
        String bi = ak.bi(gVar.getPath());
        if (!com.estrongs.android.util.aw.a((CharSequence) bi) && (o = o(bi)) != null && (o instanceof com.estrongs.fs.impl.f.a)) {
            return ((com.estrongs.fs.impl.f.a) o).a(gVar.getPath(), gVar.getAbsolutePath());
        }
        String absolutePath = gVar.getAbsolutePath();
        if (absolutePath == null) {
            return false;
        }
        p pVar = p.f215b;
        switch (ak.E(absolutePath)) {
            case 0:
                return com.estrongs.fs.impl.local.d.a(this.d, absolutePath, pVar);
            case 1:
                return com.estrongs.fs.impl.o.b.a(this.d, absolutePath, pVar);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(absolutePath));
                if (n != null) {
                    return n.c(absolutePath);
                }
                break;
            case 3:
                break;
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.a(ak.bw(absolutePath), 0L);
                } catch (NetFsException e2) {
                    throw new FileSystemException(a(e2.error), e2);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                return false;
            case 18:
                try {
                    return SPFileSystem.deleteFile(absolutePath, 0L);
                } catch (NetFsException e3) {
                    throw new FileSystemException(a(e3.error), e3);
                }
            case 21:
            case 22:
                return com.estrongs.fs.impl.q.b.a(this.d, absolutePath, pVar);
        }
        return com.estrongs.fs.impl.c.a.a(this.d, absolutePath, pVar);
    }

    public static boolean i(String str) {
        int E = ak.E(str);
        return E == 0 || E == 1;
    }

    public static g m(String str) {
        return ("apk://".equalsIgnoreCase(str) || "book://".equalsIgnoreCase(str) || "pic://".equalsIgnoreCase(str) || "music://".equalsIgnoreCase(str) || "video://".equalsIgnoreCase(str) || ak.aU(str)) ? new f(str) : new m(str);
    }

    public static com.estrongs.old.fs.a n(String str) {
        int a2 = com.estrongs.android.pop.a.a.a(str);
        if (a2 != -1) {
            throw new FsProviderNotFoundException(str, a2);
        }
        com.estrongs.old.fs.a aVar = e.get(str);
        if (aVar == null) {
            try {
                if (str.equals("ftp") || str.equals("ftps") || str.equals("ftpes")) {
                    aVar = com.estrongs.old.fs.impl.a.c.a();
                } else if (str.equals("sftp")) {
                    aVar = OldSFtpFileSystem.a();
                }
            } catch (Exception e2) {
                throw new FsProviderNotFoundException(str, a2);
            }
        }
        return aVar;
    }

    private j p(String str) {
        Method method;
        if (ak.bi("app://").equals(str)) {
            return new com.estrongs.fs.impl.b.d(this.d);
        }
        String str2 = f3044b.get(str);
        if (com.estrongs.android.util.aw.a((CharSequence) str2)) {
            return null;
        }
        try {
            Class<?> cls = Class.forName(str2);
            try {
                method = cls.getMethod("getInstance", null);
            } catch (Exception e2) {
                method = null;
            }
            j jVar = method != null ? (j) method.invoke(cls, null) : null;
            return jVar == null ? (j) j.class.cast(cls.newInstance()) : jVar;
        } catch (Exception e3) {
            return null;
        }
    }

    public g a(String str, boolean z, boolean z2) {
        g gVar;
        boolean z3;
        if (str == null) {
            return null;
        }
        if (z2) {
            gVar = com.estrongs.fs.a.b.a().g(str);
            if (gVar != null) {
                return gVar;
            }
        } else {
            gVar = null;
        }
        int E = ak.E(str);
        try {
            z3 = Looper.getMainLooper().getThread() == Thread.currentThread();
        } catch (Exception e2) {
            z3 = false;
        }
        if (z3 && ak.aP(str)) {
            g[] gVarArr = new g[1];
            Thread thread = new Thread(new e(this, gVarArr, str));
            thread.start();
            try {
                thread.join();
                return gVarArr[0];
            } catch (Exception e3) {
                return new n(str);
            }
        }
        switch (E) {
            case 0:
                gVar = com.estrongs.fs.impl.local.d.b(str);
                break;
            case 1:
                gVar = com.estrongs.fs.impl.o.b.i(str);
                break;
            case 2:
            case 5:
            case 19:
            case 20:
                try {
                    gVar = n(ak.bi(str)).h(str);
                    break;
                } catch (FileSystemException e4) {
                    break;
                }
            case 3:
                gVar = com.estrongs.fs.impl.c.a.i(str);
                break;
            case 4:
            case 23:
                try {
                    com.estrongs.fs.impl.i.a d = com.estrongs.fs.impl.i.b.d(ak.bw(str), z2 ? false : true);
                    if (ak.ao(str) && d != null) {
                        d.a(str);
                        d.b(str);
                    }
                    gVar = d;
                    break;
                } catch (Exception e5) {
                    break;
                }
            case 18:
                try {
                    gVar = SPFileSystem.getFileObject(str);
                    break;
                } catch (Exception e6) {
                    break;
                }
            case 21:
            case 22:
                gVar = com.estrongs.fs.impl.q.b.f(str);
                break;
        }
        if (gVar != null) {
            return gVar;
        }
        j o = o(ak.bi(str));
        if (o != null) {
            try {
                g a2 = o.a(str);
                return a2 == null ? new n(str) : a2;
            } catch (FileSystemException e7) {
                return new n(str);
            }
        }
        if (z) {
            return new n(str);
        }
        return null;
    }

    public InputStream a(String str, long j) {
        return a(str, j, (TypedMap) null);
    }

    public InputStream a(String str, long j, TypedMap typedMap) {
        if (str == null) {
            return null;
        }
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.a(this.d, str, j);
            case 1:
                return com.estrongs.fs.impl.o.b.a(str, j);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (n != null) {
                    return n.a(str, j);
                }
                break;
            case 3:
                break;
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.c(ak.bw(str), j);
                } catch (NetFsException e2) {
                    throw new FileSystemException(a(e2.error), e2);
                } catch (Exception e3) {
                    throw new FileSystemException(e3);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                String bi = ak.bi(str);
                j o = o(bi);
                if (o != null) {
                    return o instanceof com.estrongs.fs.impl.g.b ? ((com.estrongs.fs.impl.g.b) o).a(str, j, typedMap) : o.c(str);
                }
                throw new FileSystemException("Not result in the file system for " + bi);
            case 18:
                try {
                    return SPFileSystem.getFileInputStream(str, j);
                } catch (Exception e4) {
                    throw new FileSystemException(e4);
                }
            case 21:
            case 22:
                return com.estrongs.fs.impl.q.b.a(str, j);
        }
        return com.estrongs.fs.impl.c.a.g(str);
    }

    public OutputStream a(String str, long j, boolean z) {
        if (j == 0) {
            return f(str);
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.a(str, j);
            case 1:
                return com.estrongs.fs.impl.o.b.b(str, j);
            default:
                if (currentTask == null) {
                    return null;
                }
                currentTask.setTaskResult(8, new com.estrongs.a.q("不支持断点上传", (Exception) null));
                return null;
        }
    }

    public String a(String str, String str2, int i, String str3) {
        return q.a(this.d).a(str, str2, i, str3);
    }

    public List<g> a(g gVar, boolean z, h hVar) {
        return a(gVar, z, hVar, TypedMap.EMPTY);
    }

    public List<g> a(g gVar, boolean z, h hVar, TypedMap typedMap) {
        return a(gVar, z, true, hVar, com.estrongs.a.b.l.f210a, typedMap);
    }

    public List<g> a(g gVar, boolean z, boolean z2, h hVar, com.estrongs.a.b.l<String> lVar) {
        return a(gVar, z, z2, hVar, lVar, TypedMap.EMPTY);
    }

    public List<g> a(g gVar, boolean z, boolean z2, h hVar, com.estrongs.a.b.l<String> lVar, TypedMap typedMap) {
        if (hVar instanceof b) {
            List<h> a2 = ((b) hVar).a(ae.class);
            for (int i = 0; i < a2.size(); i++) {
                if (!((ae) a2.get(i)).a()) {
                    return new ArrayList();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        List<g> b2 = b(gVar, z, z2, null, lVar, typedMap);
        if (b2 == null) {
            return null;
        }
        if (hVar == null) {
            return b2;
        }
        for (int i2 = 0; i2 < b2.size(); i2++) {
            if (hVar.a(b2.get(i2))) {
                arrayList.add(b2.get(i2));
            }
        }
        return arrayList;
    }

    public List<g> a(g gVar, boolean z, boolean z2, h hVar, TypedMap typedMap) {
        return a(gVar, z, z2, hVar, com.estrongs.a.b.l.f210a, typedMap);
    }

    public List<g> a(String str) {
        return a(str, false);
    }

    public List<g> a(String str, String str2, com.estrongs.a.b.l<String> lVar) {
        boolean z;
        List<g> synchronizedList = Collections.synchronizedList(new ArrayList());
        com.estrongs.android.pop.app.b.j jVar = null;
        Map<String, String> b2 = com.estrongs.android.pop.app.b.i.b(str2);
        if (b2 != null && b2.size() > 0) {
            jVar = new com.estrongs.android.pop.app.b.j(b2, false, false);
        }
        try {
            z = Boolean.valueOf(b2.get("recursion")).booleanValue();
        } catch (Exception e2) {
            z = false;
        }
        a(synchronizedList, ak.bo(str), jVar, z, q.a(FexApplication.a()).p() ? false : true);
        return synchronizedList;
    }

    public List<g> a(String str, boolean z) {
        return a(new m(str), z, h.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:257:0x08b3, code lost:
    
        if (r11 != false) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x08b5, code lost:
    
        r4.sendMessage(2, java.lang.Long.valueOf(0 - r8), r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x08ca, code lost:
    
        if (r7 == null) goto L506;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0b97, code lost:
    
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x08cc, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x08cf, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0912, code lost:
    
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x0299, code lost:
    
        if (r21.equals("ubuntu") == false) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x029b, code lost:
    
        r5 = new com.estrongs.a.q(r30.d.getString(com.estrongs.android.pop.C0000R.string.operation_not_supported_message), (java.lang.Exception) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x02ac, code lost:
    
        if (r4 == null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x02ae, code lost:
    
        r4.setTaskResult(10000, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x02b4, code lost:
    
        if (r4 == null) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x02ba, code lost:
    
        if (r22.size() <= 0) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x02bc, code lost:
    
        r4.sendMessage(4, r22);
        ((com.estrongs.fs.b.k) r22.get(0)).e = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x02d5, code lost:
    
        r5 = new com.estrongs.a.q(java.text.MessageFormat.format(r30.d.getString(com.estrongs.android.pop.C0000R.string.failed_to_copy), r3.f3008a.getName()), (java.lang.Exception) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:225:0x074d A[Catch: FileSystemException -> 0x05e7, Exception -> 0x0a7f, all -> 0x0ae6, TRY_LEAVE, TryCatch #1 {Exception -> 0x0a7f, blocks: (B:20:0x005d, B:26:0x0071, B:28:0x0085, B:31:0x009a, B:32:0x00aa, B:39:0x0b34, B:40:0x0b45, B:51:0x00b7, B:52:0x00ca, B:54:0x00d2, B:65:0x0152, B:558:0x016c, B:77:0x01a9, B:79:0x01ad, B:82:0x01bf, B:84:0x01db, B:86:0x01e0, B:89:0x01e7, B:92:0x01ed, B:528:0x01f7, B:534:0x021a, B:536:0x0222, B:537:0x022d, B:516:0x0249, B:518:0x0251, B:481:0x0283, B:486:0x0291, B:488:0x029b, B:490:0x02ae, B:499:0x02d5, B:501:0x02f8, B:503:0x0302, B:504:0x0307, B:512:0x0337, B:105:0x0359, B:427:0x0365, B:430:0x0396, B:432:0x03ed, B:434:0x03f5, B:436:0x040b, B:438:0x0411, B:440:0x0446, B:442:0x044c, B:444:0x0454, B:446:0x045a, B:448:0x046a, B:449:0x0475, B:111:0x048b, B:113:0x0497, B:122:0x04cb, B:133:0x04e9, B:135:0x04f5, B:137:0x0500, B:139:0x0506, B:142:0x051d, B:143:0x0530, B:148:0x053a, B:152:0x057e, B:154:0x0588, B:156:0x058e, B:160:0x059a, B:162:0x05a4, B:165:0x05ae, B:167:0x05ca, B:175:0x061c, B:418:0x0623, B:178:0x0625, B:180:0x0631, B:182:0x0639, B:184:0x0643, B:186:0x064d, B:188:0x0653, B:387:0x066a, B:190:0x0724, B:192:0x072a, B:194:0x0730, B:196:0x07b8, B:198:0x07be, B:201:0x07c7, B:204:0x07da, B:221:0x0825, B:222:0x0827, B:225:0x074d, B:236:0x0772, B:248:0x0885, B:249:0x089f, B:263:0x08e1, B:265:0x08e6, B:282:0x0ad6, B:284:0x0adb, B:285:0x0ae5, B:303:0x09ad, B:305:0x09b2, B:360:0x0a00, B:362:0x0a05, B:349:0x0a6e, B:353:0x0a73, B:370:0x0830, B:372:0x0835, B:374:0x0879, B:378:0x0849, B:379:0x0862, B:381:0x083d, B:384:0x073c, B:397:0x06b6, B:399:0x06bc, B:401:0x06c8, B:409:0x06da, B:403:0x06ff, B:405:0x0713, B:406:0x0715, B:421:0x05e2, B:547:0x0194), top: B:19:0x005d, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0885 A[Catch: FileSystemException -> 0x05e7, Exception -> 0x0a7f, all -> 0x0ae6, TryCatch #1 {Exception -> 0x0a7f, blocks: (B:20:0x005d, B:26:0x0071, B:28:0x0085, B:31:0x009a, B:32:0x00aa, B:39:0x0b34, B:40:0x0b45, B:51:0x00b7, B:52:0x00ca, B:54:0x00d2, B:65:0x0152, B:558:0x016c, B:77:0x01a9, B:79:0x01ad, B:82:0x01bf, B:84:0x01db, B:86:0x01e0, B:89:0x01e7, B:92:0x01ed, B:528:0x01f7, B:534:0x021a, B:536:0x0222, B:537:0x022d, B:516:0x0249, B:518:0x0251, B:481:0x0283, B:486:0x0291, B:488:0x029b, B:490:0x02ae, B:499:0x02d5, B:501:0x02f8, B:503:0x0302, B:504:0x0307, B:512:0x0337, B:105:0x0359, B:427:0x0365, B:430:0x0396, B:432:0x03ed, B:434:0x03f5, B:436:0x040b, B:438:0x0411, B:440:0x0446, B:442:0x044c, B:444:0x0454, B:446:0x045a, B:448:0x046a, B:449:0x0475, B:111:0x048b, B:113:0x0497, B:122:0x04cb, B:133:0x04e9, B:135:0x04f5, B:137:0x0500, B:139:0x0506, B:142:0x051d, B:143:0x0530, B:148:0x053a, B:152:0x057e, B:154:0x0588, B:156:0x058e, B:160:0x059a, B:162:0x05a4, B:165:0x05ae, B:167:0x05ca, B:175:0x061c, B:418:0x0623, B:178:0x0625, B:180:0x0631, B:182:0x0639, B:184:0x0643, B:186:0x064d, B:188:0x0653, B:387:0x066a, B:190:0x0724, B:192:0x072a, B:194:0x0730, B:196:0x07b8, B:198:0x07be, B:201:0x07c7, B:204:0x07da, B:221:0x0825, B:222:0x0827, B:225:0x074d, B:236:0x0772, B:248:0x0885, B:249:0x089f, B:263:0x08e1, B:265:0x08e6, B:282:0x0ad6, B:284:0x0adb, B:285:0x0ae5, B:303:0x09ad, B:305:0x09b2, B:360:0x0a00, B:362:0x0a05, B:349:0x0a6e, B:353:0x0a73, B:370:0x0830, B:372:0x0835, B:374:0x0879, B:378:0x0849, B:379:0x0862, B:381:0x083d, B:384:0x073c, B:397:0x06b6, B:399:0x06bc, B:401:0x06c8, B:409:0x06da, B:403:0x06ff, B:405:0x0713, B:406:0x0715, B:421:0x05e2, B:547:0x0194), top: B:19:0x005d, outer: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x08ab  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x09dd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(com.estrongs.fs.b.k kVar) {
        byte[] bArr;
        boolean z;
        boolean z2;
        String str;
        com.estrongs.fs.b.k kVar2;
        boolean z3;
        String str2;
        OutputStream outputStream;
        long j;
        InputStream inputStream;
        int read;
        OutputStream outputStream2;
        int i;
        boolean z4;
        boolean z5;
        g gVar = kVar.f3008a;
        String str3 = kVar.f3009b;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if (currentTask == null || !(currentTask instanceof com.estrongs.fs.b.i)) {
            int i2 = 131072;
            if (ak.aJ(kVar.f3008a.getAbsolutePath()) || ak.aJ(kVar.f3009b)) {
                i2 = 5120;
            } else if (ak.an(kVar.f3008a.getAbsolutePath()) || ak.an(kVar.f3009b) || ak.aq(kVar.f3008a.getAbsolutePath()) || ak.aq(kVar.f3009b)) {
                i2 = 32768;
            }
            bArr = new byte[i2];
        } else {
            bArr = ((com.estrongs.fs.b.i) currentTask).b();
        }
        String aY = ak.aY(str3);
        if (com.estrongs.android.util.aw.e() && (com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.i) && ak.aO(aY)) {
            ((com.estrongs.fs.b.i) com.estrongs.a.a.getCurrentTask()).t.add(ak.bo(aY.endsWith("/") ? aY.substring(0, aY.length() - 1) : aY));
        }
        String absolutePath = gVar.getAbsolutePath();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                try {
                    int E = ak.E(absolutePath);
                    if (E == ak.E(str3) && (E == 4 || E == 23)) {
                        String ae = ak.ae(absolutePath);
                        String ae2 = ak.ae(str3);
                        boolean equals = ae2.equals("kanbox");
                        if (ae.equals(ae2) && ak.a(absolutePath).equals(ak.a(str3))) {
                            z = equals;
                            z2 = true;
                            str = ae2;
                        } else {
                            z = equals;
                            z2 = false;
                            str = ae2;
                        }
                    } else {
                        z = false;
                        z2 = false;
                        str = null;
                    }
                    arrayList.add(kVar);
                    boolean z6 = false;
                    boolean z7 = true;
                    boolean z8 = true;
                    String str4 = absolutePath;
                    loop0: while (true) {
                        if (arrayList.size() <= 1 && !z8) {
                            if (!z8) {
                                if (currentTask != null) {
                                    currentTask.sendMessage(1, 1L, str4);
                                }
                                arrayList.remove(0);
                            }
                            if (currentTask != null && arrayList.size() > 0) {
                                currentTask.sendMessage(4, arrayList);
                                ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                            }
                            return true;
                        }
                        if (!z8) {
                            if (currentTask != null) {
                                currentTask.sendMessage(1, 1L, str4);
                            }
                            arrayList.remove(0);
                        }
                        if (currentTask != null && currentTask.taskStopped()) {
                            if (currentTask != null && arrayList.size() > 0) {
                                currentTask.sendMessage(4, arrayList);
                                ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                            }
                            return false;
                        }
                        kVar2 = (com.estrongs.fs.b.k) arrayList.get(0);
                        String absolutePath2 = kVar2.f3008a.getAbsolutePath();
                        String str5 = kVar2.f3009b;
                        if (!absolutePath2.equalsIgnoreCase(str5)) {
                            if (z7 || z) {
                                boolean b2 = b(str5);
                                if (b2 || !z8) {
                                    z3 = b2;
                                } else {
                                    z7 = false;
                                    z3 = b2;
                                }
                            } else {
                                z3 = false;
                            }
                            if (z7 && z3) {
                                int i3 = 1;
                                if (currentTask != null && !kVar2.e) {
                                    Object[] objArr = new Object[4];
                                    objArr[0] = str5;
                                    objArr[1] = Boolean.valueOf(kVar2.c != 0);
                                    objArr[2] = kVar2.f3008a;
                                    objArr[3] = j(str5);
                                    com.estrongs.a.a.e eVar = (com.estrongs.a.a.e) currentTask.getDecision(com.estrongs.a.a.e.class, objArr);
                                    if (eVar != null) {
                                        z5 = (eVar.f && eVar.g == 1) ? false : z7;
                                        z4 = eVar.g == 5;
                                        i = eVar.g;
                                    } else {
                                        i = 1;
                                        z4 = z6;
                                        z5 = z7;
                                    }
                                    z7 = z5;
                                    z6 = z4;
                                    i3 = i;
                                } else if (!z) {
                                    z7 = false;
                                }
                                if (i3 == 2) {
                                    if (currentTask != null) {
                                        currentTask.sendMessage(2, Long.valueOf(kVar2.f3008a.length()), absolutePath2);
                                        currentTask.sendMessage(8, new Object[0]);
                                        if (currentTask instanceof y) {
                                            if (((y) currentTask).C == null) {
                                                ((y) currentTask).C = new ArrayList();
                                            }
                                            ((y) currentTask).C.add(absolutePath2);
                                            z8 = false;
                                            str4 = absolutePath2;
                                        }
                                    }
                                    z8 = false;
                                    str4 = absolutePath2;
                                } else if (i3 == 3) {
                                    if (currentTask != null && currentTask.getTaskResult().f229a == 0) {
                                        currentTask.setTaskResult(1, null);
                                    }
                                    if (currentTask != null && arrayList.size() > 0) {
                                        currentTask.sendMessage(4, arrayList);
                                        ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                    }
                                    return false;
                                }
                            }
                            boolean z9 = z6;
                            boolean z10 = z7;
                            if (!z2 || (z3 && (!z3 || z))) {
                                if (kVar2.f3008a.getFileType().a()) {
                                    List<g> a2 = a(kVar2.f3008a.getAbsolutePath());
                                    if (a2 == null) {
                                        if (currentTask != null && arrayList.size() > 0) {
                                            currentTask.sendMessage(4, arrayList);
                                            ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                        }
                                        return false;
                                    }
                                    if (!c(str5, false)) {
                                        try {
                                            if (!c(str5).d) {
                                                if (currentTask != null && arrayList.size() > 0) {
                                                    currentTask.sendMessage(4, arrayList);
                                                    ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                }
                                                return false;
                                            }
                                        } catch (Exception e2) {
                                            if (currentTask != null && arrayList.size() > 0) {
                                                currentTask.sendMessage(4, arrayList);
                                                ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                            }
                                            return false;
                                        }
                                    }
                                    String str6 = !str5.endsWith("/") ? str5 + "/" : str5;
                                    for (int i4 = 0; i4 < a2.size(); i4++) {
                                        arrayList.add(new com.estrongs.fs.b.k(a2.get(i4), str6 + ak.d(a2.get(i4).getAbsolutePath()), 0L));
                                    }
                                    if (com.estrongs.android.util.aw.e() && (com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.i) && ak.aO(str6)) {
                                        Set<String> set = ((com.estrongs.fs.b.i) com.estrongs.a.a.getCurrentTask()).t;
                                        if (str6.endsWith("/")) {
                                            str6 = str6.substring(0, str6.length() - 1);
                                        }
                                        set.add(ak.bo(str6));
                                    }
                                } else if (z2 && z3 && z) {
                                    boolean a3 = com.estrongs.fs.impl.i.b.a(ak.bw(str5), 0L);
                                    if (a3) {
                                        a3 = com.estrongs.fs.impl.i.b.f(ak.bw(absolutePath2), ak.bw(str5));
                                    }
                                    if (!a3) {
                                        if (currentTask != null && arrayList.size() > 0) {
                                            currentTask.sendMessage(4, arrayList);
                                            ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                        }
                                        return false;
                                    }
                                    if (currentTask != null) {
                                        currentTask.sendMessage(2, Long.valueOf(kVar2.f3008a.length()), absolutePath2);
                                        z6 = z9;
                                        z7 = z10;
                                        z8 = false;
                                        str4 = absolutePath2;
                                    } else {
                                        z6 = z9;
                                        z7 = z10;
                                        z8 = false;
                                        str4 = absolutePath2;
                                    }
                                } else {
                                    long length = kVar2.f3008a.length();
                                    long d = length <= 0 ? d(absolutePath2) : length;
                                    if (z9) {
                                        str5 = com.estrongs.fs.c.d.l(str5);
                                        if (currentTask != null) {
                                            currentTask.sendMessage(12, kVar2.f3008a.getPath(), str5);
                                        }
                                    }
                                    str2 = str5;
                                    if (currentTask != null) {
                                        currentTask.sendMessage(2, 0L, absolutePath2);
                                    }
                                    if (!com.estrongs.fs.impl.i.b.a(absolutePath2, str2, d)) {
                                        InputStream inputStream2 = null;
                                        outputStream = null;
                                        boolean z11 = kVar2.c > 0 && i(str2) && b(str2);
                                        if (z11) {
                                            kVar2.c = d(str2);
                                        }
                                        if (!z11 || kVar2.c <= 0) {
                                            kVar2.c = 0L;
                                        } else if (currentTask != null) {
                                            currentTask.sendMessage(2, Long.valueOf(kVar2.c), absolutePath2, "RBT");
                                        }
                                        if (z11 && kVar2.c == d && d != 0) {
                                            z6 = z9;
                                            z7 = z10;
                                            z8 = false;
                                            str4 = absolutePath2;
                                        } else {
                                            TypedMap typedMap = new TypedMap();
                                            if (z11) {
                                                try {
                                                    j = kVar2.c;
                                                } catch (FileSystemException e3) {
                                                    if (e3.getMessage() != null && e3.getMessage().contains("unauthorized")) {
                                                        com.estrongs.a.a.b bVar = (com.estrongs.a.a.b) currentTask.getDecision(com.estrongs.a.a.b.class, absolutePath2);
                                                        if (bVar.d) {
                                                            currentTask.requestStop();
                                                            if (currentTask != null && arrayList.size() > 0) {
                                                                currentTask.sendMessage(4, arrayList);
                                                                ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                            }
                                                            return false;
                                                        }
                                                        typedMap.put("NEW_USERNAME", bVar.f190b);
                                                        typedMap.put("NEW_PASSWORD", bVar.c);
                                                        inputStream2 = a(absolutePath2, z11 ? kVar2.c : 0L, typedMap);
                                                    }
                                                }
                                            } else {
                                                j = 0;
                                            }
                                            inputStream2 = a(absolutePath2, j, typedMap);
                                            if (z11 && kVar2.c > 0 && typedMap.containsKey("RBT") && !typedMap.getBoolean("RBT")) {
                                                kVar2.c = 0L;
                                                if (currentTask != null) {
                                                    currentTask.sendMessage(2, 0L, absolutePath2);
                                                }
                                            }
                                            if (inputStream2 == null) {
                                                if (currentTask != null) {
                                                    currentTask.setTaskResult(2, new com.estrongs.a.q(MessageFormat.format(this.d.getString(C0000R.string.failed_to_copy), kVar2.f3008a.getName()), (Exception) null));
                                                }
                                                if (currentTask != null && arrayList.size() > 0) {
                                                    currentTask.sendMessage(4, arrayList);
                                                    ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                }
                                                return false;
                                            }
                                            if (ak.an(str2) || ak.aq(str2) || ak.ao(str2)) {
                                                if (d != -1) {
                                                    outputStream = b(ak.bw(str2), d);
                                                    inputStream = inputStream2;
                                                    if ((d != -1 && ak.E(kVar2.f3008a.getAbsolutePath()) != 18) || inputStream == null || outputStream == null) {
                                                        try {
                                                            if (kVar2.c == 0) {
                                                                a(str2, (p) null);
                                                            }
                                                        } catch (Exception e4) {
                                                        }
                                                        if (currentTask != null) {
                                                        }
                                                        if (currentTask != null) {
                                                            currentTask.setTaskResult(1, new com.estrongs.a.q(MessageFormat.format(this.d.getString(C0000R.string.failed_to_copy), kVar2.f3008a.getName()), (Exception) null));
                                                        }
                                                        if (currentTask != null && arrayList.size() > 0) {
                                                            currentTask.sendMessage(4, arrayList);
                                                            ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                        }
                                                        return false;
                                                    }
                                                    if (currentTask != null) {
                                                        currentTask.sendMessage(9, Long.valueOf(d), Long.valueOf(kVar2.c));
                                                    }
                                                    long j2 = kVar2.c;
                                                    while (true) {
                                                        try {
                                                            read = inputStream.read(bArr);
                                                            if (read == -1) {
                                                                outputStream.flush();
                                                                if (j2 < d) {
                                                                    if (!z11 && currentTask != null) {
                                                                        currentTask.sendMessage(2, Long.valueOf(0 - j2), absolutePath2);
                                                                    }
                                                                    if (inputStream != null) {
                                                                        inputStream.close();
                                                                    }
                                                                    if (outputStream != null) {
                                                                        outputStream.close();
                                                                        a(str2, kVar2.f3008a);
                                                                    }
                                                                    if (currentTask != null && arrayList.size() > 0) {
                                                                        currentTask.sendMessage(4, arrayList);
                                                                        ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                                    }
                                                                    return false;
                                                                }
                                                                if (currentTask != null) {
                                                                    currentTask.sendMessage(13, absolutePath2, str2);
                                                                }
                                                                if (kVar2.d && ak.aZ(str2)) {
                                                                    if (currentTask == null || !(currentTask instanceof com.estrongs.fs.b.i)) {
                                                                        com.estrongs.fs.impl.local.d.j(str2);
                                                                    } else {
                                                                        ((com.estrongs.fs.b.i) currentTask).u |= com.estrongs.fs.a.a.h(str2);
                                                                        if (com.estrongs.android.util.aw.e()) {
                                                                            ((com.estrongs.fs.b.i) currentTask).s.add(str2);
                                                                        } else if (com.estrongs.fs.impl.media.a.a(str2)) {
                                                                            ((com.estrongs.fs.b.i) currentTask).p.add(str2);
                                                                        } else if (com.estrongs.fs.impl.media.a.b(str2)) {
                                                                            ((com.estrongs.fs.b.i) currentTask).q.add(str2);
                                                                        } else if (com.estrongs.fs.impl.media.a.c(str2)) {
                                                                            ((com.estrongs.fs.b.i) currentTask).r.add(str2);
                                                                        }
                                                                    }
                                                                }
                                                                if (inputStream != null) {
                                                                    inputStream.close();
                                                                }
                                                                if (outputStream != null) {
                                                                    outputStream.close();
                                                                    a(str2, kVar2.f3008a);
                                                                }
                                                            } else {
                                                                if (currentTask != null && currentTask.taskStopped()) {
                                                                    break loop0;
                                                                }
                                                                outputStream.write(bArr, 0, read);
                                                                j2 += read;
                                                                kVar2.c += read;
                                                                if (currentTask != null) {
                                                                    currentTask.sendMessage(9, Long.valueOf(d), Long.valueOf(kVar2.c));
                                                                    currentTask.sendMessage(2, Long.valueOf(read + 0), absolutePath2);
                                                                }
                                                                if (currentTask != null && currentTask.taskStopped()) {
                                                                    if (!z11) {
                                                                        currentTask.sendMessage(2, Long.valueOf(0 - j2), absolutePath2);
                                                                    }
                                                                    if (outputStream != null) {
                                                                        try {
                                                                            outputStream.close();
                                                                            outputStream = null;
                                                                        } catch (Exception e5) {
                                                                        }
                                                                        currentTask.enableTaskHide(true);
                                                                        a(str2, (p) null);
                                                                        currentTask.enableTaskHide(false);
                                                                    }
                                                                    if (inputStream != null) {
                                                                        inputStream.close();
                                                                    }
                                                                    if (outputStream != null) {
                                                                        outputStream.close();
                                                                        a(str2, kVar2.f3008a);
                                                                    }
                                                                    if (currentTask != null && arrayList.size() > 0) {
                                                                        currentTask.sendMessage(4, arrayList);
                                                                        ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                                    }
                                                                    return false;
                                                                }
                                                            }
                                                        } catch (Throwable th) {
                                                            th = th;
                                                        }
                                                    }
                                                }
                                                inputStream = inputStream2;
                                                if (d != -1) {
                                                }
                                                if (currentTask != null) {
                                                }
                                                long j22 = kVar2.c;
                                                while (true) {
                                                    read = inputStream.read(bArr);
                                                    if (read == -1) {
                                                    }
                                                }
                                            } else {
                                                if (ak.au(str2)) {
                                                    com.estrongs.a.a.f fVar = null;
                                                    if (!ak.aj(str2)) {
                                                        if (currentTask == null) {
                                                            if (currentTask != null && arrayList.size() > 0) {
                                                                currentTask.sendMessage(4, arrayList);
                                                                ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                            }
                                                            return false;
                                                        }
                                                        fVar = (com.estrongs.a.a.f) currentTask.getDecision(com.estrongs.a.a.f.class, str2);
                                                        if (fVar.g == 3) {
                                                            currentTask.setTaskResult(1, null);
                                                            if (currentTask != null && arrayList.size() > 0) {
                                                                currentTask.sendMessage(4, arrayList);
                                                                ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                                            }
                                                            return false;
                                                        }
                                                    }
                                                    outputStream = b(str2, d, fVar == null ? TypedMap.EMPTY : fVar.f194b);
                                                    inputStream = inputStream2;
                                                } else {
                                                    outputStream = (!z11 || kVar2.c == 0) ? b(str2, d) : a(str2, kVar2.c, true);
                                                    if (z11 && outputStream == null) {
                                                        if (currentTask != null) {
                                                            currentTask.sendMessage(2, Long.valueOf(0 - kVar2.c), absolutePath2);
                                                        }
                                                        kVar2.c = 0L;
                                                        outputStream = b(str2, d);
                                                        inputStream = a(absolutePath2, 0L);
                                                    }
                                                    inputStream = inputStream2;
                                                }
                                                if (d != -1) {
                                                }
                                                if (currentTask != null) {
                                                }
                                                long j222 = kVar2.c;
                                                while (true) {
                                                    read = inputStream.read(bArr);
                                                    if (read == -1) {
                                                    }
                                                }
                                            }
                                        }
                                    } else if (currentTask != null) {
                                        currentTask.sendMessage(2, Long.valueOf(kVar2.f3008a.length()), absolutePath2);
                                        currentTask.sendMessage(9, Long.valueOf(d), Long.valueOf(d));
                                        currentTask.sendMessage(13, absolutePath2, str2);
                                        z6 = z9;
                                        z7 = z10;
                                        z8 = false;
                                        str4 = absolutePath2;
                                    } else {
                                        z6 = z9;
                                        z7 = z10;
                                        z8 = false;
                                        str4 = absolutePath2;
                                    }
                                }
                                z6 = z9;
                                z7 = z10;
                                z8 = false;
                                str4 = absolutePath2;
                            } else {
                                try {
                                    if (!com.estrongs.fs.impl.i.b.f(ak.bw(absolutePath2), ak.bw(str5))) {
                                        break;
                                    }
                                    z6 = z9;
                                    z7 = z10;
                                    z8 = false;
                                    str4 = absolutePath2;
                                } catch (NetFsException e6) {
                                    String a4 = a(e6.error);
                                    currentTask.setTaskResult(10000, a4 != null ? new com.estrongs.a.q(a4, (Exception) e6) : new com.estrongs.a.q(MessageFormat.format(this.d.getString(C0000R.string.failed_to_copy), kVar2.f3008a.getName()), (Exception) e6));
                                    if (currentTask != null && arrayList.size() > 0) {
                                        currentTask.sendMessage(4, arrayList);
                                        ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                                    }
                                    return false;
                                }
                            }
                        } else if (currentTask != null) {
                            currentTask.sendMessage(2, Long.valueOf(kVar2.f3008a.length()), absolutePath2);
                            currentTask.sendMessage(8, new Object[0]);
                            str4 = absolutePath2;
                        } else {
                            str4 = absolutePath2;
                        }
                    }
                    try {
                        currentTask.enableTaskHide(true);
                        a(str2, (p) null);
                        currentTask.enableTaskHide(false);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (outputStream2 != null) {
                            outputStream2.close();
                            a(str2, kVar2.f3008a);
                        }
                        if (currentTask != null && arrayList.size() > 0) {
                            currentTask.sendMessage(4, arrayList);
                            ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                        }
                        return false;
                    } catch (Throwable th2) {
                        outputStream = outputStream2;
                        th = th2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (outputStream != null) {
                            outputStream.close();
                            a(str2, kVar2.f3008a);
                        }
                        throw th;
                    }
                } catch (Exception e7) {
                    if (currentTask != null) {
                        currentTask.setTaskResult(10000, new com.estrongs.a.q(MessageFormat.format(this.d.getString(C0000R.string.failed_to_copy), ""), e7));
                    }
                    if (currentTask != null && arrayList.size() > 0) {
                        currentTask.sendMessage(4, arrayList);
                        ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                    }
                    return false;
                }
            } catch (FileSystemException e8) {
                String message = e8.getMessage();
                com.estrongs.a.q qVar = message != null ? new com.estrongs.a.q(message, (Exception) e8) : new com.estrongs.a.q(MessageFormat.format(this.d.getString(C0000R.string.failed_to_copy), ""), (Exception) e8);
                if (currentTask != null) {
                    currentTask.setTaskResult(10000, qVar);
                }
                if (currentTask != null && arrayList.size() > 0) {
                    currentTask.sendMessage(4, arrayList);
                    ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
                }
                return false;
            }
        } catch (Throwable th3) {
            if (currentTask == null) {
                throw th3;
            }
            if (arrayList.size() <= 0) {
                throw th3;
            }
            currentTask.sendMessage(4, arrayList);
            ((com.estrongs.fs.b.k) arrayList.get(0)).e = true;
            throw th3;
        }
    }

    public boolean a(g gVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(gVar);
        return a(linkedList);
    }

    public boolean a(g gVar, String str) {
        return a(gVar, str, true);
    }

    public boolean a(g gVar, String str, boolean z) {
        boolean e2;
        if (gVar == null || str == null) {
            return false;
        }
        String absolutePath = gVar.getAbsolutePath();
        String d = ak.d(str);
        if (gVar.getFileType().a() && ak.aP(absolutePath) && !str.endsWith("/")) {
            str = str + "/";
        }
        if (z && b(str)) {
            throw new FileExistException(ak.B(str));
        }
        j o = o(ak.bi(gVar.getPath()));
        if (o != null && (o instanceof com.estrongs.fs.impl.f.a)) {
            boolean a2 = ((com.estrongs.fs.impl.f.a) o).a(gVar, d);
            if (!a2 || (com.estrongs.a.a.getCurrentTask() instanceof ab) || (com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.g)) {
                return a2;
            }
            com.estrongs.fs.a.b.a().a(gVar, str);
            return a2;
        }
        switch (ak.E(absolutePath)) {
            case 0:
                e2 = com.estrongs.fs.impl.local.d.a(absolutePath, str);
                break;
            case 1:
                e2 = com.estrongs.fs.impl.o.b.a(absolutePath, str);
                break;
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(absolutePath));
                if (n != null) {
                    e2 = n.a(absolutePath, str);
                    break;
                } else {
                    throw new FsProviderNotFoundException(ak.bi(absolutePath), com.estrongs.android.pop.a.a.a(ak.bi(absolutePath)));
                }
            case 3:
                e2 = com.estrongs.fs.impl.c.a.a(absolutePath, str);
                break;
            case 4:
            case 23:
                try {
                    e2 = com.estrongs.fs.impl.i.b.e(ak.bw(absolutePath), ak.bw(str));
                    break;
                } catch (NetFsException e3) {
                    throw new FileSystemException(a(e3.error), e3);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                e2 = false;
                break;
            case 18:
                try {
                    e2 = SPFileSystem.renameFile(absolutePath, str);
                    break;
                } catch (NetFsException e4) {
                    throw new FileSystemException(a(e4.error), e4);
                }
            case 21:
            case 22:
                e2 = com.estrongs.fs.impl.q.b.a(absolutePath, str);
                break;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if (!e2 || (currentTask instanceof ab) || (currentTask instanceof com.estrongs.fs.b.g) || (currentTask instanceof com.estrongs.android.pop.view.utils.y)) {
            return e2;
        }
        com.estrongs.fs.a.b.a().a(gVar, str);
        return e2;
    }

    public boolean a(String str, p pVar) {
        if (str == null) {
            return false;
        }
        return a(j(str));
    }

    public boolean a(List<g> list) {
        return a(list, (List<g>) null);
    }

    public boolean a(List<g> list, g gVar) {
        int i;
        boolean z;
        boolean z2;
        com.estrongs.a.a.e eVar;
        if (list == null || list.size() == 0) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            String absolutePath = gVar.getAbsolutePath();
            String substring = absolutePath.endsWith("/") ? absolutePath.substring(0, absolutePath.length() - 1) : absolutePath;
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            boolean aP = ak.aP(list.get(0).getAbsolutePath());
            boolean z3 = true;
            boolean z4 = false;
            for (g gVar2 : list) {
                String str = substring + "/" + gVar2.getName();
                if (gVar2.getFileType().a() && aP) {
                    str = str + "/";
                }
                if (currentTask != null && currentTask.taskStopped()) {
                }
                if (!ak.d(gVar2.getAbsolutePath(), str)) {
                    boolean b2 = b(str);
                    int i2 = 1;
                    if (z3 && b2) {
                        if (currentTask == null || (eVar = (com.estrongs.a.a.e) currentTask.getDecision(com.estrongs.a.a.e.class, str, false, gVar2, j(str))) == null) {
                            i = 1;
                            z = z4;
                            z2 = z3;
                        } else {
                            if (eVar.f && eVar.g == 1) {
                                z3 = false;
                            }
                            boolean z5 = eVar.g == 5;
                            i = eVar.g;
                            z = z5;
                            z2 = z3;
                        }
                        if (i == 2) {
                            currentTask.sendMessage(2, Long.valueOf(gVar2.length()), list);
                            currentTask.sendMessage(8, new Object[0]);
                            z3 = z2;
                            z4 = z;
                        } else {
                            if (i == 3) {
                                currentTask.setTaskResult(1, null);
                                if (arrayList.size() > 0) {
                                    com.estrongs.fs.a.b.a().c(arrayList);
                                }
                                if (arrayList2.size() <= 0) {
                                    return false;
                                }
                                com.estrongs.fs.a.b.a().a(arrayList2);
                                return false;
                            }
                            z3 = z2;
                            z4 = z;
                            i2 = i;
                        }
                    }
                    if (z4) {
                        str = com.estrongs.fs.c.d.l(str);
                        currentTask.sendMessage(12, gVar2.getPath(), str);
                    }
                    String str2 = null;
                    if (b2 && i2 == 1) {
                        str2 = (str.endsWith("/") ? str.substring(0, str.length() - 1) : str) + ".bak." + System.currentTimeMillis();
                        if (!b(new m(str), ak.d(str2))) {
                            if (arrayList.size() > 0) {
                                com.estrongs.fs.a.b.a().c(arrayList);
                            }
                            if (arrayList2.size() <= 0) {
                                return false;
                            }
                            com.estrongs.fs.a.b.a().a(arrayList2);
                            return false;
                        }
                    }
                    if (!a(gVar2.getAbsolutePath(), str)) {
                        if (b2 && i2 == 1) {
                            b(new m(str2), ak.d(str));
                        }
                        if (arrayList.size() > 0) {
                            com.estrongs.fs.a.b.a().c(arrayList);
                        }
                        if (arrayList2.size() <= 0) {
                            return false;
                        }
                        com.estrongs.fs.a.b.a().a(arrayList2);
                        return false;
                    }
                    if (b2 && i2 == 1 && gVar2.getFileType().b()) {
                        a(new m(str2));
                    }
                    arrayList.add(gVar2);
                    arrayList2.add(new n(gVar, gVar2.getName()));
                }
            }
            if (arrayList.size() > 0) {
                com.estrongs.fs.a.b.a().c(arrayList);
            }
            if (arrayList2.size() > 0) {
                com.estrongs.fs.a.b.a().a(arrayList2);
            }
            return true;
        } finally {
            if (arrayList.size() > 0) {
                com.estrongs.fs.a.b.a().c(arrayList);
            }
            if (arrayList2.size() > 0) {
                com.estrongs.fs.a.b.a().a(arrayList2);
            }
        }
    }

    public boolean a(List<g> list, List<g> list2) {
        boolean z;
        boolean z2;
        if (list == null || list.size() == 0) {
            return false;
        }
        if (list2 == null) {
            list2 = new ArrayList<>();
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        Iterator<g> it = list.iterator();
        boolean z3 = true;
        while (true) {
            if (!it.hasNext()) {
                z = z3;
                break;
            }
            g next = it.next();
            z = b(next) & z3;
            if (!z) {
                if ((currentTask instanceof o) && ((o) currentTask).b() && currentTask.getDecision(com.estrongs.a.a.g.class, next).g == 2) {
                    o oVar = (o) currentTask;
                    if (oVar.j == null) {
                        oVar.j = new LinkedList();
                    }
                    oVar.j.add(next.getPath());
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (next.getFileType().a()) {
                    com.estrongs.fs.a.b.a().c(next.getPath());
                }
                if (!z2) {
                    break;
                }
            } else if (!(currentTask instanceof o) || ((o) currentTask).j == null || !((o) currentTask).j.contains(next.getAbsolutePath())) {
                list2.add(next);
            }
            if (currentTask != null && !ak.aO(next.getPath()) && !ak.aC(next.getPath())) {
                currentTask.sendMessage(1, 1L, next.getPath());
                if (next.length() > 0) {
                    currentTask.sendMessage(2, Long.valueOf(next.length()), next.getPath());
                }
            }
            z3 = z;
        }
        if (currentTask instanceof o) {
            com.estrongs.fs.a.b.a().c(list2, ((o) currentTask).i);
            return z;
        }
        if (currentTask instanceof com.estrongs.android.pop.view.utils.y) {
            return z;
        }
        com.estrongs.fs.a.b.a().c(list2);
        return z;
    }

    public OutputStream b(String str, long j) {
        if (ak.m(str)) {
            return com.estrongs.fs.impl.q.b.b(str, j);
        }
        if (!ak.an(str) && !ak.aq(str) && !ak.ao(str)) {
            return f(str);
        }
        try {
            return com.estrongs.fs.impl.i.b.b(ak.bw(str), j);
        } catch (NetFsException e2) {
            throw new FileSystemException(a(e2.error), e2);
        }
    }

    public OutputStream b(String str, long j, TypedMap typedMap) {
        if (!ak.au(str)) {
            return f(str);
        }
        try {
            return SPFileSystem.getFileOutputStream(str, j, typedMap);
        } catch (NetFsException e2) {
            throw new FileSystemException(a(e2.error), e2);
        }
    }

    public boolean b(g gVar, String str) {
        return b(gVar, str, true);
    }

    public boolean b(g gVar, String str, boolean z) {
        if (gVar == null || str == null) {
            return false;
        }
        return a(gVar, ak.e(gVar.getAbsolutePath()) + "/" + str, z);
    }

    public boolean b(String str) {
        if (str == null) {
            return false;
        }
        if (ak.aU(str)) {
            return true;
        }
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.a(str);
            case 1:
                return com.estrongs.fs.impl.o.b.b(str);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (n != null) {
                    return n.b(str);
                }
                break;
            case 3:
                break;
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.e(ak.bw(str));
                } catch (NetFsException e2) {
                    throw new FileSystemException(a(e2.error), e2);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 15:
            case 17:
            default:
                j o = o(ak.bi(str));
                if (o != null) {
                    return o.b(str);
                }
                return false;
            case 11:
                return true;
            case 12:
                return com.estrongs.fs.impl.h.b.d(str);
            case 13:
                return com.estrongs.fs.impl.j.b.d(str);
            case 14:
                return com.estrongs.fs.impl.p.b.d(str);
            case 16:
                return com.estrongs.fs.impl.d.b.d(str);
            case 18:
                try {
                    return SPFileSystem.exists(str);
                } catch (NetFsException e3) {
                    throw new FileSystemException(a(e3.error), e3);
                }
            case 21:
            case 22:
                return com.estrongs.fs.impl.q.b.d(str);
        }
        return com.estrongs.fs.impl.c.a.d(str);
    }

    public boolean b(String str, boolean z) {
        boolean a2;
        if (str == null) {
            return false;
        }
        switch (ak.E(str)) {
            case 0:
                a2 = com.estrongs.fs.impl.local.d.a(str, z);
                break;
            case 1:
                a2 = com.estrongs.fs.impl.o.b.a(str, z);
                break;
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (z && !str.endsWith("/")) {
                    str = str + "/";
                }
                a2 = n.a(str);
                break;
            case 3:
                a2 = com.estrongs.fs.impl.c.a.a(str, z);
                break;
            case 4:
            case 23:
                try {
                    a2 = com.estrongs.fs.impl.i.b.a(ak.bw(str), z);
                    break;
                } catch (NetFsException e2) {
                    throw new FileSystemException(a(e2.error), e2);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                a2 = false;
                break;
            case 18:
                try {
                    a2 = SPFileSystem.createFile(str, z);
                    break;
                } catch (NetFsException e3) {
                    throw new FileSystemException(a(e3.error), e3);
                }
            case 21:
            case 22:
                a2 = com.estrongs.fs.impl.q.b.b(str, z);
                break;
        }
        if (a2) {
            if (ak.aq(str) || ak.ao(str)) {
                com.estrongs.fs.a.b.a().a(new n(str, z ? false : true));
            } else {
                com.estrongs.fs.a.b.a().a(str);
            }
        }
        return a2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0008. Please report as an issue. */
    public c c(String str) {
        if (str == null) {
            return null;
        }
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.c(str);
            case 1:
                return com.estrongs.fs.impl.o.b.f(str);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (n != null) {
                    return n.g(str);
                }
                return com.estrongs.fs.impl.c.a.f(str);
            case 3:
                return com.estrongs.fs.impl.c.a.f(str);
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.g(ak.bw(str));
                } catch (NetFsException e2) {
                    break;
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                return null;
            case 18:
                try {
                    return SPFileSystem.getFileInfo(str);
                } catch (NetFsException e3) {
                    return null;
                }
            case 21:
            case 22:
                return com.estrongs.fs.impl.q.b.a(str);
        }
    }

    public boolean c(String str, boolean z) {
        boolean z2 = false;
        if (str != null) {
            switch (ak.E(str)) {
                case 0:
                    z2 = com.estrongs.fs.impl.local.d.g(str);
                    break;
                case 1:
                    z2 = com.estrongs.fs.impl.o.b.c(str);
                    break;
                case 2:
                case 5:
                case 19:
                case 20:
                    com.estrongs.old.fs.a n = n(ak.bi(str));
                    if (n != null) {
                        z2 = n.d(str);
                        break;
                    }
                    break;
                case 3:
                    z2 = com.estrongs.fs.impl.c.a.e(str);
                    break;
                case 4:
                case 23:
                    try {
                        z2 = com.estrongs.fs.impl.i.b.i(ak.bw(str));
                        break;
                    } catch (NetFsException e2) {
                        throw new FileSystemException(a(e2.error), e2);
                    }
                case 18:
                    try {
                        z2 = SPFileSystem.mkDirs(str);
                        break;
                    } catch (NetFsException e3) {
                        throw new FileSystemException(a(e3.error), e3);
                    }
                case 21:
                case 22:
                    z2 = com.estrongs.fs.impl.q.b.e(str);
                    break;
            }
            if (z && z2) {
                com.estrongs.fs.a.b.a().a(com.estrongs.fs.a.b.a().f(str));
            }
        }
        return z2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0009. Please report as an issue. */
    public long d(String str) {
        if (str == null) {
            return 0L;
        }
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.e(str);
            case 1:
                return com.estrongs.fs.impl.o.b.d(str);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (n != null) {
                    return n.e(str);
                }
                return com.estrongs.fs.impl.c.a.a(str);
            case 3:
                return com.estrongs.fs.impl.c.a.a(str);
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.h(ak.bw(str));
                } catch (Exception e2) {
                    break;
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                return 0L;
            case 18:
                try {
                    return SPFileSystem.getFileLength(str);
                } catch (Exception e3) {
                    return 0L;
                }
            case 21:
            case 22:
                return com.estrongs.fs.impl.q.b.b(str);
        }
    }

    public InputStream e(String str) {
        return a(str, 0L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0008. Please report as an issue. */
    public OutputStream f(String str) {
        if (str == null) {
            return null;
        }
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.f(str);
            case 1:
                return com.estrongs.fs.impl.o.b.h(str);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (n != null) {
                    return n.i(str);
                }
                return com.estrongs.fs.impl.c.a.h(str);
            case 3:
                return com.estrongs.fs.impl.c.a.h(str);
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.b(ak.bw(str), -1L);
                } catch (NetFsException e2) {
                    break;
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 21:
            case 22:
            default:
                return null;
            case 18:
                try {
                    return SPFileSystem.getFileOutputStream(str, -1L, TypedMap.EMPTY);
                } catch (NetFsException e3) {
                    throw new FileSystemException(a(e3.error), e3);
                }
        }
    }

    public boolean g(String str) {
        return c(str, true);
    }

    public boolean h(String str) {
        if (str == null) {
            return false;
        }
        if (str.endsWith("/")) {
            return true;
        }
        switch (ak.E(str)) {
            case 0:
                return com.estrongs.fs.impl.local.d.h(str);
            case 1:
                return com.estrongs.fs.impl.o.b.e(str);
            case 2:
            case 5:
            case 19:
            case 20:
                com.estrongs.old.fs.a n = n(ak.bi(str));
                if (n != null) {
                    return n.f(str);
                }
                break;
            case 3:
                break;
            case 4:
            case 23:
                try {
                    return com.estrongs.fs.impl.i.b.j(ak.bw(str));
                } catch (NetFsException e2) {
                    throw new FileSystemException(a(e2.error), e2);
                }
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            default:
                return false;
            case 18:
                try {
                    return SPFileSystem.isDir(str);
                } catch (NetFsException e3) {
                    throw new FileSystemException(a(e3.error), e3);
                }
            case 21:
            case 22:
                return com.estrongs.fs.impl.q.b.c(str);
        }
        return com.estrongs.fs.impl.c.a.c(str);
    }

    public g j(String str) {
        return a(str, true, true);
    }

    public InputStream k(String str) {
        if (ak.au(str)) {
            return SPFileSystem.getThumbnail(str);
        }
        if (ak.an(str) || ak.aq(str) || ak.ao(str)) {
            return com.estrongs.fs.impl.i.b.k(ak.bw(str));
        }
        return null;
    }

    public int l(String str) {
        return ((ak.an(str) || ak.aq(str) || (ak.ao(str) && !ak.aK(str))) && !ak.aU(str) && com.estrongs.fs.impl.i.b.a(this.d, ak.bw(str))) ? 100 : -1;
    }

    public j o(String str) {
        if (f3043a.containsKey(str)) {
            return f3043a.get(str);
        }
        j p = p(str);
        if (p == null) {
            return p;
        }
        a(str, p);
        return p;
    }
}
