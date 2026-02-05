package com.estrongs.android.util;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.FileSystemException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.net.ftp.FTPCommand;

/* loaded from: classes.dex */
public class ak {

    /* renamed from: b, reason: collision with root package name */
    private static LinkedList<String> f2670b;

    /* renamed from: a, reason: collision with root package name */
    public static final String f2669a = ak.class.getSimpleName();
    private static Object c = new Object();
    private static final Comparator<String> d = new al();
    private static HashMap<String, String> e = new HashMap<>();
    private static List<String> f = new ArrayList();
    private static com.estrongs.fs.h g = new am();

    public static String A(String str) {
        List<com.estrongs.fs.g> a2;
        if (str == null) {
            return null;
        }
        if (!aP(str) || z(str)) {
            return str;
        }
        try {
            String aQ = aQ(str);
            if (aQ == null || aQ.startsWith("pcs://") || ao(str) || (a2 = com.estrongs.fs.d.a().a(aQ(str))) == null) {
                return str;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= a2.size()) {
                    return str;
                }
                if (str.startsWith(C(a2.get(i2).getAbsolutePath()))) {
                    return b(str, y(a2.get(i2).getAbsolutePath()));
                }
                i = i2 + 1;
            }
        } catch (FileSystemException e2) {
            return str;
        }
    }

    public static final String B(String str) {
        if (str == null) {
            return null;
        }
        if ((!str.startsWith("/") && str.indexOf("://") == -1) || aO(str) || str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/") || str.equals("bt://") || str.equals("book://") || str.equals("apk://") || str.equals("SP://")) {
            return str;
        }
        if (str.startsWith("bt://")) {
            int indexOf = str.indexOf(47, 5);
            if (indexOf != -1 && indexOf != str.length() - 1) {
                return str.substring(indexOf, str.length());
            }
            if (indexOf != -1) {
                int indexOf2 = str.indexOf(10, 5);
                if (indexOf2 == -1) {
                    indexOf2 = str.length() - 1;
                }
                return indexOf2 > 5 ? str.substring(5, indexOf2) : str;
            }
        }
        int E = E(str);
        if (E == -1) {
            return D(str);
        }
        if (E == 30) {
            return str;
        }
        String a2 = a(str, E);
        String b2 = b(str);
        return str.startsWith("SP://") ? "picture://" + b2 + a2 : str.substring(0, aT(str)) + b2 + a2;
    }

    public static final String C(String str) {
        int E;
        if (str == null) {
            return null;
        }
        if ((!str.startsWith("/") && str.indexOf("://") == -1) || aO(str) || ao(str) || str.equals("bt://") || str.equals("book://") || str.equals("apk://") || str.equals("SP://") || (E = E(str)) == -1 || E == 30) {
            return str;
        }
        String a2 = a(str, E);
        String x = x(str);
        String b2 = b(str);
        if (an(str) || aq(str)) {
            b2 = ae(str);
        }
        if (au(str)) {
            b2 = af(str);
        }
        return str.startsWith("SP://") ? "picture://" + x + ":@" + b2 + a2 : (!str.startsWith("smb://") || bf(str) == null) ? str.substring(0, aT(str)) + x + ":@" + b2 + a2 : str.substring(0, aT(str)) + bf(str) + ";" + x + ":@" + b2 + a2;
    }

    public static String D(String str) {
        String userInfo;
        URI uri = null;
        try {
            uri = URI.create(str);
        } catch (Exception e2) {
        }
        if (uri == null || (userInfo = uri.getUserInfo()) == null || userInfo.trim().length() == 0) {
            return str;
        }
        int indexOf = str.indexOf(userInfo);
        int length = userInfo.length() + indexOf + 1;
        if (indexOf <= -1) {
            return str;
        }
        try {
            return str.substring(0, indexOf) + str.substring(length);
        } catch (Exception e3) {
            return str;
        }
    }

    public static final int E(String str) {
        if (str == null) {
            return -1;
        }
        if (str.startsWith("pcs://") || (str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX") && !aK(str))) {
            return 23;
        }
        if (str.startsWith("smb://")) {
            return 1;
        }
        if (str.startsWith("ftp://") || str.startsWith("ftps://")) {
            return 2;
        }
        if (str.startsWith("sftp://")) {
            return 5;
        }
        if (str.startsWith("bt://")) {
            return 3;
        }
        if (str.startsWith("net://")) {
            return 4;
        }
        if (str.startsWith("SP://")) {
            return 18;
        }
        if (str.startsWith("/") || str.startsWith("file://")) {
            return 0;
        }
        if (str.startsWith("music://")) {
            return 12;
        }
        if (str.startsWith("pic://")) {
            return 13;
        }
        if (str.startsWith("gallery://local/buckets/")) {
            return 25;
        }
        if (str.startsWith("video://")) {
            return 14;
        }
        if (str.startsWith("book://")) {
            return 16;
        }
        if (str.startsWith("apk://")) {
            return 17;
        }
        if (str.startsWith("ftps://")) {
            return 19;
        }
        if (str.startsWith("ftpes://")) {
            return 20;
        }
        if (str.startsWith("webdav://")) {
            return 21;
        }
        if (str.startsWith("webdavs://")) {
            return 22;
        }
        if (str.startsWith("app://")) {
            return 24;
        }
        if (str.startsWith("download://")) {
            return 26;
        }
        if (str.startsWith("du://")) {
            return 27;
        }
        if (str.startsWith("cmpn://")) {
            return 28;
        }
        if (str.startsWith("remote://")) {
            return 29;
        }
        if (str.startsWith("recycle://")) {
            return 31;
        }
        return u(str) ? 30 : -1;
    }

    public static final boolean F(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("smb://");
    }

    public static final boolean G(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("sftp://");
    }

    public static final boolean H(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("ftp://");
    }

    public static final boolean I(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("ftp://");
    }

    public static final boolean J(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("sftp://");
    }

    public static final boolean K(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("music://");
    }

    public static final boolean L(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("pic://");
    }

    public static final boolean M(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("video://");
    }

    public static final boolean N(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("book://");
    }

    public static final boolean O(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("apk://");
    }

    public static final boolean P(String str) {
        return K(str) || L(str) || aC(str) || M(str) || N(str) || O(str);
    }

    public static final boolean Q(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("app://");
    }

    public static final boolean R(String str) {
        if (str == null) {
            return false;
        }
        return "app://".equals(str);
    }

    public static final boolean S(String str) {
        if (str == null) {
            return false;
        }
        return "app://user".equals(str);
    }

    public static final boolean T(String str) {
        if (str == null) {
            return false;
        }
        return "app://system".equals(str);
    }

    public static final boolean U(String str) {
        if (str == null) {
            return false;
        }
        return "app://phone".equals(str);
    }

    public static final boolean V(String str) {
        if (str == null) {
            return false;
        }
        return "app://sdcard".equals(str);
    }

    public static final boolean W(String str) {
        if (str == null) {
            return false;
        }
        return "app://update".equals(str);
    }

    public static final boolean X(String str) {
        if (str == null) {
            return false;
        }
        return "app://backuped".equals(str);
    }

    public static String Y(String str) {
        if (str == null) {
            return null;
        }
        if (!str.startsWith("net://") && !str.startsWith("pcs://")) {
            return null;
        }
        String substring = str.startsWith("net://") ? str.substring("net://".length()) : str.substring("pcs://".length());
        int indexOf = substring.indexOf(47);
        return indexOf > 0 ? substring.substring(indexOf) : "/";
    }

    public static String Z(String str) {
        if (str == null || !str.startsWith("SP://")) {
            return null;
        }
        String substring = str.substring("SP://".length());
        int indexOf = substring.indexOf(47);
        return indexOf > 0 ? substring.substring(indexOf) : "/";
    }

    public static String a(Context context) {
        String str;
        try {
            str = context.getCacheDir().getPath();
        } catch (Exception e2) {
            e2.printStackTrace();
            str = null;
        }
        if (str == null) {
            str = com.estrongs.android.pop.a.f327a;
        }
        return str + "/info/";
    }

    public static final String a(String str) {
        String x;
        if (str == null) {
            return null;
        }
        if (str.equals("smb://")) {
            return "Whole Network";
        }
        if (!aP(str)) {
            return str;
        }
        if (str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) {
            String h = com.estrongs.android.ui.pcs.aw.a().h();
            return (h == null || (x = x(h)) == null) ? str : x + "@pcs";
        }
        if (an(str) || aq(str)) {
            return aa(str) + "@" + ae(str);
        }
        if (au(str)) {
            return ab(str) + "@" + af(str);
        }
        String substring = str.substring(aT(str));
        int indexOf = substring.indexOf(47);
        if (indexOf != -1) {
            substring = substring.substring(0, indexOf);
        }
        int lastIndexOf = substring.lastIndexOf("@");
        if (lastIndexOf != -1) {
            substring = substring.substring(lastIndexOf + 1);
        }
        int lastIndexOf2 = substring.lastIndexOf(58);
        return lastIndexOf2 == -1 ? substring : substring.substring(0, lastIndexOf2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:1:0x0000. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(String str, int i) {
        String str2;
        switch (i) {
            case 0:
                return str;
            case 1:
                str2 = "smb://";
                String substring = str.substring(str2.length());
                int indexOf = substring.indexOf(47);
                return indexOf <= 0 ? substring.substring(indexOf) : "/";
            case 2:
                str2 = "ftp://";
                String substring2 = str.substring(str2.length());
                int indexOf2 = substring2.indexOf(47);
                if (indexOf2 <= 0) {
                }
                break;
            case 3:
                str2 = "bt://";
                String substring22 = str.substring(str2.length());
                int indexOf22 = substring22.indexOf(47);
                if (indexOf22 <= 0) {
                }
                break;
            case 4:
                return Y(str);
            case 5:
                str2 = "sftp://";
                String substring222 = str.substring(str2.length());
                int indexOf222 = substring222.indexOf(47);
                if (indexOf222 <= 0) {
                }
                break;
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
            case 24:
            case 25:
            case FTPCommand.LIST /* 26 */:
            case 27:
            case 28:
            case 29:
            default:
                return null;
            case 18:
                return Z(str);
            case 19:
                str2 = "ftps://";
                String substring2222 = str.substring(str2.length());
                int indexOf2222 = substring2222.indexOf(47);
                if (indexOf2222 <= 0) {
                }
                break;
            case 20:
                str2 = "ftpes://";
                String substring22222 = str.substring(str2.length());
                int indexOf22222 = substring22222.indexOf(47);
                if (indexOf22222 <= 0) {
                }
                break;
            case 21:
                str2 = "webdav://";
                String substring222222 = str.substring(str2.length());
                int indexOf222222 = substring222222.indexOf(47);
                if (indexOf222222 <= 0) {
                }
                break;
            case 22:
                str2 = "webdavs://";
                String substring2222222 = str.substring(str2.length());
                int indexOf2222222 = substring2222222.indexOf(47);
                if (indexOf2222222 <= 0) {
                }
                break;
            case 23:
                return Y(bw(str));
            case 30:
                if (str.startsWith(Utils.http)) {
                }
                return null;
        }
    }

    public static String a(String str, int i, boolean z) {
        String str2;
        String str3;
        String str4;
        String str5;
        StringBuilder sb = new StringBuilder(Utils.http);
        StringBuilder sb2 = new StringBuilder();
        sb.append("127.0.0.1:" + i + "/");
        int E = E(str);
        switch (E) {
            case 0:
                String str6 = new String("fake");
                String str7 = new String("fake");
                sb2.append("local");
                str2 = str7;
                str3 = str6;
                str4 = null;
                str5 = null;
                break;
            case 1:
                str4 = w(str);
                String x = x(str);
                String a2 = a(str);
                sb2.append("smb");
                str3 = x;
                str2 = a2;
                str5 = null;
                break;
            case 2:
            case 19:
            case 21:
            case 22:
                String x2 = x(str);
                String a3 = a(str);
                String v = v(str);
                if (E != 2) {
                    if (E != 21) {
                        if (E != 22) {
                            if (E != 19) {
                                str3 = x2;
                                str2 = a3;
                                str5 = v;
                                str4 = null;
                                break;
                            } else {
                                sb2.append("ftps");
                                str3 = x2;
                                str2 = a3;
                                str5 = v;
                                str4 = null;
                                break;
                            }
                        } else {
                            sb2.append("webdavs");
                            str3 = x2;
                            str2 = a3;
                            str5 = v;
                            str4 = null;
                            break;
                        }
                    } else {
                        sb2.append("webdav");
                        str3 = x2;
                        str2 = a3;
                        str5 = v;
                        str4 = null;
                        break;
                    }
                } else {
                    sb2.append("ftp");
                    str3 = x2;
                    str2 = a3;
                    str5 = v;
                    str4 = null;
                    break;
                }
            case 3:
                String substring = str.substring("bt://".length(), str.indexOf("/", "bt://".length()));
                sb2.append("bluetooth");
                str5 = null;
                str2 = substring;
                str3 = null;
                str4 = null;
                break;
            case 4:
                String x3 = x(str);
                String ae = ae(str);
                sb2.append("netdisk");
                str2 = ae;
                str3 = x3;
                str4 = null;
                str5 = null;
                break;
            case 5:
                String x4 = x(str);
                String a4 = a(str);
                String v2 = v(str);
                sb2.append("sftp");
                str3 = x4;
                str2 = a4;
                str5 = v2;
                str4 = null;
                break;
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
            case 18:
            case 20:
            default:
                return null;
            case 23:
                str = bw(str);
                String x5 = x(str);
                sb2.append("pcs");
                str2 = "pcs";
                str3 = x5;
                str4 = null;
                str5 = null;
                break;
        }
        sb2.append("/");
        if (str3 != null) {
            if (str4 != null) {
                sb2.append(str4);
                sb2.append(";");
            }
            sb2.append(str3);
            sb2.append("@");
        }
        sb2.append(str2);
        if (str5 != null) {
            sb2.append(":" + str5);
        }
        String y = y(str);
        if (y != null) {
            synchronized (e) {
                if (str4 != null) {
                    str3 = str4 + ';' + str3;
                }
                if (str5 == null) {
                    e.put(str3 + "@" + str2, aW(y));
                } else {
                    e.put(str3 + "@" + str2 + ":" + str5, aW(y));
                }
            }
        }
        String a5 = a(str, E);
        if (a5 == null) {
            return null;
        }
        sb2.append(a5);
        if (z) {
            sb.append(Uri.encode(sb2.toString()));
        } else {
            sb.append(sb2.toString());
        }
        return sb.toString();
    }

    public static final String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        if (sb.indexOf("@") != -1) {
            return sb.toString();
        }
        if (!aw.a((CharSequence) str2)) {
            sb.insert(aT(str), aW(str2) + ":" + aW(str3) + "@");
        }
        return sb.toString();
    }

    public static String a(String str, String str2, String str3, String str4) {
        return str.equals("pcs") ? "pcs://" + aW(str2) + ":" + aW(str3) + "@" + str + str4 : "net://" + aW(str2) + ":" + aW(str3) + "@" + str + str4;
    }

    public static String a(String str, boolean z) {
        String bc = bc(str);
        if (bc == null) {
            return null;
        }
        return (!z || str.endsWith("/") || str.length() <= 1) ? (z || !str.endsWith("/") || str.length() <= 1) ? bc : bc.substring(0, bc.length() - 1) : bc + "/";
    }

    public static final String a(boolean z, String str) {
        int indexOf;
        if (str == null || !aJ(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        int indexOf2 = sb.indexOf("/", 5);
        String substring = indexOf2 > 5 ? sb.substring(5, indexOf2) : sb.toString();
        return (z || (indexOf = substring.indexOf("\n")) == -1) ? substring : substring.substring(0, indexOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0083 A[Catch: all -> 0x00c8, TryCatch #7 {, blocks: (B:4:0x0005, B:6:0x0010, B:7:0x0017, B:10:0x0019, B:116:0x007b, B:118:0x0083, B:119:0x0088, B:121:0x008c, B:123:0x0096, B:125:0x00a3, B:127:0x00a9, B:128:0x00b0, B:130:0x00b9, B:131:0x00be, B:132:0x00c5, B:135:0x019c, B:152:0x0078, B:143:0x01a8, B:141:0x01ab), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00b9 A[Catch: all -> 0x00c8, TryCatch #7 {, blocks: (B:4:0x0005, B:6:0x0010, B:7:0x0017, B:10:0x0019, B:116:0x007b, B:118:0x0083, B:119:0x0088, B:121:0x008c, B:123:0x0096, B:125:0x00a3, B:127:0x00a9, B:128:0x00b0, B:130:0x00b9, B:131:0x00be, B:132:0x00c5, B:135:0x019c, B:152:0x0078, B:143:0x01a8, B:141:0x01ab), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<String> a() {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        LinkedList linkedList;
        File file;
        LinkedList linkedList2;
        String str;
        int i;
        String[] split;
        String str2;
        String[] split2;
        LinkedList linkedList3;
        Exception e2;
        synchronized (c) {
            File file2 = new File("/proc/mounts");
            if (f2670b != null) {
                linkedList = new LinkedList(f2670b);
            } else {
                f2670b = new LinkedList<>();
                String b2 = com.estrongs.android.pop.b.b();
                HashSet hashSet = new HashSet();
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2), "UTF8"));
                    try {
                        try {
                            if (com.estrongs.android.pop.m.k != null) {
                                Iterator<String> it = com.estrongs.android.pop.m.k.iterator();
                                LinkedList linkedList4 = null;
                                while (it.hasNext()) {
                                    try {
                                        String canonicalPath = new File(it.next()).getCanonicalPath();
                                        if (canonicalPath != null) {
                                            linkedList3 = linkedList4 == null ? new LinkedList() : linkedList4;
                                            try {
                                                linkedList3.add(canonicalPath);
                                            } catch (Exception e3) {
                                                e2 = e3;
                                                e2.printStackTrace();
                                                linkedList4 = linkedList3;
                                            }
                                        } else {
                                            linkedList3 = linkedList4;
                                        }
                                    } catch (Exception e4) {
                                        linkedList3 = linkedList4;
                                        e2 = e4;
                                    }
                                    linkedList4 = linkedList3;
                                }
                                linkedList2 = linkedList4;
                            } else {
                                linkedList2 = null;
                            }
                            String readLine = bufferedReader.readLine();
                            int i2 = 0;
                            while (readLine != null) {
                                if (linkedList2 != null) {
                                    Iterator it2 = linkedList2.iterator();
                                    String str3 = readLine;
                                    while (it2.hasNext()) {
                                        String str4 = (String) it2.next();
                                        if (str3.contains(str4)) {
                                            if (!f2670b.contains(str4)) {
                                                f2670b.add(str4);
                                            }
                                            str3 = bufferedReader.readLine();
                                        }
                                    }
                                    str = str3;
                                } else {
                                    str = readLine;
                                }
                                if (str != null && str.contains(" /proc ") && (split2 = str.split(" ")) != null) {
                                    for (int i3 = 0; i3 < split2.length; i3++) {
                                        if ("/proc".equalsIgnoreCase(split2[i3])) {
                                            i = i3;
                                            break;
                                        }
                                    }
                                }
                                i = i2;
                                if (str != null && ((str.contains("/dev/block/vold/") || bF(str)) && !str.contains("secure") && !str.contains("asec") && !str.equalsIgnoreCase(b2) && (split = str.split(" ")) != null && i < split.length)) {
                                    int length = split.length;
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= length) {
                                            str2 = null;
                                            break;
                                        }
                                        str2 = split[i4];
                                        if (str2.contains("/dev/block/vold/") || bF(str2)) {
                                            break;
                                        }
                                        i4++;
                                    }
                                    if (str2 != null && (!hashSet.contains(str2) || bF(str2))) {
                                        String str5 = split[i];
                                        if (!f2670b.contains(str5) && bG(str5)) {
                                            f2670b.add(str5);
                                            hashSet.add(str2);
                                        }
                                    }
                                }
                                readLine = bufferedReader.readLine();
                                i2 = i;
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e5) {
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e6) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception e7) {
                        e = e7;
                        bufferedReader2 = bufferedReader;
                        try {
                            Log.e("PathUtils", "Failed to get the external storage path:", e);
                            if (bufferedReader2 != null) {
                                try {
                                    bufferedReader2.close();
                                } catch (IOException e8) {
                                }
                            }
                            if (!f2670b.contains(b2)) {
                            }
                            if (com.estrongs.android.pop.m.V) {
                                file = new File("/data/internal_memory");
                                if (file.exists()) {
                                    f2670b.add("/data/internal_memory");
                                }
                            }
                            if (f2670b.size() > 1) {
                            }
                            linkedList = new LinkedList(f2670b);
                            return linkedList;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Exception e9) {
                    e = e9;
                    bufferedReader2 = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = null;
                }
                if (!f2670b.contains(b2)) {
                    f2670b.add(b2);
                }
                if (com.estrongs.android.pop.m.V && !f2670b.contains("/data/internal_memory")) {
                    file = new File("/data/internal_memory");
                    if (file.exists() && file.isDirectory()) {
                        f2670b.add("/data/internal_memory");
                    }
                }
                if (f2670b.size() > 1) {
                    Collections.sort(f2670b);
                }
                linkedList = new LinkedList(f2670b);
            }
        }
        return linkedList;
    }

    public static final boolean a(int i) {
        return i == 2 || i == 19 || i == 20 || i == 21 || i == 22;
    }

    public static boolean a(File file) {
        try {
            if (aZ(file.getAbsolutePath())) {
                return false;
            }
            return com.estrongs.android.e.c.a(FileExplorerActivity.S(), file.getAbsolutePath());
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean a(String str, TypedMap typedMap) {
        return aL(str) && aw.e() && !typedMap.getBoolean("fileSystemSearch") && ba(bo(aM(str)));
    }

    public static final boolean a(String str, String str2) {
        String str3 = null;
        if (str == null || str2 == null) {
            return false;
        }
        if (!aO(str) || !aO(str2)) {
            return false;
        }
        boolean aZ = aZ(str);
        boolean aZ2 = aZ(str2);
        boolean z = str.startsWith("/system/") || str.equals("/system");
        boolean z2 = str2.startsWith("/system/") || str2.equals("/system");
        boolean z3 = str.startsWith("/data/") || str.equals("/data");
        boolean z4 = str2.startsWith("/data/") || str2.equals("/data");
        if (!aZ || !aZ2) {
            if (z && z2) {
                return true;
            }
            if (z3 && z4) {
                return true;
            }
            return (aZ || aZ2 || z || z2 || z3 || z4) ? false : true;
        }
        List<String> a2 = a();
        Collections.sort(a2, d);
        String str4 = null;
        for (String str5 : a2) {
            if (str3 == null && bd(str).startsWith(str5)) {
                str3 = str5;
            }
            if (str4 != null || !bd(str2).startsWith(str5)) {
                str5 = str4;
            }
            str4 = str5;
        }
        if (str3 == null || !str3.equalsIgnoreCase(str4)) {
            return str3 == null && str4 == null;
        }
        return true;
    }

    public static final boolean aA(String str) {
        return au(str) && com.estrongs.fs.a.a.c(str).size() > 2;
    }

    public static final boolean aB(String str) {
        if (str == null) {
            return false;
        }
        return "gallery://local/buckets/".equals(bp(str));
    }

    public static final boolean aC(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("gallery://local/buckets/");
    }

    public static final boolean aD(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("net://");
    }

    public static final boolean aE(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("cmpn://");
    }

    public static final String aF(String str) {
        if (str == null) {
            return null;
        }
        return str.substring("cmpn://".length());
    }

    public static final boolean aG(String str) {
        return aE(str) && str.indexOf(42) == -1;
    }

    public static final String aH(String str) {
        int indexOf = str.indexOf(42);
        return indexOf > 0 ? str.substring(0, indexOf) : str;
    }

    public static final String aI(String str) {
        int indexOf = str.indexOf(42);
        if (indexOf != -1) {
            return str.substring(indexOf + 1);
        }
        return null;
    }

    public static final boolean aJ(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("bt://");
    }

    public static final boolean aK(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("search://");
    }

    public static boolean aL(String str) {
        return aK(str) && com.estrongs.fs.a.a.c(str).size() == 3;
    }

    public static String aM(String str) {
        if (!aK(str)) {
            return null;
        }
        List<String> c2 = com.estrongs.fs.a.a.c(str);
        if (c2.size() >= 3) {
            return c2.get(2).replaceAll("#", "/");
        }
        return null;
    }

    public static final boolean aN(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("bt://");
    }

    public static final boolean aO(String str) {
        if (str == null) {
            return false;
        }
        return (str.startsWith("/") || str.startsWith("file://")) && !str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
    }

    public static final boolean aP(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("smb://") || str.startsWith("ftp://") || str.startsWith("bt://") || str.startsWith("ftps://") || str.startsWith("ftpes://") || str.startsWith("webdav://") || str.startsWith("webdavs://") || str.startsWith("net://") || str.startsWith("pcs://") || str.startsWith("sftp://") || str.startsWith("SP://") || str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/");
    }

    public static final String aQ(String str) {
        if (str == null) {
            return null;
        }
        return str.startsWith("smb://") ? "smb://" : str.startsWith("ftp://") ? "ftp://" : str.startsWith("bt://") ? "bt://" : str.startsWith("ftps://") ? "ftps://" : str.startsWith("net://") ? "net://" : str.startsWith("sftp://") ? "sftp://" : str.startsWith("SP://") ? "SP://" : str;
    }

    public static boolean aR(String str) {
        if (str == null) {
            return false;
        }
        return aS(str) || aU(str) || aL(str) || "app://".equals(str) || "music://".equals(str) || "pic://".equals(str) || "video://".equals(str) || "search://".equals(str) || "book://".equals(str) || "apk://".equals(str) || "gallery://local/buckets/".equals(str) || "SP://".equals(str) || "pcs://".equals(str) || Q(str) || str.endsWith("://");
    }

    public static final boolean aS(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("/");
    }

    public static int aT(String str) {
        if (str.startsWith("SP://")) {
            return 5;
        }
        if (str.startsWith("sftp://") || str.startsWith("ftps://")) {
            return 7;
        }
        if (str.startsWith("ftpes://")) {
            return 8;
        }
        if (str.startsWith("webdav://")) {
            return 9;
        }
        if (str.startsWith("webdavs://")) {
            return 10;
        }
        if (str.startsWith(Utils.http)) {
            return 7;
        }
        return !str.startsWith(Utils.https) ? 6 : 8;
    }

    public static final boolean aU(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("smb://") || str.equals("ftp://") || str.equals("bt://") || str.equals("ftps://") || str.equals("ftpes://") || str.equals("webdav://") || str.equals("webdavs://") || str.equals("net://") || str.equals("pcs://") || str.equals("SP://") || str.equals("sftp://");
    }

    public static final boolean aV(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("smb://");
    }

    public static final String aW(String str) {
        return str == null ? "" : str.replaceAll(":", "[\\$\\$\\$]").replaceAll("/", "[###]").replaceAll("@", "[^^^]");
    }

    public static final String aX(String str) {
        return str == null ? "" : str.replaceAll("\\[\\$\\$\\$\\]", ":").replaceAll("\\[###\\]", "/").replaceAll("\\[\\^\\^\\^\\]", "@");
    }

    public static final String aY(String str) {
        if (str == null || str.length() == 0 || aS(str) || str.endsWith("://")) {
            return str;
        }
        if (aR(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        int length = str.length();
        if (sb.charAt(length - 1) == '/') {
            sb.deleteCharAt(length - 1);
        }
        if (aE(str) && !aG(str) && aI(str).indexOf("/") == -1) {
            return aH(str);
        }
        int lastIndexOf = sb.lastIndexOf("/");
        if (lastIndexOf != -1) {
            sb.delete(lastIndexOf + 1, sb.length());
        }
        String sb2 = sb.toString();
        return (sb2.equals("sftp://") || sb2.equals("ftps://") || sb2.equals("ftpes://")) ? "ftp://" : sb.toString();
    }

    public static final boolean aZ(String str) {
        String bc;
        if (str == null || str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/") || (bc = bc(str)) == null) {
            return false;
        }
        if (bc.startsWith("/sdcard/") || bc.startsWith("/mnt/sdcard/") || bc.equals("/mnt/sdcard") || bc.equals("/sdcard") || bc.startsWith("/storage/sdcard0/") || bc.startsWith("/storage/sdcard1/") || bc.startsWith("/storage/emulated/legacy/") || bc.startsWith("/storage/emulated/0/") || bc.equals("/storage/sdcard0") || bc.equals("/storage/sdcard1/") || bc.equals("/storage/emulated/legacy") || bc.equals("/storage/emulated/0")) {
            return true;
        }
        return bn(str) != null;
    }

    public static String aa(String str) {
        if (str == null) {
            return null;
        }
        if (!str.startsWith("net://") && !str.startsWith("pcs://")) {
            return null;
        }
        String[] split = (str.startsWith("net://") ? str.substring("net://".length()) : str.substring("pcs://".length())).split("/")[0].split(":");
        if (split.length != 1) {
            return aX(split[0]);
        }
        if (split[0] != null && split[0].contains("@")) {
            String[] split2 = split[0].split("@");
            if (split2.length >= 1) {
                return aX(split2[0]);
            }
        }
        return null;
    }

    public static String ab(String str) {
        if (str == null || !str.startsWith("SP://")) {
            return null;
        }
        String[] split = str.substring("SP://".length()).split("/")[0].split(":");
        if (split.length != 1) {
            return aX(split[0]);
        }
        if (split[0] == null || !split[0].contains("@")) {
            return null;
        }
        String[] split2 = split[0].split("@");
        if (split2.length >= 1) {
            return aX(split2[0]);
        }
        return null;
    }

    public static String ac(String str) {
        if (str == null) {
            return null;
        }
        if (!str.startsWith("net://") && !str.startsWith("pcs://")) {
            return null;
        }
        String[] split = (str.startsWith("net://") ? str.substring("net://".length()) : str.substring("pcs://".length())).split("/")[0].split(":");
        if (split.length == 1) {
            return null;
        }
        return aX(split[1].split("@")[0]);
    }

    public static String ad(String str) {
        if (str == null || !str.startsWith("SP://")) {
            return null;
        }
        String[] split = str.substring("SP://".length()).split("/")[0].split(":");
        if (split.length != 1) {
            return aX(split[1].split("@")[0]);
        }
        return null;
    }

    public static String ae(String str) {
        if (str == null) {
            return null;
        }
        if (str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
            return "pcs";
        }
        if (!str.startsWith("net://") && !str.startsWith("pcs://")) {
            return null;
        }
        String[] split = (str.startsWith("net://") ? str.substring("net://".length()) : str.substring("pcs://".length())).split("/")[0].split(":");
        String[] split2 = split[split.length == 1 ? (char) 0 : (char) 1].split("@");
        return split2.length == 1 ? split2[0] : split2[1];
    }

    public static String af(String str) {
        if (str == null || !str.startsWith("SP://")) {
            return null;
        }
        String[] split = str.substring("SP://".length()).split("/");
        String[] split2 = split[0].split(":");
        if (split2.length == 1) {
            return split[0];
        }
        String[] split3 = split2[1].split("@");
        return split3.length == 1 ? "UnknownType" : split3[1];
    }

    public static final boolean ag(String str) {
        if (str == null) {
            return false;
        }
        return "Flickr".equals(af(str));
    }

    public static final boolean ah(String str) {
        if (str == null) {
            return false;
        }
        return "Instagram".equals(af(str));
    }

    public static final boolean ai(String str) {
        if (str == null) {
            return false;
        }
        return "Facebook".equals(af(str));
    }

    public static final boolean aj(String str) {
        if (str != null && au(str)) {
            return "pcs".equals(af(str));
        }
        return false;
    }

    public static final boolean ak(String str) {
        if (str == null || !aj(str)) {
            return false;
        }
        String ab = ab(str);
        return ab == null || ab.length() == 0;
    }

    public static final boolean al(String str) {
        return aj(str) && az(str);
    }

    public static final boolean am(String str) {
        if (str == null) {
            return false;
        }
        return "dropbox".equals(ae(str));
    }

    public static final boolean an(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("net://");
    }

    public static final boolean ao(String str) {
        if (str == null) {
            return false;
        }
        return str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
    }

    public static final boolean ap(String str) {
        if (ao(str)) {
            return d(str, g());
        }
        return false;
    }

    public static final boolean aq(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("pcs://");
    }

    public static final String ar(String str) {
        if (str != null && aq(str)) {
            String a2 = a(str, 23);
            if (a2 == null || a2.equals("/")) {
                return null;
            }
            if (a2.endsWith("/")) {
                a2 = a2.substring(0, a2.length() - 1);
            }
            if (a2.indexOf(47, 1) == -1) {
                return a2;
            }
            return null;
        }
        return null;
    }

    public static final boolean as(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("pcs://");
    }

    public static final boolean at(String str) {
        if (str == null) {
            return false;
        }
        return str.equals("SP://");
    }

    public static final boolean au(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("SP://");
    }

    public static final boolean av(String str) {
        if (!au(str)) {
            return false;
        }
        List<String> c2 = com.estrongs.fs.a.a.c(str);
        if (c2.size() >= 3) {
            return "hot".equals(c2.get(2));
        }
        return false;
    }

    public static final boolean aw(String str) {
        if (!au(str)) {
            return false;
        }
        List<String> c2 = com.estrongs.fs.a.a.c(str);
        if (c2.size() >= 3) {
            return "album".equals(c2.get(2));
        }
        return false;
    }

    public static final boolean ax(String str) {
        if (!au(str)) {
            return false;
        }
        List<String> c2 = com.estrongs.fs.a.a.c(str);
        if (c2.size() == 3) {
            return "album".equals(c2.get(2));
        }
        return false;
    }

    public static final boolean ay(String str) {
        if (!au(str)) {
            return false;
        }
        List<String> c2 = com.estrongs.fs.a.a.c(str);
        if (c2.size() == 4) {
            return "album".equals(c2.get(2));
        }
        return false;
    }

    public static final boolean az(String str) {
        return au(str) && com.estrongs.fs.a.a.c(str).size() == 2;
    }

    public static String b(Context context) {
        return com.estrongs.android.pop.a.f327a + "/push/";
    }

    public static final String b(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("smb://")) {
            return "Whole Network";
        }
        if (!aP(str)) {
            return str;
        }
        if (an(str)) {
            return aa(str) + "@" + ae(str);
        }
        if (aq(str)) {
            return aa(str) + "@" + ae(str);
        }
        if (au(str)) {
            return ab(str) + "@" + af(str);
        }
        String substring = str.substring(aT(str));
        int indexOf = substring.indexOf(47);
        if (indexOf != -1) {
            substring = substring.substring(0, indexOf);
        }
        int lastIndexOf = substring.lastIndexOf("@");
        if (lastIndexOf != -1) {
            substring = substring.substring(lastIndexOf + 1);
        }
        return substring;
    }

    public static String b(String str, int i) {
        return a(str, i, true);
    }

    public static final String b(String str, String str2) {
        int E;
        if (str == null) {
            return null;
        }
        if ((!str.startsWith("/") && str.indexOf("://") == -1) || aO(str) || str.equals("bt://") || str.equals("book://") || str.equals("apk://") || str.equals("SP://") || (E = E(str)) == -1) {
            return str;
        }
        String a2 = a(str, E);
        String x = x(str);
        String b2 = b(str);
        if (an(str)) {
            b2 = ae(str);
        }
        if (au(str)) {
            b2 = af(str);
        }
        return str.startsWith("SP://") ? "picture://" + x + ":" + str2 + "@" + b2 + a2 : (!str.startsWith("smb://") || bf(str) == null) ? str.substring(0, aT(str)) + x + ":" + str2 + "@" + b2 + a2 : str.substring(0, aT(str)) + bf(str) + ";" + x + ":" + str2 + "@" + b2 + a2;
    }

    public static String b(String str, String str2, String str3) {
        return "webdavs://" + aW(str) + ":" + aW(str2) + "@webdav.yandex.ru" + str3;
    }

    public static String b(String str, String str2, String str3, String str4) {
        return "SP://" + aW(str2) + ":" + aW(str3) + "@" + str + str4;
    }

    public static void b() {
        synchronized (c) {
            f2670b = null;
        }
    }

    public static final boolean b(int i) {
        return i == 18 || i == 13 || i == 25;
    }

    public static boolean b(String str, TypedMap typedMap) {
        return aL(str) && !a(str, typedMap);
    }

    public static String bA(String str) {
        int indexOf;
        int length;
        int indexOf2;
        if (str == null || (indexOf = str.indexOf("/.estrongs/recycle/")) == -1 || (indexOf2 = str.indexOf("/", (length = indexOf + "/.estrongs/recycle/".length()))) == -1) {
            return null;
        }
        try {
            Long.parseLong(str.substring(length, indexOf2));
            int indexOf3 = str.indexOf("/es_recycle_content/", indexOf2);
            if (indexOf3 == -1) {
                return null;
            }
            return str.substring(indexOf2, indexOf3) + str.substring(("/es_recycle_content/".length() + indexOf3) - 1);
        } catch (NumberFormatException e2) {
            return null;
        }
    }

    public static String bB(String str) {
        String bn = bn(bo(str));
        if (bn == null) {
            return null;
        }
        return bn + "/.estrongs/recycle/";
    }

    public static String bC(String str) {
        return str.endsWith("/") ? str + ".estrongs" : str + "/.estrongs";
    }

    public static String bD(String str) {
        return str.endsWith("/") ? str + "/.estrongs/recycle/" : str + "/.estrongs/recycle/";
    }

    public static boolean bE(String str) {
        String bo = bo(str);
        String bn = bn(bo);
        if (bn == null) {
            return false;
        }
        String str2 = bn + "/.estrongs/recycle";
        if (bo.startsWith(str2)) {
            return bo.length() == str2.length() || bo.charAt(str2.length()) == '/';
        }
        return false;
    }

    private static boolean bF(String str) {
        return str != null && com.estrongs.android.pop.p.a() == 19 && str.contains("/dev/fuse");
    }

    private static boolean bG(String str) {
        if (str == null || str.startsWith("/storage/emulated/legacy")) {
            return false;
        }
        try {
            return new File(str).canRead();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static final boolean ba(String str) {
        return aZ(str);
    }

    public static final boolean bb(String str) {
        String bc;
        if (str == null || (bc = bc(str)) == null) {
            return false;
        }
        return bc.equals("/sdcard/") || bc.equals("/mnt/sdcard/") || bc.equals("/mnt/sdcard") || bc.equals("/sdcard");
    }

    public static String bc(String str) {
        if (str.startsWith("file://")) {
            try {
                return new File(new URI(str)).getAbsolutePath();
            } catch (Exception e2) {
                return str.substring(7);
            }
        }
        if (str.startsWith("/")) {
            return str;
        }
        return null;
    }

    public static String bd(String str) {
        return bo(str);
    }

    public static String be(String str) {
        int indexOf;
        int i;
        boolean z;
        String str2;
        String str3;
        String str4;
        String str5;
        int i2 = 1;
        if (str.startsWith("http://127.0.0.1")) {
            int indexOf2 = str.indexOf("/", 7);
            if (indexOf2 >= 0) {
                str = str.substring(indexOf2);
            }
        } else if (!str.startsWith("/")) {
            return str;
        }
        if (str.startsWith("/")) {
            indexOf = str.indexOf(47, 1);
            i = 1;
        } else {
            indexOf = str.indexOf(47);
            i = 0;
        }
        if (indexOf == -1) {
            return null;
        }
        String substring = str.substring(i, indexOf);
        String substring2 = str.substring(indexOf + 1);
        int indexOf3 = substring2.indexOf("/");
        if (indexOf3 == -1) {
            return null;
        }
        String substring3 = substring2.substring(0, indexOf3);
        String substring4 = substring2.substring(indexOf3);
        StringBuilder sb = new StringBuilder();
        if ("local".equals(substring)) {
            z = true;
            i2 = 0;
        } else if ("smb".equals(substring)) {
            sb.append("smb://");
            z = false;
        } else if ("ftp".equals(substring)) {
            i2 = 2;
            sb.append("ftp://");
            z = false;
        } else if ("sftp".equals(substring)) {
            i2 = 5;
            sb.append("sftp://");
            z = false;
        } else if ("netdisk".equals(substring)) {
            i2 = 4;
            sb.append("net://");
            z = false;
        } else if ("pcs".equals(substring)) {
            i2 = 23;
            sb.append("pcs://");
            z = false;
        } else if ("bluetooth".equals(substring)) {
            i2 = 3;
            sb.append("bt://");
            z = false;
        } else if ("webdav".equals(substring)) {
            sb.append("webdav://");
            i2 = 0;
            z = false;
        } else if ("webdavs".equals(substring)) {
            sb.append("webdavs://");
            i2 = 0;
            z = false;
        } else {
            if (!"ftps".equals(substring)) {
                return null;
            }
            sb.append("ftps://");
            i2 = 0;
            z = false;
        }
        int lastIndexOf = substring3.lastIndexOf(64);
        if (lastIndexOf == -1) {
            str4 = null;
            str2 = substring3;
            str3 = null;
        } else {
            String substring5 = substring3.substring(0, lastIndexOf);
            String substring6 = substring3.substring(lastIndexOf + 1);
            int indexOf4 = substring5.indexOf(59);
            if (indexOf4 > 0) {
                String substring7 = substring5.substring(0, indexOf4);
                String substring8 = substring5.substring(indexOf4 + 1);
                str2 = substring6;
                str3 = substring8;
                str4 = substring7;
            } else {
                str2 = substring6;
                str3 = substring5;
                str4 = null;
            }
        }
        if (!z) {
            if (str3 != null) {
                synchronized (e) {
                    str5 = e.get((str4 == null ? str3 : str4 + ';' + str3) + "@" + str2);
                }
                if (str5 == null) {
                    str5 = com.estrongs.fs.d.a().a(str3, str2, i2, str2);
                }
            } else {
                str5 = null;
            }
            if (str5 != null) {
                if (str4 != null) {
                    sb.append(str4);
                    sb.append(";");
                }
                sb.append(str3);
                sb.append(':');
                sb.append(str5);
                sb.append('@');
            }
            sb.append(str2);
        }
        sb.append(substring4);
        return sb.toString();
    }

    public static String bf(String str) {
        int aT = aT(str);
        int indexOf = str.indexOf(47, aT);
        if (indexOf == -1) {
            return null;
        }
        String substring = str.substring(aT, indexOf);
        int indexOf2 = substring.indexOf(64);
        int indexOf3 = substring.indexOf(58);
        int indexOf4 = substring.indexOf(59);
        if (indexOf4 == -1 || indexOf4 > indexOf2 || indexOf4 > indexOf3) {
            return null;
        }
        return substring.substring(0, indexOf4);
    }

    public static final boolean bg(String str) {
        if (str == null || str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/")) {
            return false;
        }
        String b2 = com.estrongs.android.pop.b.b();
        String bn = bn(str);
        if (bn == null) {
            return false;
        }
        if (b2.endsWith("/")) {
            if (!bn.endsWith("/")) {
                bn = bn + "/";
            }
        } else if (bn.endsWith("/")) {
            bn = bn.substring(0, bn.length() - 1);
        }
        return !bn.equalsIgnoreCase(b2);
    }

    public static String bh(String str) {
        return str;
    }

    public static String bi(String str) {
        int indexOf = str.indexOf("://");
        if (indexOf > 0) {
            return str.substring(0, indexOf);
        }
        return null;
    }

    public static String bj(String str) {
        List<String> c2 = com.estrongs.fs.a.a.c(str);
        ArrayList arrayList = new ArrayList();
        for (int i = 2; i < c2.size(); i++) {
            if (i == 2) {
                arrayList.addAll(com.estrongs.fs.a.a.c(c2.get(i).replaceAll("#", "/")));
            } else {
                arrayList.add(c2.get(i));
            }
        }
        String a2 = com.estrongs.fs.a.a.a(arrayList, arrayList.size() - 1);
        return a2.charAt(a2.length() + (-1)) != '/' ? a2 + "/" : a2;
    }

    public static String bk(String str) {
        int lastIndexOf;
        if (str == null || str.length() <= 0 || (lastIndexOf = str.lastIndexOf(46)) <= -1) {
            return null;
        }
        return str.substring(lastIndexOf);
    }

    public static String bl(String str) {
        int lastIndexOf;
        return (str == null || str.length() <= 0 || (lastIndexOf = str.lastIndexOf(46)) <= -1 || lastIndexOf >= str.length()) ? str : str.substring(0, lastIndexOf);
    }

    public static String bm(String str) {
        Uri parse = Uri.parse(Uri.decode(str));
        StringBuilder sb = new StringBuilder();
        if (parse.getScheme() != null) {
            sb.append(parse.getScheme()).append("://");
        } else {
            sb.append("/");
        }
        if (parse.getAuthority() != null) {
            sb.append(Uri.encode(parse.getAuthority(), ":@"));
        }
        if (parse.getPath() != null) {
            sb.append(Uri.encode(parse.getPath(), "/"));
        }
        if (parse.getQuery() != null) {
            sb.append("?").append(Uri.encode(parse.getQuery(), "=&"));
        }
        if (parse.getFragment() != null) {
            sb.append("#").append(Uri.encode(parse.getFragment()));
        }
        return sb.toString();
    }

    public static synchronized String bn(String str) {
        String str2;
        synchronized (ak.class) {
            synchronized (f) {
                if (f.size() == 0) {
                    f.addAll(a());
                    Collections.sort(f, d);
                }
                if (f != null && f.size() > 0) {
                    String bo = bo(str);
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= f.size()) {
                            break;
                        }
                        str2 = f.get(i2);
                        if (str2.endsWith("/")) {
                            if (bo.startsWith(str2)) {
                                break;
                            }
                            i = i2 + 1;
                        } else {
                            if (bo.startsWith(str2 + "/") || bo.equalsIgnoreCase(str2)) {
                                break;
                            }
                            i = i2 + 1;
                        }
                    }
                }
                str2 = null;
            }
        }
        return str2;
    }

    public static String bo(String str) {
        String replaceFirst;
        if (!aO(str)) {
            return str;
        }
        if (str.equals("/sdcard") || str.startsWith("/sdcard/")) {
            replaceFirst = str.replaceFirst("/sdcard", com.estrongs.android.pop.b.b());
        } else if (str.equals("/storage/emulated/legacy") || str.startsWith("/storage/emulated/legacy/")) {
            replaceFirst = str.replaceFirst("/storage/emulated/legacy", com.estrongs.android.pop.b.b());
        } else {
            synchronized (f) {
                if (f.size() == 0) {
                    bn(str);
                }
                for (int i = 0; i < f.size(); i++) {
                    String str2 = f.get(i);
                    if (str2.endsWith("/")) {
                        if (str.startsWith(str2)) {
                            return str;
                        }
                    } else if (str.startsWith(str2 + "/") || str.equalsIgnoreCase(str2)) {
                        return str;
                    }
                }
                replaceFirst = com.estrongs.android.pop.utils.aa.a(str);
                if (replaceFirst.equals("/storage/emulated/legacy") || replaceFirst.startsWith("/storage/emulated/legacy/")) {
                    replaceFirst = replaceFirst.replaceFirst("/storage/emulated/legacy", com.estrongs.android.pop.b.b());
                }
            }
        }
        return replaceFirst;
    }

    public static String bp(String str) {
        if (str == null) {
            return null;
        }
        return !str.endsWith("/") ? str + "/" : str;
    }

    public static String bq(String str) {
        String c2;
        String f2;
        String y = y(str);
        return (y == null || (c2 = aw.c(y)) == null || (f2 = f(str, c2)) == null) ? str : f2;
    }

    public static String br(String str) {
        String d2;
        String f2;
        String y = y(str);
        return (y == null || (d2 = aw.d(y)) == null || (f2 = f(str, aW(d2))) == null) ? str : f2;
    }

    public static boolean bs(String str) {
        return an(str) && "sugarsync".equals(ae(str)) && "/".equals(Y(str));
    }

    public static String bt(String str) {
        String bo = bo(str);
        List<String> a2 = a();
        String substring = bo.endsWith("/") ? bo.substring(0, bo.length() - 1) : bo;
        for (String str2 : a2) {
            if (substring.equals(str2)) {
                return str2;
            }
        }
        return null;
    }

    public static String bu(String str) {
        return str.indexOf(42) >= 0 ? str.substring(0, str.indexOf(42)) : str;
    }

    public static String bv(String str) {
        if (aw.a((CharSequence) str)) {
            return str;
        }
        if (str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files")) {
            return str.replaceAll("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files", "网络硬盘");
        }
        if (str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
            return str.replaceAll("PCS_DRIVE_Js1a7M5e_9yAcTvFX", "网络硬盘");
        }
        String bA = bA(str);
        return bA != null ? bA : B(str);
    }

    public static String bw(String str) {
        if (!str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX")) {
            return str;
        }
        String[] split = str.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX");
        if (split.length > 1) {
            str = split[1];
        }
        return com.estrongs.android.ui.pcs.aw.a().h() != null ? (str.startsWith("/files") || str.startsWith("/apps") || str.startsWith("/videos") || str.startsWith("/music") || str.startsWith("/pictures") || str.startsWith("/documents") || str.startsWith("/others") || str.startsWith("/files/apps/Downloads/")) ? com.estrongs.android.ui.pcs.aw.a().h() + str : com.estrongs.android.ui.pcs.aw.a().h() + "/files" + str : str.split("PCS_DRIVE_Js1a7M5e_9yAcTvFX")[0];
    }

    public static String bx(String str) {
        if (str == null) {
            return null;
        }
        String d2 = com.estrongs.fs.a.a.d(g());
        String d3 = com.estrongs.fs.a.a.d(com.estrongs.android.ui.pcs.aw.a().h());
        if (d3 != null) {
            return str.replaceFirst(d3, d2);
        }
        return null;
    }

    public static boolean by(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("/") || str.contains("://");
    }

    public static boolean bz(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("recycle://");
    }

    public static String c() {
        String b2 = com.estrongs.android.pop.b.b();
        return !b2.endsWith("/") ? b2 + "/" : b2;
    }

    public static final String c(String str) {
        String d2 = d(str);
        return d2 != null ? d2 + "@ " + a(str) : a(str);
    }

    public static String c(String str, String str2, String str3) {
        return a("yandex", str, str2, str3);
    }

    public static final boolean c(int i) {
        return i == 24 || i == 17;
    }

    public static final boolean c(String str, String str2) {
        if (str == null) {
            return false;
        }
        return str2.equals(ae(str));
    }

    public static String d() {
        return com.estrongs.android.pop.b.b();
    }

    public static final String d(String str) {
        int E;
        StringBuilder sb;
        if (aw.a((CharSequence) str) || aR(str) || (E = E(str)) == 12 || E == 13 || E == 14) {
            return null;
        }
        if (E == 23 || E == 18) {
            str = str.replaceAll(">", "/");
        }
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf != -1 && lastIndexOf != str.length() - 1) {
            sb = new StringBuilder(str.substring(lastIndexOf + 1));
        } else if (lastIndexOf != str.length() - 1) {
            sb = new StringBuilder(str);
        } else {
            if (aP(str) && str.indexOf("/", aT(str)) == str.length() - 1) {
                return null;
            }
            String substring = str.substring(0, lastIndexOf);
            sb = new StringBuilder(substring.substring(substring.lastIndexOf("/") + 1));
        }
        return sb.toString();
    }

    public static boolean d(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        if (str.endsWith("/") && !str.equals("/")) {
            str = str.substring(0, str.length() - 1);
        }
        if (str2.endsWith("/") && !str2.equals("/")) {
            str2 = str2.substring(0, str2.length() - 1);
        }
        if (str.startsWith("file://")) {
            str = str.replaceAll("file://", "");
        }
        if (str2.startsWith("file://")) {
            str2 = str2.replaceAll("file://", "");
        }
        if (aO(str)) {
            str = bo(str);
        }
        if (aO(str2)) {
            str2 = bo(str2);
        }
        if (ao(str)) {
            str = bw(str);
        }
        if (ao(str2)) {
            str2 = bw(str2);
        }
        return str.equals(str2);
    }

    public static final String e(String str) {
        int indexOf;
        if (str == null || aU(str)) {
            return null;
        }
        StringBuilder sb = str.charAt(str.length() + (-1)) == '/' ? new StringBuilder(str.substring(0, str.length() - 1)) : new StringBuilder(str);
        int lastIndexOf = sb.lastIndexOf("/");
        if (lastIndexOf != -1) {
            sb.delete(lastIndexOf, sb.length());
        }
        return sb.toString().startsWith("file:///") ? sb.substring(7) : (!sb.toString().startsWith("content://") || (indexOf = sb.indexOf("/", 10)) == -1) ? sb.toString() : sb.substring(indexOf);
    }

    public static String e(String str, String str2) {
        StringBuilder append = new StringBuilder().append(str);
        if (!str.endsWith("/")) {
            str2 = "/" + str2;
        }
        return append.append(str2).toString();
    }

    public static synchronized void e() {
        synchronized (ak.class) {
            synchronized (f) {
                f.clear();
            }
        }
    }

    public static String f() {
        String c2 = c();
        if (c2 == null) {
            return null;
        }
        return c2 + ".estrongs/theme/";
    }

    public static final String f(String str) {
        if (str == null || !aJ(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        int indexOf = sb.indexOf("/", 5);
        if (indexOf <= 5) {
            return sb.toString();
        }
        String substring = sb.substring(5, indexOf);
        int indexOf2 = substring.indexOf("\n");
        return (indexOf2 == -1 || indexOf2 >= substring.length() + (-1)) ? substring : substring.substring(indexOf2 + 1);
    }

    public static String f(String str, String str2) {
        String str3 = null;
        if (str == null) {
            return null;
        }
        int aT = aT(str);
        String substring = str.substring(0, aT);
        String substring2 = str.substring(aT);
        int indexOf = substring2.indexOf(47);
        if (indexOf >= 0) {
            String substring3 = substring2.substring(0, indexOf);
            str3 = substring2.substring(indexOf);
            substring2 = substring3;
        }
        int lastIndexOf = substring2.lastIndexOf("@");
        if (lastIndexOf < 0) {
            Log.e(f2669a, "failed to parse host");
            return str;
        }
        String substring4 = substring2.substring(lastIndexOf);
        int indexOf2 = substring2.indexOf(58);
        if (indexOf2 < 0) {
            Log.e(f2669a, "failed to parse password");
            return str;
        }
        String substring5 = substring2.substring(0, indexOf2);
        return str3 != null ? substring + substring5 + ":" + str2 + substring4 + str3 : substring + substring5 + ":" + str2 + substring4;
    }

    public static String g() {
        return bp(com.estrongs.android.pop.q.a(FexApplication.a()).e("Market")) + "PCS_DRIVE_Js1a7M5e_9yAcTvFX";
    }

    public static final String g(String str) {
        if (str == null || !aJ(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        int indexOf = sb.indexOf("/", 5);
        return indexOf != -1 ? sb.substring(indexOf) : sb.toString();
    }

    public static boolean g(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        int length = str.length();
        int length2 = str2.length();
        if (Math.abs(length - length2) > 1) {
            return false;
        }
        return length - length2 == 0 ? str.equals(str2) : length - length2 == 1 ? str.charAt(length + (-1)) == '/' && str.substring(0, length + (-1)).equals(str2) : str2.charAt(length2 + (-1)) == '/' && str2.substring(0, length2 + (-1)).equals(str);
    }

    public static com.estrongs.fs.h h() {
        return g;
    }

    public static final String h(String str) {
        if (str == null || !(H(str) || G(str) || m(str) || p(str))) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        int indexOf = stringBuffer.indexOf("/", aT(str));
        return indexOf != -1 ? stringBuffer.substring(0, indexOf + 1) : stringBuffer.toString();
    }

    public static boolean h(String str, String str2) {
        if (str2.equals(str)) {
            return true;
        }
        return str2.startsWith(str) && str2.charAt(str.length()) == '/';
    }

    public static final String i(String str) {
        if (str == null || !(H(str) || G(str) || m(str) || p(str))) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        int indexOf = stringBuffer.indexOf("/", aT(str));
        return indexOf != -1 ? stringBuffer.substring(indexOf) : stringBuffer.toString();
    }

    public static final String j(String str) {
        if (!F(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        int indexOf = sb.indexOf("/", aT(str));
        return indexOf != -1 ? sb.substring(indexOf) : sb.toString();
    }

    public static final String k(String str) {
        if (str == null || !(H(str) || G(str))) {
            return null;
        }
        StringBuilder sb = new StringBuilder(str);
        int indexOf = sb.indexOf("/", aT(str));
        int lastIndexOf = sb.lastIndexOf("/");
        return indexOf != -1 ? lastIndexOf > indexOf ? sb.substring(indexOf, lastIndexOf) : sb.substring(indexOf) : sb.toString();
    }

    public static final boolean l(String str) {
        if (str == null) {
            return false;
        }
        if (H(str) || G(str) || m(str) || p(str)) {
            return str.startsWith("ftps://") || str.startsWith("ftpes://");
        }
        return false;
    }

    public static final boolean m(String str) {
        return n(str) || o(str);
    }

    public static final boolean n(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("webdav://");
    }

    public static final boolean o(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("webdavs://");
    }

    public static final boolean p(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("ftps://") || str.startsWith("ftpes://");
    }

    public static final boolean q(String str) {
        if (str == null) {
            return false;
        }
        return "remote://".equals(str);
    }

    public static final boolean r(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("download://");
    }

    public static final boolean s(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("du://");
    }

    public static final boolean t(String str) {
        if (str == null) {
            return false;
        }
        String bp = bp(str);
        List<String> a2 = a();
        for (int i = 0; i < a2.size(); i++) {
            if (bp.equals("du://" + bp(a2.get(i)))) {
                return true;
            }
        }
        return false;
    }

    public static final boolean u(String str) {
        if (aw.b((CharSequence) str)) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.startsWith("http") || lowerCase.startsWith("https")) {
                return true;
            }
        }
        return false;
    }

    public static final String v(String str) {
        if (str == null) {
            return null;
        }
        String substring = str.substring(aT(str));
        int indexOf = substring.indexOf(47);
        if (indexOf != -1) {
            substring = substring.substring(0, indexOf);
        }
        int lastIndexOf = substring.lastIndexOf("@");
        if (lastIndexOf != -1) {
            substring = substring.substring(lastIndexOf + 1);
        }
        int lastIndexOf2 = substring.lastIndexOf(58);
        if (lastIndexOf2 == -1) {
            return null;
        }
        return substring.substring(lastIndexOf2 + 1);
    }

    public static String w(String str) {
        String substring;
        int indexOf;
        if (str == null) {
            return null;
        }
        String substring2 = str.substring(aT(str));
        int indexOf2 = substring2.indexOf(47);
        if (indexOf2 != -1) {
            substring2 = substring2.substring(0, indexOf2);
        }
        int lastIndexOf = substring2.lastIndexOf("@");
        if (lastIndexOf != -1 && (indexOf = (substring = substring2.substring(0, lastIndexOf)).indexOf(59)) != -1) {
            return substring.substring(0, indexOf);
        }
        return null;
    }

    public static final String x(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(59, aT(str));
        int indexOf2 = str.indexOf(58, aT(str));
        if (indexOf2 == -1 || indexOf2 < aT(str)) {
            return null;
        }
        return aX((indexOf == -1 || indexOf > indexOf2) ? str.substring(aT(str), indexOf2) : str.substring(indexOf + 1, indexOf2));
    }

    public static final String y(String str) {
        String substring;
        int indexOf;
        if (str == null) {
            return null;
        }
        String substring2 = str.substring(aT(str));
        int indexOf2 = substring2.indexOf(47);
        if (indexOf2 != -1) {
            substring2 = substring2.substring(0, indexOf2);
        }
        int lastIndexOf = substring2.lastIndexOf("@");
        if (lastIndexOf != -1 && (indexOf = (substring = substring2.substring(0, lastIndexOf)).indexOf(58)) != -1) {
            return aX(substring.substring(indexOf + 1));
        }
        return null;
    }

    public static boolean z(String str) {
        String y;
        return (str == null || !aP(str) || (y = y(str)) == null || y.length() == 0) ? false : true;
    }
}
