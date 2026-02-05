package com.estrongs.fs.impl.q;

import android.content.Context;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.a.b.l;
import com.estrongs.a.b.p;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import de.aflx.sardine.DavResource;
import de.aflx.sardine.Sardine;
import de.aflx.sardine.SardineFactory;
import de.aflx.sardine.impl.io.ConsumingInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static String f3175a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f3176b = null;
    private static HashMap<String, ArrayList<Sardine>> c = new HashMap<>();

    public static com.estrongs.fs.c a(String str) {
        return a(str, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0180  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.estrongs.fs.c a(String str, boolean z) {
        String str2;
        String str3;
        String str4;
        Sardine sardine;
        String str5;
        String str6;
        Sardine sardine2;
        String str7;
        String str8 = "80";
        try {
            String x = ak.x(str);
            try {
                String y = ak.y(str);
                str3 = ak.a(str);
                try {
                    str8 = ak.v(str);
                    boolean startsWith = str.startsWith("webdavs://");
                    str4 = x == null ? "fake" : x;
                    String str9 = y == null ? "fake" : y;
                    if (str8 == null) {
                        str2 = startsWith ? "443" : "80";
                    } else {
                        str2 = str8;
                    }
                    try {
                        sardine = a(str4, str9, str3, str2);
                        if (sardine == null) {
                            if (sardine != null) {
                                a(str4, str3, str2, sardine);
                            }
                            return null;
                        }
                        try {
                            String i = ak.i(str);
                            if (startsWith) {
                                str7 = Utils.https + str3 + (str2.equals("443") ? "" : ":" + str2) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                            } else {
                                str7 = Utils.http + str3 + (str2.equals("80") ? "" : ":" + str2) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                            }
                            String c2 = z ? ak.c(str4, str9, i) : null;
                            List<DavResource> list = sardine.list(str7, 0);
                            if (list == null || list.size() == 0) {
                                if (sardine != null) {
                                    a(str4, str3, str2, sardine);
                                }
                                return null;
                            }
                            if (!z) {
                                c2 = str;
                            }
                            com.estrongs.fs.c cVar = new com.estrongs.fs.c(c2);
                            cVar.d = list.get(0).isDirectory();
                            if (!cVar.d) {
                                cVar.c = "File";
                                cVar.e = list.get(0).getContentLength().longValue();
                            }
                            cVar.j = list.get(0).getModified().getTime();
                            cVar.h = 0L;
                            cVar.k = true;
                            cVar.l = true;
                            String d = ak.d(str);
                            cVar.m = d == null || d.startsWith(".");
                            f3175a = null;
                            if (sardine != null) {
                                a(str4, str3, str2, sardine);
                            }
                            return cVar;
                        } catch (Exception e) {
                            e = e;
                            str8 = str2;
                            str5 = str3;
                            str6 = str4;
                            sardine2 = sardine;
                            try {
                                e.printStackTrace();
                                f3175a = e.getMessage();
                                if (sardine2 != null) {
                                    a(str6, str5, str8, sardine2);
                                }
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                sardine = sardine2;
                                str4 = str6;
                                str3 = str5;
                                str2 = str8;
                                if (sardine != null) {
                                    a(str4, str3, str2, sardine);
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (sardine != null) {
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str8 = str2;
                        str5 = str3;
                        str6 = str4;
                        sardine2 = null;
                    } catch (Throwable th3) {
                        th = th3;
                        sardine = null;
                    }
                } catch (Exception e3) {
                    e = e3;
                    sardine2 = null;
                    str5 = str3;
                    str6 = x;
                } catch (Throwable th4) {
                    th = th4;
                    str4 = x;
                    sardine = null;
                    str2 = str8;
                }
            } catch (Exception e4) {
                e = e4;
                str6 = x;
                sardine2 = null;
                str5 = null;
            } catch (Throwable th5) {
                th = th5;
                str3 = null;
                str4 = x;
                sardine = null;
                str2 = "80";
            }
        } catch (Exception e5) {
            e = e5;
            str5 = null;
            str6 = null;
            sardine2 = null;
        } catch (Throwable th6) {
            th = th6;
            str2 = "80";
            str3 = null;
            str4 = null;
            sardine = null;
        }
    }

    private static synchronized Sardine a(String str, String str2, String str3, String str4) {
        Sardine sardine;
        ArrayList<Sardine> arrayList;
        synchronized (b.class) {
            try {
                synchronized (c) {
                    arrayList = c.get(str + "@" + str3 + "@" + str4);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        c.put(str + "@" + str3 + "@" + str4, arrayList);
                    }
                }
                sardine = arrayList.size() > 0 ? arrayList.remove(0) : SardineFactory.begin(str, str2);
            } catch (Exception e) {
                sardine = null;
            }
        }
        return sardine;
    }

    public static InputStream a(String str, long j) {
        Sardine sardine;
        String str2;
        ConsumingInputStream consumingInputStream;
        try {
            String x = ak.x(str);
            String y = ak.y(str);
            String a2 = ak.a(str);
            String v = ak.v(str);
            boolean startsWith = str.startsWith("webdavs://");
            if (x == null) {
                x = "fake";
            }
            String str3 = y == null ? "fake" : y;
            if (v == null) {
                v = startsWith ? "443" : "80";
            }
            sardine = a(x, str3, a2, v);
            if (sardine == null) {
                return null;
            }
            try {
                String i = ak.i(str);
                if (startsWith) {
                    str2 = Utils.https + a2 + (v.equals("443") ? "" : ":" + v) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                } else {
                    str2 = Utils.http + a2 + (v.equals("80") ? "" : ":" + v) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                }
                if (j > 0) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("Range", "bytes=" + j + "-");
                    consumingInputStream = sardine.get(str2, hashMap);
                } else {
                    consumingInputStream = sardine.get(str2);
                }
                f3175a = null;
                return new d(consumingInputStream, sardine, x, a2, v);
            } catch (Exception e) {
                e = e;
                f3175a = e.getMessage();
                if (sardine != null) {
                    sardine.destroy();
                }
                throw new FileSystemException(e);
            }
        } catch (Exception e2) {
            e = e2;
            sardine = null;
        }
    }

    public static List<g> a(String str, h hVar, l<String> lVar) {
        return a(str, hVar, lVar, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0228  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<g> a(String str, h hVar, l<String> lVar, boolean z) {
        String str2;
        String str3;
        String str4;
        Sardine sardine;
        Sardine sardine2 = null;
        String str5 = null;
        String str6 = null;
        String str7 = "80";
        try {
            str2 = ak.x(str);
            try {
                String y = ak.y(str);
                str3 = ak.a(str);
                try {
                    str7 = ak.v(str);
                    boolean startsWith = str.startsWith("webdavs://");
                    if (str2 == null) {
                        str2 = "fake";
                    }
                    String str8 = y == null ? "fake" : y;
                    str4 = str7 == null ? startsWith ? "443" : "80" : str7;
                    try {
                        try {
                            Sardine a2 = a(str2, str8, str3, str4);
                            if (a2 == null) {
                                if (a2 == null) {
                                    return null;
                                }
                                a(str2, str3, str4, a2);
                                return null;
                            }
                            try {
                                String i = ak.i(str);
                                String str9 = startsWith ? Utils.https + str3 + (str4.equals("443") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20") : Utils.http + str3 + (str4.equals("80") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                String c2 = z ? ak.c(str2, str8, i) : null;
                                com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
                                List<DavResource> list = a2.list(str9, 1);
                                ArrayList arrayList = new ArrayList();
                                boolean z2 = false;
                                if (list != null) {
                                    for (DavResource davResource : list) {
                                        if (currentTask != null && currentTask.taskStopped()) {
                                            if (a2 == null) {
                                                return null;
                                            }
                                            a(str2, str3, str4, a2);
                                            return null;
                                        }
                                        if (davResource != null) {
                                            DavResource davResource2 = davResource;
                                            String decode = URLDecoder.decode(davResource2.getName(), "UTF-8");
                                            if (!decode.equals(".") && !decode.equals("..")) {
                                                String path = davResource2.getPath();
                                                if (!z2) {
                                                    z2 = true;
                                                    String substring = i.endsWith("/") ? i.substring(0, i.length() - 1) : i;
                                                    if (path != null) {
                                                        String decode2 = URLDecoder.decode(path, "UTF-8");
                                                        if (decode2.endsWith("/")) {
                                                            decode2 = decode2.substring(0, decode2.length() - 1);
                                                        }
                                                        if (!substring.equals(decode2)) {
                                                        }
                                                    } else if (decode.equals(ak.d(substring))) {
                                                    }
                                                }
                                                boolean z3 = z2;
                                                boolean z4 = davResource2.isDirectory() || (path != null && path.endsWith("/"));
                                                String str10 = z ? c2 : str;
                                                String str11 = str10.endsWith("/") ? str10 + decode : str10 + "/" + decode;
                                                if (z4) {
                                                    str11 = str11 + "/";
                                                }
                                                arrayList.add(new a(str11, davResource2, z4));
                                                z2 = z3;
                                            }
                                        }
                                    }
                                }
                                f3175a = null;
                                if (a2 == null) {
                                    return arrayList;
                                }
                                a(str2, str3, str4, a2);
                                return arrayList;
                            } catch (Exception e) {
                                e = e;
                                str7 = str4;
                                str6 = str3;
                                str5 = str2;
                                sardine = a2;
                                try {
                                    e.printStackTrace();
                                    sardine2 = null;
                                } catch (Throwable th) {
                                    th = th;
                                    sardine2 = sardine;
                                    str2 = str5;
                                    str3 = str6;
                                    str4 = str7;
                                }
                                try {
                                    f3175a = e.getMessage();
                                    a(str5, str6, str7);
                                    if (0 == 0) {
                                        return null;
                                    }
                                    a(str5, str6, str7, (Sardine) null);
                                    return null;
                                } catch (Throwable th2) {
                                    th = th2;
                                    str2 = str5;
                                    str3 = str6;
                                    str4 = str7;
                                    if (sardine2 != null) {
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (sardine2 != null) {
                                a(str2, str3, str4, sardine2);
                            }
                            throw th;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str7 = str4;
                        str6 = str3;
                        str5 = str2;
                        sardine = null;
                    }
                } catch (Exception e3) {
                    e = e3;
                    str6 = str3;
                    str5 = str2;
                    sardine = null;
                } catch (Throwable th4) {
                    th = th4;
                    str4 = str7;
                }
            } catch (Exception e4) {
                e = e4;
                str5 = str2;
                sardine = null;
            } catch (Throwable th5) {
                th = th5;
                str3 = null;
                str4 = "80";
            }
        } catch (Exception e5) {
            e = e5;
            sardine = null;
        } catch (Throwable th6) {
            th = th6;
            str2 = null;
            str3 = null;
            str4 = "80";
        }
    }

    public static synchronized void a(String str, String str2, String str3) {
        synchronized (b.class) {
            synchronized (c) {
                ArrayList<Sardine> arrayList = c.get(str + "@" + str2 + "@" + str3);
                c.remove(str + "@" + str2 + "@" + str3);
                if (arrayList != null) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= arrayList.size()) {
                            break;
                        }
                        Sardine sardine = arrayList.get(i2);
                        if (sardine != null) {
                            try {
                                sardine.destroy();
                            } catch (Exception e) {
                            }
                        }
                        i = i2 + 1;
                    }
                }
            }
        }
    }

    private static void a(String str, String str2, String str3, Sardine sardine) {
        synchronized (c) {
            ArrayList<Sardine> arrayList = c.get(str + "@" + str2 + "@" + str3);
            if (arrayList != null) {
                arrayList.add(sardine);
            } else {
                ArrayList<Sardine> arrayList2 = new ArrayList<>();
                arrayList2.add(sardine);
                c.put(str + "@" + str2 + "@" + str3, arrayList2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7  */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(Context context, String str, p pVar) {
        String str2;
        ?? r4;
        Sardine sardine;
        String str3;
        boolean z;
        Sardine sardine2 = null;
        String str4 = "80";
        try {
            r4 = ak.x(str);
            try {
                String y = ak.y(str);
                str2 = ak.a(str);
                try {
                    try {
                        str4 = ak.v(str);
                        boolean startsWith = str.startsWith("webdavs://");
                        r4 = r4;
                        if (r4 == 0) {
                            r4 = "fake";
                        }
                        String str5 = y == null ? "fake" : y;
                        if (str4 == null) {
                            str4 = startsWith ? "443" : "80";
                        }
                        Sardine a2 = a((String) r4, str5, str2, str4);
                        if (a2 == null) {
                            z = false;
                        } else {
                            try {
                                String i = ak.i(str);
                                if (startsWith) {
                                    str3 = Utils.https + str2 + (str4.equals("443") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                } else {
                                    str3 = Utils.http + str2 + (str4.equals("80") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                }
                                a2.delete(str3);
                                f3175a = null;
                                z = true;
                            } catch (Exception e) {
                                e = e;
                                Sardine sardine3 = r4;
                                sardine = a2;
                                sardine2 = sardine3;
                                try {
                                    f3175a = e.getMessage();
                                    throw new FileSystemException(e);
                                } catch (Throwable th) {
                                    th = th;
                                    Sardine sardine4 = sardine2;
                                    sardine2 = sardine;
                                    r4 = sardine4;
                                    if (sardine2 != null) {
                                        a((String) r4, str2, str4, sardine2);
                                    }
                                    throw th;
                                }
                            }
                        }
                        if (a2 != null) {
                            a((String) r4, str2, str4, a2);
                        }
                        return z;
                    } catch (Throwable th2) {
                        th = th2;
                        if (sardine2 != null) {
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    Sardine sardine5 = r4;
                    sardine = null;
                    sardine2 = sardine5;
                }
            } catch (Exception e3) {
                e = e3;
                str2 = null;
                sardine = null;
                sardine2 = r4;
            } catch (Throwable th3) {
                th = th3;
                str2 = null;
            }
        } catch (Exception e4) {
            e = e4;
            str2 = null;
            sardine = null;
        } catch (Throwable th4) {
            th = th4;
            str2 = null;
            r4 = 0;
        }
    }

    public static boolean a(Context context, String str, String str2) {
        return a(str, str2, true);
    }

    public static boolean a(String str, String str2) {
        return a(str, str2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a4  */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(String str, String str2, boolean z) {
        String str3;
        ?? r4;
        Sardine sardine;
        String str4;
        String str5;
        boolean z2;
        Sardine sardine2 = null;
        String str6 = "22";
        try {
            r4 = ak.x(str);
            try {
                String y = ak.y(str);
                str3 = ak.a(str);
                try {
                    try {
                        str6 = ak.v(str);
                        boolean startsWith = str.startsWith("webdavs://");
                        r4 = r4;
                        if (r4 == 0) {
                            r4 = "fake";
                        }
                        String str7 = y == null ? "fake" : y;
                        if (str6 == null) {
                            str6 = startsWith ? "443" : "80";
                        }
                        Sardine a2 = a((String) r4, str7, str3, str6);
                        if (a2 == null) {
                            z2 = false;
                            if (a2 != null) {
                                a((String) r4, str3, str6, a2);
                            }
                        } else {
                            try {
                                String i = ak.i(str);
                                String i2 = ak.i(str2);
                                if (startsWith) {
                                    str4 = Utils.https + str3 + (str6.equals("443") ? "" : ":" + str6) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                    str5 = Utils.https + str3 + (str6.equals("443") ? "" : ":" + str6) + URLEncoder.encode(i2).replace("%2F", "/").replace("+", "%20");
                                } else {
                                    str4 = Utils.http + str3 + (str6.equals("80") ? "" : ":" + str6) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                    str5 = Utils.http + str3 + (str6.equals("80") ? "" : ":" + str6) + URLEncoder.encode(i2).replace("%2F", "/").replace("+", "%20");
                                }
                                if (z) {
                                    a2.copy(str4, str5);
                                } else {
                                    a2.move(str4, str5);
                                }
                                f3175a = null;
                                z2 = true;
                                if (a2 != null) {
                                    a((String) r4, str3, str6, a2);
                                }
                            } catch (Exception e) {
                                e = e;
                                Sardine sardine3 = r4;
                                sardine = a2;
                                sardine2 = sardine3;
                                try {
                                    f3175a = e.getMessage();
                                    throw new FileSystemException(e);
                                } catch (Throwable th) {
                                    th = th;
                                    Sardine sardine4 = sardine2;
                                    sardine2 = sardine;
                                    r4 = sardine4;
                                    if (sardine2 != null) {
                                        a((String) r4, str3, str6, sardine2);
                                    }
                                    throw th;
                                }
                            }
                        }
                        return z2;
                    } catch (Exception e2) {
                        e = e2;
                        Sardine sardine5 = r4;
                        sardine = null;
                        sardine2 = sardine5;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (sardine2 != null) {
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                str3 = null;
                sardine = null;
                sardine2 = r4;
            } catch (Throwable th3) {
                th = th3;
                str3 = null;
            }
        } catch (Exception e4) {
            e = e4;
            str3 = null;
            sardine = null;
        } catch (Throwable th4) {
            th = th4;
            str3 = null;
            r4 = 0;
        }
    }

    public static long b(String str) {
        com.estrongs.fs.c a2 = a(str);
        if (a2 == null) {
            return -1L;
        }
        return a2.e;
    }

    public static OutputStream b(String str, long j) {
        Sardine sardine;
        String str2;
        try {
            String x = ak.x(str);
            String y = ak.y(str);
            String a2 = ak.a(str);
            String v = ak.v(str);
            boolean startsWith = str.startsWith("webdavs://");
            if (x == null) {
                x = "fake";
            }
            String str3 = y == null ? "fake" : y;
            if (v == null) {
                v = startsWith ? "443" : "80";
            }
            sardine = SardineFactory.begin(x, str3);
            if (sardine == null) {
                return null;
            }
            try {
                UploadOutputStream uploadOutputStream = new UploadOutputStream();
                PipedInputStream pipedInputStream = new PipedInputStream();
                try {
                    pipedInputStream.connect(uploadOutputStream);
                    String i = ak.i(str);
                    if (startsWith) {
                        str2 = Utils.https + a2 + (v.equals("443") ? "" : ":" + v) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                    } else {
                        str2 = Utils.http + a2 + (v.equals("80") ? "" : ":" + v) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                    }
                    Thread cVar = new c(pipedInputStream, j, sardine, str2, uploadOutputStream);
                    uploadOutputStream.setTask(cVar, pipedInputStream);
                    cVar.start();
                    f3175a = null;
                    return new e(uploadOutputStream, sardine, x, a2, v);
                } catch (Exception e) {
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                if (sardine != null) {
                    sardine.abort();
                    sardine.destroy();
                }
                f3175a = e.getMessage();
                throw new FileSystemException(e);
            }
        } catch (Exception e3) {
            e = e3;
            sardine = null;
        }
    }

    public static boolean b(String str, String str2) {
        return a(str, str2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0110  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(String str, boolean z) {
        String str2;
        ?? r6;
        String str3;
        String str4;
        Sardine sardine;
        String str5;
        Sardine sardine2 = null;
        if (z) {
            return e(str);
        }
        String str6 = "22";
        try {
            r6 = ak.x(str);
            try {
                String y = ak.y(str);
                str2 = ak.a(str);
                try {
                    try {
                        str6 = ak.v(str);
                        boolean startsWith = str.startsWith("webdavs://");
                        r6 = r6;
                        if (r6 == 0) {
                            r6 = "fake";
                        }
                        String str7 = y == null ? "fake" : y;
                        if (str6 == null) {
                            str6 = startsWith ? "443" : "80";
                        }
                        Sardine a2 = a((String) r6, str7, str2, str6);
                        if (a2 == null) {
                            if (a2 != null) {
                                a((String) r6, str2, str6, a2);
                            }
                            return false;
                        }
                        try {
                            String i = ak.i(str);
                            if (startsWith) {
                                str5 = Utils.https + str2 + (str6.equals("443") ? "" : ":" + str6) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                            } else {
                                str5 = Utils.http + str2 + (str6.equals("80") ? "" : ":" + str6) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                            }
                            a2.put(str5, new byte[]{32});
                            f3175a = null;
                            if (a2 != null) {
                                a((String) r6, str2, str6, a2);
                            }
                            return true;
                        } catch (Exception e) {
                            e = e;
                            str3 = str6;
                            str4 = str2;
                            sardine = a2;
                            sardine2 = r6;
                            try {
                                f3175a = e.getMessage();
                                throw new FileSystemException(e);
                            } catch (Throwable th) {
                                th = th;
                                str2 = str4;
                                r6 = sardine2;
                                sardine2 = sardine;
                                str6 = str3;
                                if (sardine2 != null) {
                                    a((String) r6, str2, str6, sardine2);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (sardine2 != null) {
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str3 = str6;
                    str4 = str2;
                    sardine = null;
                    sardine2 = r6;
                }
            } catch (Exception e3) {
                e = e3;
                str3 = "22";
                str4 = null;
                sardine = null;
                sardine2 = r6;
            } catch (Throwable th3) {
                th = th3;
                str2 = null;
            }
        } catch (Exception e4) {
            e = e4;
            str3 = "22";
            str4 = null;
            sardine = null;
        } catch (Throwable th4) {
            th = th4;
            str2 = null;
            r6 = 0;
        }
    }

    public static boolean c(String str) {
        com.estrongs.fs.c a2 = a(str);
        if (a2 == null) {
            return false;
        }
        return a2.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f9  */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(String str) {
        String str2;
        ?? r4;
        Sardine sardine;
        String str3;
        boolean exists;
        Sardine sardine2 = null;
        String str4 = "80";
        try {
            r4 = ak.x(str);
            try {
                String y = ak.y(str);
                str2 = ak.a(str);
                try {
                    try {
                        str4 = ak.v(str);
                        boolean startsWith = str.startsWith("webdavs://");
                        r4 = r4;
                        if (r4 == 0) {
                            r4 = "fake";
                        }
                        String str5 = y == null ? "fake" : y;
                        if (str4 == null) {
                            str4 = startsWith ? "443" : "80";
                        }
                        Sardine a2 = a((String) r4, str5, str2, str4);
                        if (a2 == null) {
                            exists = false;
                            if (a2 != null) {
                                a((String) r4, str2, str4, a2);
                            }
                        } else {
                            try {
                                String i = ak.i(str);
                                if (startsWith) {
                                    str3 = Utils.https + str2 + (str4.equals("443") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                } else {
                                    str3 = Utils.http + str2 + (str4.equals("80") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                }
                                exists = a2.exists(str3);
                                if (a2 != null) {
                                    a((String) r4, str2, str4, a2);
                                }
                            } catch (Exception e) {
                                e = e;
                                Sardine sardine3 = r4;
                                sardine = a2;
                                sardine2 = sardine3;
                                try {
                                    f3175a = e.getMessage();
                                    throw new FileSystemException(e);
                                } catch (Throwable th) {
                                    th = th;
                                    Sardine sardine4 = sardine2;
                                    sardine2 = sardine;
                                    r4 = sardine4;
                                    if (sardine2 != null) {
                                        a((String) r4, str2, str4, sardine2);
                                    }
                                    throw th;
                                }
                            }
                        }
                        return exists;
                    } catch (Exception e2) {
                        e = e2;
                        Sardine sardine5 = r4;
                        sardine = null;
                        sardine2 = sardine5;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (sardine2 != null) {
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                str2 = null;
                sardine = null;
                sardine2 = r4;
            } catch (Throwable th3) {
                th = th3;
                str2 = null;
            }
        } catch (Exception e4) {
            e = e4;
            str2 = null;
            sardine = null;
        } catch (Throwable th4) {
            th = th4;
            str2 = null;
            r4 = 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00fc  */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean e(String str) {
        String str2;
        ?? r4;
        Sardine sardine;
        String str3;
        boolean z;
        Sardine sardine2 = null;
        String str4 = "22";
        try {
            r4 = ak.x(str);
            try {
                String y = ak.y(str);
                str2 = ak.a(str);
                try {
                    try {
                        str4 = ak.v(str);
                        boolean startsWith = str.startsWith("webdavs://");
                        r4 = r4;
                        if (r4 == 0) {
                            r4 = "fake";
                        }
                        String str5 = y == null ? "fake" : y;
                        if (str4 == null) {
                            str4 = startsWith ? "443" : "80";
                        }
                        Sardine a2 = a((String) r4, str5, str2, str4);
                        if (a2 == null) {
                            z = false;
                            if (a2 != null) {
                                a((String) r4, str2, str4, a2);
                            }
                        } else {
                            try {
                                String i = ak.i(str);
                                if (startsWith) {
                                    str3 = Utils.https + str2 + (str4.equals("443") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                } else {
                                    str3 = Utils.http + str2 + (str4.equals("80") ? "" : ":" + str4) + URLEncoder.encode(i).replace("%2F", "/").replace("+", "%20");
                                }
                                a2.createDirectory(str3);
                                f3175a = null;
                                z = true;
                                if (a2 != null) {
                                    a((String) r4, str2, str4, a2);
                                }
                            } catch (Exception e) {
                                e = e;
                                Sardine sardine3 = r4;
                                sardine = a2;
                                sardine2 = sardine3;
                                try {
                                    f3175a = e.getMessage();
                                    throw new FileSystemException(e);
                                } catch (Throwable th) {
                                    th = th;
                                    Sardine sardine4 = sardine2;
                                    sardine2 = sardine;
                                    r4 = sardine4;
                                    if (sardine2 != null) {
                                        a((String) r4, str2, str4, sardine2);
                                    }
                                    throw th;
                                }
                            }
                        }
                        return z;
                    } catch (Exception e2) {
                        e = e2;
                        Sardine sardine5 = r4;
                        sardine = null;
                        sardine2 = sardine5;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (sardine2 != null) {
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                str2 = null;
                sardine = null;
                sardine2 = r4;
            } catch (Throwable th3) {
                th = th3;
                str2 = null;
            }
        } catch (Exception e4) {
            e = e4;
            str2 = null;
            sardine = null;
        } catch (Throwable th4) {
            th = th4;
            str2 = null;
            r4 = 0;
        }
    }

    public static a f(String str) {
        try {
            com.estrongs.fs.c a2 = a(str);
            return new a(str, a2.e, a2.j, a2.d);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
