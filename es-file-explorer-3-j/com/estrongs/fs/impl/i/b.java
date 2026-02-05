package com.estrongs.fs.impl.i;

import android.content.Context;
import com.estrongs.a.b.l;
import com.estrongs.a.b.p;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.android.util.i;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static String f3086a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f3087b = null;
    private static HashMap<String, INetFileSystem> c = new HashMap<>();
    private static HashMap<String, String> d = new HashMap<>();

    static {
        d.put("dropbox", "com.estrongs.android.pop.netfs.DropboxFileSystem");
        d.put("kanbox", "com.estrongs.android.pop.netfs.KanboxFileSystem");
        d.put("sugarsync", "com.estrongs.android.pop.netfs.SugarsyncFileSystem");
        d.put("kuaipan", "com.estrongs.android.pop.netfs.KuaipanFileSystem");
        d.put("box", "com.estrongs.android.pop.netfs.BoxnetFileSystem");
        d.put("pcs", "com.estrongs.fs.impl.PcsFileSystem");
        d.put("vdisk", "com.estrongs.android.pop.netfs.VDiskFileSystem");
        d.put("skydrive", "com.estrongs.android.pop.netfs.SkydrvFileSystem");
        d.put("gdrive", "com.estrongs.android.pop.netfs.GdriveFileSystem");
        d.put("s3", "com.estrongs.android.pop.netfs.S3FileSystem");
        d.put("ubuntu", "com.estrongs.android.pop.netfs.UbuntuFileSystem");
        d.put("megacloud", "com.estrongs.android.pop.netfs.MegacloudFileSystem");
    }

    public static INetFileSystem a(String str) {
        return b((Context) null, str);
    }

    private static com.estrongs.fs.c a(NetFileInfo netFileInfo) {
        com.estrongs.fs.c cVar = new com.estrongs.fs.c(netFileInfo.path);
        cVar.o = netFileInfo.name;
        cVar.d = netFileInfo.isDirectory;
        cVar.k = netFileInfo.readable;
        cVar.l = netFileInfo.writable;
        cVar.m = netFileInfo.hidden;
        cVar.j = netFileInfo.lastModifiedTime;
        cVar.e = netFileInfo.size;
        return cVar;
    }

    public static OutputStream a(String str, long j, boolean z) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.b(ak.b(ak.aa(bw), ak.ac(bw), o(bw)), j);
            } catch (Exception e) {
                return null;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 == null) {
            return null;
        }
        return a2.getFileOutputStream(ak.aa(bw), ak.ac(bw), o(bw), j, z);
    }

    public static Object a(String str, String str2, String str3) {
        INetFileSystem a2 = a(str3);
        if (a2 != null && (a2 instanceof PcsFileSystem)) {
            return ((PcsFileSystem) a2).b(str, str2);
        }
        return null;
    }

    public static Object a(String str, String str2, String str3, String str4) {
        String bw = ak.bw(str);
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        INetFileSystem a2 = a(ak.ae(bw));
        if (a2 != null && (a2 instanceof PcsFileSystem)) {
            return ((PcsFileSystem) a2).a(aa, ac, str2, str3, str4);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static List<g> a(Context context, String str, boolean z, h hVar, TypedMap typedMap) {
        Map<String, NetFileInfo> map;
        Set<Map.Entry<String, NetFileInfo>> entrySet;
        String bw = ak.bw(str);
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        String o = o(bw);
        String ae = ak.ae(bw);
        if (aa == null || ac == null || o == null) {
            throw new NetFsException("MalFormed URL", NetFsException.ERROR_CODE.NETFS_ERROR_MALFORMED_URL);
        }
        String ae2 = ak.ae(bw);
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        String str2 = null;
        String str3 = null;
        if (ae2.equals("dropbox")) {
            str2 = "Dropbox_List";
            str3 = "Dropbox_UV";
        } else if (ae2.equals("kuaipan")) {
            str2 = "快盘_List";
            str3 = "快盘_UV";
        } else if (ae2.equals("kanbox")) {
            str2 = "酷盘_List";
            str3 = "酷盘_UV";
        } else if (ae2.equals("vdisk")) {
            str2 = "新浪微盘_List";
            str3 = "新浪微盘_UV";
        } else if (ae2.equals("box")) {
            str2 = "Box_List";
            str3 = "Box_UV";
        } else if (ae2.equals("sugarsync")) {
            str2 = "Sugarsync_List";
            str3 = "Sugarsync_UV";
        } else if (ae2.equals("skydrive")) {
            str2 = "Skydrive_List";
            str3 = "Skydrive_UV";
        } else if (ae2.equals("gdrive")) {
            str2 = "Gdrive_List";
            str3 = "Gdrive_UV";
        } else if (ae2.equals("s3")) {
            str2 = "S3_List";
            str3 = "S3_UV";
        } else if (ae2.equals("yandex")) {
            str2 = "Yandex_List";
            str3 = "Yandex_UV";
        } else if (ae2.equals("ubuntu")) {
            str2 = "UbuntuOne_List";
            str3 = "UbuntuOne_UV";
        } else if (ae2.equals("megacloud")) {
            str2 = "Megacloud_List";
            str3 = "Megacloud_UV";
        }
        if (str2 != null && a2 != null) {
            a2.a(str2, str2);
            a2.b(str3, str3);
        }
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.a(ak.b(aa, ac, o), hVar, (l<String>) null, true);
            } catch (Exception e) {
                return null;
            }
        }
        INetFileSystem b2 = b(context, ae);
        if (b2 == null) {
            return null;
        }
        try {
            c cVar = new c();
            cVar.a(bw);
            if (o.equals("/") && ae.equals("sugarsync")) {
                b2.setPrivateContent(aa, ac, new String[]{"/" + ((String) context.getText(C0000R.string.sugarsync_device)), "/" + ((String) context.getText(C0000R.string.sugarsync_magic_briefcase)), "/" + ((String) context.getText(C0000R.string.sugarsync_web_archive)), "/" + ((String) context.getText(C0000R.string.sugarsync_mobile_photos)), "/" + ((String) context.getText(C0000R.string.sugarsync_recv_shares))});
            }
            map = b2.listFiles(aa, ac, o, z, cVar, typedMap);
        } catch (NetFsException e2) {
            if (e2.error == NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED) {
                throw e2;
            }
            if (e2.error == NetFsException.ERROR_CODE.NETFS_ERROR_NOT_LOG_IN) {
                throw e2;
            }
            map = null;
        }
        if (map == null || (entrySet = map.entrySet()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, NetFileInfo>> it = entrySet.iterator();
        while (it.hasNext()) {
            NetFileInfo value = it.next().getValue();
            value.path = ak.a(ae, aa, ac, value.path);
            a aVar = new a(value);
            if ((ae2.equals("pcs") || ae2.equals("gdrive") || ae2.equals("ubuntu") || ae2.equals("box")) && ((String) value.getExtra(NetFileInfo.PUBLIC_SHARE)) != null) {
                aVar.putExtra(NetFileInfo.PUBLIC_SHARE, value.getExtra(NetFileInfo.PUBLIC_SHARE));
            }
            if (((String) value.getExtra(NetFileInfo.WEB_FILE_URL)) != null) {
                aVar.putExtra(NetFileInfo.WEB_FILE_URL, value.getExtra(NetFileInfo.WEB_FILE_URL));
            }
            if (((String) value.getExtra(NetFileInfo.MIME_TYPE)) != null) {
                aVar.putExtra(NetFileInfo.MIME_TYPE, value.getExtra(NetFileInfo.MIME_TYPE));
            }
            if (((String) value.getExtra(NetFileInfo.INTENT_FILE_URL)) != null) {
                aVar.putExtra(NetFileInfo.INTENT_FILE_URL, value.getExtra(NetFileInfo.INTENT_FILE_URL));
            }
            if (hVar.a(aVar)) {
                if (value.isDirectory) {
                    switch (value.folder_type) {
                        case 0:
                            if (!ae.equals("pcs")) {
                                aVar.setFileType(com.estrongs.fs.l.D);
                                break;
                            } else {
                                aVar.setFileType(com.estrongs.fs.l.E);
                                break;
                            }
                        case 1:
                            aVar.setFileType(com.estrongs.fs.l.p);
                            break;
                        case 2:
                            aVar.setFileType(com.estrongs.fs.l.G);
                            break;
                        case 4:
                            aVar.setFileType(com.estrongs.fs.l.F);
                            break;
                        case 8:
                            aVar.setFileType(com.estrongs.fs.l.o);
                            break;
                        case 16:
                            aVar.setFileType(com.estrongs.fs.l.D);
                            break;
                        case 32:
                            aVar.setFileType(com.estrongs.fs.l.D);
                            break;
                        case 64:
                            aVar.setFileType(com.estrongs.fs.l.o);
                            break;
                    }
                }
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    public static void a(String str, String str2) {
        f3086a = str;
        f3087b = str2;
    }

    public static void a(String str, String str2, String str3, Object obj) {
        INetFileSystem a2 = a(str);
        if (a2 == null) {
            return;
        }
        a2.setPrivateContent(str2, str3, obj);
    }

    public static boolean a(Context context, String str) {
        INetFileSystem b2;
        String ae = ak.ae(ak.bw(str));
        return ((aw.b((CharSequence) ae) && ae.equalsIgnoreCase("yandex")) || (b2 = b(context, ae)) == null || !b2.isPagingSupported()) ? false : true;
    }

    public static boolean a(String str, long j) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.a((Context) null, ak.b(ak.aa(bw), ak.ac(bw), o(bw)), (p) null);
            } catch (Exception e) {
                return false;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 != null) {
            return a2.deleteFile(ak.aa(bw), ak.ac(bw), o(bw));
        }
        return false;
    }

    public static boolean a(String str, String str2, long j) {
        if (ak.E(str) != 0) {
            return false;
        }
        String bw = ak.bw(str2);
        INetFileSystem a2 = a(ak.ae(bw));
        if (a2 instanceof PcsFileSystem) {
            return ((PcsFileSystem) a2).a(ak.aa(bw), ak.ac(bw), str, j, o(bw));
        }
        return false;
    }

    public static boolean a(String str, boolean z) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.b(ak.b(ak.aa(bw), ak.ac(bw), o(bw)), z);
            } catch (Exception e) {
                return false;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 != null) {
            return a2.createFile(ak.aa(bw), ak.ac(bw), o(bw), z);
        }
        return false;
    }

    private static INetFileSystem b(Context context, String str) {
        INetFileSystem iNetFileSystem = c.get(str);
        String str2 = d.get(str);
        if (str2 == null) {
            return null;
        }
        if (iNetFileSystem != null) {
            return iNetFileSystem;
        }
        Object a2 = i.a(context, str, (String) null);
        if (a2 != null) {
            iNetFileSystem = (INetFileSystem) i.a(a2, str2, (Object[]) null);
        } else if (str.equals("pcs")) {
            iNetFileSystem = new PcsFileSystem();
        }
        if (iNetFileSystem == null) {
            return iNetFileSystem;
        }
        synchronized (c) {
            c.put(str, iNetFileSystem);
        }
        iNetFileSystem.setConfigDir(f3086a, f3087b);
        return iNetFileSystem;
    }

    public static OutputStream b(String str, long j) {
        return a(str, j, com.estrongs.a.a.getCurrentTask() instanceof com.estrongs.fs.b.i ? ((com.estrongs.fs.b.i) com.estrongs.a.a.getCurrentTask()).g() : false);
    }

    public static Object b(String str, String str2) {
        INetFileSystem a2 = a(str2);
        if (a2 != null && (a2 instanceof PcsFileSystem)) {
            return ((PcsFileSystem) a2).c(str);
        }
        return null;
    }

    public static Object b(String str, String str2, String str3) {
        INetFileSystem a2 = a(str3);
        if (a2 != null && (a2 instanceof PcsFileSystem)) {
            return ((PcsFileSystem) a2).c(str, str2);
        }
        return null;
    }

    public static boolean b(String str) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if ("yandex".equals(ae)) {
            try {
                return com.estrongs.fs.impl.q.b.a(ak.b(ak.aa(bw), ak.ac(bw), ak.Y(bw)), (h) null, (l<String>) null, true) != null;
            } catch (Exception e) {
                return false;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 == null) {
            return false;
        }
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        o(bw);
        return a2.addServer(aa, ac);
    }

    public static boolean b(String str, boolean z) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.d(ak.b(ak.aa(bw), ak.ac(bw), o(bw)));
            } catch (Exception e) {
                return false;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 != null) {
            return a2.exists(ak.aa(bw), ak.ac(bw), o(bw), z);
        }
        return false;
    }

    public static NetFileInfo c(String str, boolean z) {
        NetFileInfo netFileInfo = null;
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (!ae.equalsIgnoreCase("yandex")) {
            INetFileSystem a2 = a(ae);
            if (a2 == null) {
                return null;
            }
            NetFileInfo fileInfo = a2.getFileInfo(ak.aa(bw), ak.ac(bw), o(bw), z);
            if (fileInfo == null) {
                return fileInfo;
            }
            fileInfo.path = bw;
            return fileInfo;
        }
        try {
            com.estrongs.fs.c a3 = com.estrongs.fs.impl.q.b.a(ak.b(ak.aa(bw), ak.ac(bw), o(bw)), true);
            if (a3 == null) {
                return null;
            }
            NetFileInfo netFileInfo2 = new NetFileInfo();
            if (a3.o != null) {
                netFileInfo2.name = a3.o;
            } else {
                netFileInfo2.name = ak.d(a3.f3034b);
            }
            netFileInfo2.path = a3.f3034b;
            netFileInfo2.isDirectory = a3.d;
            netFileInfo2.size = a3.e;
            netFileInfo2.createdTime = a3.h;
            netFileInfo2.lastAccessTime = a3.i;
            netFileInfo2.lastModifiedTime = a3.j;
            netFileInfo2.readable = a3.k;
            netFileInfo2.writable = a3.l;
            netFileInfo2.hidden = a3.m;
            netFileInfo = netFileInfo2;
            return netFileInfo;
        } catch (Exception e) {
            return netFileInfo;
        }
    }

    public static InputStream c(String str, long j) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.a(ak.b(ak.aa(bw), ak.ac(bw), o(bw)), j);
            } catch (Exception e) {
                return null;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 == null) {
            return null;
        }
        return a2.getFileInputStream(ak.aa(bw), ak.ac(bw), o(bw), j);
    }

    public static Object c(String str, String str2) {
        INetFileSystem a2 = a(str2);
        if (a2 != null && (a2 instanceof PcsFileSystem)) {
            return ((PcsFileSystem) a2).d(str);
        }
        return null;
    }

    public static String c(String str) {
        String bw = ak.bw(str);
        INetFileSystem a2 = a(ak.ae(bw));
        if (a2 == null) {
            return null;
        }
        return a2.createShare(ak.aa(bw), ak.ac(bw), ak.Y(bw), null);
    }

    public static a d(String str, boolean z) {
        try {
            NetFileInfo c2 = c(ak.bw(str), z);
            if (c2 == null) {
                return null;
            }
            return new a(c2);
        } catch (Exception e) {
            return null;
        }
    }

    public static Object d(String str, String str2) {
        String bw = ak.bw(str);
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        INetFileSystem a2 = a(ak.ae(bw));
        if (a2 != null && (a2 instanceof PcsFileSystem)) {
            return ((PcsFileSystem) a2).c(aa, ac, str2);
        }
        return null;
    }

    public static boolean d(String str) {
        String bw = ak.bw(str);
        INetFileSystem a2 = a(ak.ae(bw));
        if (a2 == null) {
            return false;
        }
        return a2.removeShare(ak.aa(bw), ak.ac(bw), ak.Y(bw), null);
    }

    public static boolean e(String str) {
        return b(str, false);
    }

    public static boolean e(String str, String str2) {
        String bw = ak.bw(str);
        String bw2 = ak.bw(str2);
        String ae = ak.ae(bw);
        if (!ae.equalsIgnoreCase("yandex")) {
            INetFileSystem a2 = a(ae);
            if (a2 != null) {
                return a2.renameFile(ak.aa(bw), ak.ac(bw), o(bw), o(bw2));
            }
            return false;
        }
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        try {
            return com.estrongs.fs.impl.q.b.a(ak.b(aa, ac, o(bw)), ak.b(aa, ac, o(bw2)));
        } catch (Exception e) {
            return false;
        }
    }

    public static NetFileInfo f(String str) {
        return c(str, false);
    }

    public static boolean f(String str, String str2) {
        String bw = ak.bw(str);
        String bw2 = ak.bw(str2);
        String ae = ak.ae(bw);
        if (!ae.equalsIgnoreCase("yandex")) {
            INetFileSystem a2 = a(ae);
            if (a2 != null) {
                return a2.copyFile(ak.aa(bw), ak.ac(bw), o(bw), o(bw2));
            }
            return false;
        }
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        try {
            return com.estrongs.fs.impl.q.b.a((Context) null, ak.b(aa, ac, o(bw)), ak.b(aa, ac, o(bw2)));
        } catch (Exception e) {
            return false;
        }
    }

    public static com.estrongs.fs.c g(String str) {
        String bw = ak.bw(str);
        if (ak.ae(bw).equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.a(ak.b(ak.aa(bw), ak.ac(bw), o(bw)), true);
            } catch (Exception e) {
                return null;
            }
        }
        NetFileInfo f = f(bw);
        if (f != null) {
            return a(f);
        }
        return null;
    }

    public static boolean g(String str, String str2) {
        String bw = ak.bw(str);
        String bw2 = ak.bw(str2);
        String ae = ak.ae(bw);
        if (!ae.equalsIgnoreCase("yandex")) {
            INetFileSystem a2 = a(ae);
            if (a2 != null) {
                return a2.moveFile(ak.aa(bw), ak.ac(bw), o(bw), o(bw2));
            }
            return false;
        }
        String aa = ak.aa(bw);
        String ac = ak.ac(bw);
        try {
            return com.estrongs.fs.impl.q.b.b(ak.b(aa, ac, o(bw)), ak.b(aa, ac, o(bw2)));
        } catch (Exception e) {
            return false;
        }
    }

    public static long h(String str) {
        com.estrongs.fs.c g = g(ak.bw(str));
        if (g == null) {
            return 0L;
        }
        return g.e;
    }

    public static String h(String str, String str2) {
        try {
            INetFileSystem a2 = a(str);
            if (a2 == null) {
                return null;
            }
            return a2.getUserLoginName(str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean i(String str) {
        return a(ak.bw(str), true);
    }

    public static boolean j(String str) {
        String bw = ak.bw(str);
        String ae = ak.ae(bw);
        if (ae.equalsIgnoreCase("yandex")) {
            try {
                return com.estrongs.fs.impl.q.b.c(ak.b(ak.aa(bw), ak.ac(bw), o(bw)));
            } catch (Exception e) {
                return false;
            }
        }
        INetFileSystem a2 = a(ae);
        if (a2 != null) {
            return a2.isDir(ak.aa(bw), ak.ac(bw), o(bw));
        }
        return false;
    }

    public static InputStream k(String str) {
        INetFileSystem a2;
        try {
            String bw = ak.bw(str);
            String ae = ak.ae(bw);
            if (ae.equalsIgnoreCase("yandex") || (a2 = a(ae)) == null) {
                return null;
            }
            return a2.getThumbnail(ak.aa(bw), ak.ac(bw), o(bw));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void l(String str) {
        INetFileSystem a2;
        try {
            String ae = ak.ae(str);
            if ((ae.equalsIgnoreCase("s3") && o(str).length() >= 2) || ae.equalsIgnoreCase("yandex") || (a2 = a(ae)) == null) {
                return;
            }
            a2.delServer(ak.aa(str), ak.ac(str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String m(String str) {
        String str2;
        String str3 = null;
        try {
            INetFileSystem a2 = a(str);
            if (a2 == null) {
                return null;
            }
            if (str.equalsIgnoreCase("skydrive")) {
                String str4 = com.estrongs.android.pop.esclasses.c.f1130a;
                if (str4 != null) {
                    if (str4.equalsIgnoreCase("cn")) {
                        str4 = "zh_cn";
                    } else if (str4.equalsIgnoreCase("tw")) {
                        str4 = "zh_tw";
                    }
                    a2.setPrivateContent(null, null, str4);
                }
            } else if (str.equalsIgnoreCase("kanbox") && (str2 = com.estrongs.android.pop.esclasses.c.f1130a) != null) {
                a2.setPrivateContent(null, null, str2.equalsIgnoreCase("cn") ? "zh" : "en");
            }
            str3 = a2.getOAuthLoginUrl();
            return str3;
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        }
    }

    public static boolean n(String str) {
        String bw = ak.bw(str);
        if (ak.aq(bw)) {
            return true;
        }
        String ae = ak.ae(bw);
        return ae != null && ("dropbox".equals(ae) || "skydrive".equals(ae) || "gdrive".equals(ae) || "ubuntu".equals(ae) || "box".equals(ae));
    }

    private static String o(String str) {
        String Y = ak.Y(str);
        if (Y == null) {
            return null;
        }
        return Y;
    }
}
