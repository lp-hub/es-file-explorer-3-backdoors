package com.estrongs.android.util;

import android.util.SparseArray;
import android.webkit.MimeTypeMap;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class av {
    public static String f;
    public static String g;
    public static String h;

    /* renamed from: a, reason: collision with root package name */
    public static final Set<Integer> f2682a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public static final Set<Integer> f2683b = new HashSet();
    public static final Set<Integer> c = new HashSet();
    public static final Set<Integer> d = new HashSet();
    public static final Set<Integer> e = new HashSet();
    private static final HashMap<String, Integer> i = new HashMap<>();
    private static final SparseArray<String[]> j = new SparseArray<>();
    private static final SparseArray<String> k = new SparseArray<>();

    static {
        a(65536, ".apk", "application/vnd.android.package-archive", 100);
        a(TypeUtils.PLAIN_TEXT, new String[]{".txt", ".text", ".ini", ".properties", ".prop", ".conf", ".classpath", ".project", ".php", ".js", ".rss", ".jsp", ".asp", ".aspx", ".c", ".java", ".vb", ".vbs", ".h", ".checksum"}, "text/plain", 4);
        a(TypeUtils.IMAGE_PNG, ".png", "image/png", 1);
        a(TypeUtils.IMAGE_JPG, ".jpg", "image/jpeg", 1);
        a(TypeUtils.IMAGE_BMP, new String[]{".bmp", ".wbmp"}, "image/bmp", 1);
        a(TypeUtils.IMAGE_GIF, ".gif", "image/gif", 1);
        a(TypeUtils.IMAGE_JPEG, ".jpeg", "image/jpeg", 1);
        a(65557, ".wbmp", "image/vnd.wap.wbmp", 1);
        a(65558, new String[]{".tif", ".tiff"}, "image/tif", 1);
        a(TypeUtils.MEDIA_MP3, ".mp3", "audio/mpeg", 2);
        a(TypeUtils.MEDIA_MIDI, new String[]{".mid", ".midi", ".rmi"}, "audio/mid", 2);
        a(TypeUtils.MEDIA_WAV, ".wav", "audio/x-wav", 2);
        a(TypeUtils.MEDIA_AMR, ".amr", "audio/amr", 2);
        a(TypeUtils.MEDIA_OGG, new String[]{".ogg", ".x-ogg"}, "audio/ogg", 2);
        a(TypeUtils.MEDIA_M4A, new String[]{".m4a"}, "audio/mp4", 2);
        a(TypeUtils.MEDIA_WMA, ".wma", "audio/x-ms-wma", 2);
        a(TypeUtils.MEDIA_QCP, ".qcp", "audio/vnd.qcelp", 2);
        a(TypeUtils.MEDIA_RA, new String[]{".ra", ".ram"}, "audio/x-pn-realaudio", 2);
        a(TypeUtils.MEDIA_AIF, new String[]{".aif", ".aifc", ".aiff"}, "audio/x-aiff", 2);
        a(TypeUtils.MEDIA_M3U, ".m3u", "audio/x-mpegurl", 2);
        a(TypeUtils.MEDIA_FLAC, ".flac", "audio/flac", 2);
        a(131116, ".ape", "audio/x-ape", 2);
        a(131117, ".oga", "audio/ogg", 2);
        a(131118, ".ac3", "audio/ac3", 2);
        a(131119, ".awb", "audio/amr-wb", 2);
        a(131120, new String[]{".mp2", ".mpga"}, "audio/mpeg", 2);
        a(131121, new String[]{".3gpa", ".3ga"}, "audio/3ga", 2);
        a(131122, ".imy", "audio/imelod", 2);
        a(131123, new String[]{".aac"}, "audio/aac", 2);
        a(TypeUtils.MEDIA_ASF, new String[]{".asf", ".asx"}, "video/x-ms-asf", 3);
        a(TypeUtils.MEDIA_WMV, ".wmv", "video/x-ms-wmv", 3);
        a(TypeUtils.MEDIA_REALMEDIA, new String[]{".rm", ".rmvb", ".mkv", ".mov"}, "video/*", 3);
        a(TypeUtils.MEDIA_3GP, new String[]{".3gp", ".3gpp"}, "video/3gpp", 3);
        a(TypeUtils.MEDIA_AVI, ".avi", "video/x-msvideo", 3);
        a(TypeUtils.MEDIA_MP4, new String[]{".mp4", ".m4v", ".f4v"}, "video/mp4", 3);
        a(TypeUtils.MEDIA_MPG, new String[]{".mpg", ".ts"}, "video/mpeg", 3);
        a(TypeUtils.MEDIA_MPEG, ".mpeg", "video/mpeg", 3);
        a(196656, ".flv", "application/x-shockwave-flash", 3);
        a(196658, ".vob", "application/octet-stream", 3);
        a(196659, ".webm", "video/webm", 3);
        a(196660, ".ogv", "video/ogg", 3);
        a(196661, ".3g2", "video/3gpp2", 3);
        a(196662, ".m2ts", "video/mpeg", 3);
        a(196663, ".trp", "video/*", 3);
        a(196664, ".mts", "video/avchd-stream", 3);
        a(TypeUtils.MEDIA_FLASH, ".swf", "application/x-shockwave-flash", 3);
        a(TypeUtils.WIN_DOC, new String[]{".doc", ".docx"}, "application/msword", 100);
        a(TypeUtils.WIN_EXCEL, new String[]{".xls", ".xlsx", ".xla", ".xlc", ".xlm", ".xlt", ".xlsm", ".xlsb"}, "application/vnd.ms-excel", 100);
        a(TypeUtils.WIN_HTML, new String[]{".html", ".htm", ".mht"}, "text/html", 100);
        a(TypeUtils.WIN_BAT, ".bat", "magnus-internal/cgi", 100);
        a(TypeUtils.WIN_EXE, ".exe", "magnus-internal/cgi", 100);
        a(TypeUtils.WIN_DLL, ".dll", "application/x-msdownload", 100);
        a(TypeUtils.WIN_LIB, ".lib", "application/octet-stream", 100);
        a(TypeUtils.WIN_PPT, new String[]{".ppt", ".pps", ".ppx", ".pptx", ".odp"}, "application/vnd.ms-powerpoint", 100);
        a(TypeUtils.WIN_CHM, ".chm", "application/x-chm", 100);
        a(TypeUtils.ET_JOURNAL, ".esj", "application/esj", 100);
        a(TypeUtils.ET_PUB, ".epub", "application/epub+zip", 100);
        a(327746, ".7z", "application/x-7z-compressed", 5);
        a(TypeUtils.ZIP_FILE, new String[]{".zip", ".tar", ".gz", ".cab", ".esi", ".7z"}, "application/zip", 5);
        a(TypeUtils.PDF_FILE, ".pdf", "application/pdf", 100);
        a(TypeUtils.XML_FILE, ".xml", "text/xml", 4);
        a(TypeUtils.OPEN_DOC, ".odt", "application/vnd.oasis.opendocument.text", 100);
        a(TypeUtils.CHESS_FILE, new String[]{".pgn", ".xqf"}, "application/x-chess-pgn", 100);
        a(327744, ".rar", "application/x-rar-compressed", 5);
        a(327745, ".gzip", "application/x-gzip", 5);
        a(TypeUtils.BIT_TORRENT, ".torrent", "application/x-bittorrent", 100);
        a(TypeUtils.MOBI_POCKET, new String[]{".mobi", ".prc"}, "application/x-mobipocket-ebook", 100);
        a(65612, ".vcf", "text/x-vcard", 100);
        a(65613, new String[]{".ics", ".ical", ".icalendar"}, "text/calendar", 100);
        a(TypeUtils.NZB_FILE, ".nzb", "application/x-nzb", 100);
        a(524290, ".umd", "application/umd", 100);
        a(589825, ".pcs", (String) null, 100);
        g = null;
    }

    public static final boolean A(int i2) {
        return i2 == 65536;
    }

    public static final boolean A(String str) {
        return u(a(str));
    }

    public static String B(int i2) {
        return k.get(i2);
    }

    public static final boolean B(String str) {
        return v(a(str));
    }

    public static final boolean C(String str) {
        return w(a(str));
    }

    public static final boolean D(String str) {
        return x(a(str));
    }

    public static final boolean E(String str) {
        return y(a(str));
    }

    public static final boolean F(String str) {
        return z(a(str));
    }

    public static final boolean G(String str) {
        return A(a(str));
    }

    public static final boolean H(String str) {
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".zip") || lowerCase.endsWith(".jar") || lowerCase.endsWith(".apk");
    }

    public static final boolean I(String str) {
        String lowerCase = str.toLowerCase();
        return H(str) || lowerCase.endsWith(".gz") || lowerCase.endsWith(".gzip") || lowerCase.endsWith(".rar") || lowerCase.endsWith(".7z");
    }

    public static final boolean J(String str) {
        return str.toLowerCase().endsWith(".pcs");
    }

    public static final boolean K(String str) {
        String bk = ak.bk(str);
        return bk != null && c().indexOf(bk) >= 0;
    }

    public static final boolean L(String str) {
        return str.endsWith("rm") || str.endsWith("rmvb") || str.endsWith(".mpg") || str.endsWith(".mpeg") || str.endsWith(".asf") || str.endsWith(".flv") || str.endsWith(".f4v");
    }

    public static String M(String str) {
        if ("application/zip".equalsIgnoreCase(str) || "application/x-zip-compressed".equalsIgnoreCase(str)) {
            return ".zip";
        }
        if ("application/x-gzip".equalsIgnoreCase(str)) {
            return ".gz";
        }
        if ("application/x-rar-compressed".equalsIgnoreCase(str) || "application/rar".equalsIgnoreCase(str)) {
            return ".rar";
        }
        return null;
    }

    public static String N(String str) {
        if (str == null) {
            return "*/*";
        }
        String B = B(a(str));
        if (B != null) {
            return B;
        }
        String b2 = com.estrongs.fs.c.d.b(str);
        if (b2.length() > 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(b2.toLowerCase());
            if (mimeTypeFromExtension == null) {
                mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(b2.toUpperCase());
            }
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "*/*";
    }

    public static final int a(com.estrongs.fs.g gVar) {
        if (ak.au(gVar.getPath()) && gVar.getFileType().b()) {
            return TypeUtils.IMAGE_JPG;
        }
        int eSFileType = gVar.getESFileType();
        if (eSFileType != -2) {
            return eSFileType;
        }
        int a2 = a(gVar.getAbsolutePath());
        gVar.setESFileType(a2);
        return a2;
    }

    public static final int a(String str) {
        if (str == null || str.trim().length() < 1) {
            return -1;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        String bk = ak.bk(str);
        if (bk == null) {
            return -1;
        }
        String lowerCase = bk.toLowerCase();
        if (i.containsKey(lowerCase)) {
            return i.get(lowerCase).intValue();
        }
        return -1;
    }

    public static final String a() {
        if (f != null) {
            return f;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<Integer> it = f2682a.iterator();
        while (it.hasNext()) {
            for (String str : j.get(it.next().intValue())) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(";");
                }
                stringBuffer.append(str);
            }
        }
        f = stringBuffer.toString();
        return f;
    }

    private static final void a(int i2, String str, String str2, int i3) {
        a(i2, new String[]{str}, str2, i3);
    }

    private static final void a(int i2, String[] strArr, String str, int i3) {
        if (str != null) {
            k.put(i2, str);
        }
        for (String str2 : strArr) {
            i.put(str2, Integer.valueOf(i2));
        }
        j.put(i2, strArr);
        if (i3 == 1) {
            f2683b.add(Integer.valueOf(i2));
            return;
        }
        if (i3 == 2) {
            f2682a.add(Integer.valueOf(i2));
            return;
        }
        if (i3 == 3) {
            c.add(Integer.valueOf(i2));
        } else if (i3 == 4) {
            d.add(Integer.valueOf(i2));
        } else if (i3 == 5) {
            e.add(Integer.valueOf(i2));
        }
    }

    public static final boolean a(int i2) {
        return f2683b.contains(Integer.valueOf(i2));
    }

    public static final String b() {
        if (g != null) {
            return g;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<Integer> it = c.iterator();
        while (it.hasNext()) {
            for (String str : j.get(it.next().intValue())) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(";");
                }
                stringBuffer.append(str);
            }
        }
        g = stringBuffer.toString();
        return g;
    }

    public static final boolean b(int i2) {
        return i2 == 65556 || i2 == 65553;
    }

    public static final boolean b(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return false;
        }
        if (ak.au(gVar.getPath()) && gVar.getFileType().b()) {
            return true;
        }
        return a(a(gVar)) || b(gVar.getName());
    }

    public static final boolean b(String str) {
        return a(a(str));
    }

    public static final String c() {
        return ".doc;.docx;.ppt;.pps;.ppx;.pptx;.odp;.xls;.xlsx;.xla;.xlc;.xlm;.xlt;.xlsm;.xlsb;.chm;.html;.htm;.txt;.pdf;.mobi;.rtf;.epub;.fb2";
    }

    public static final boolean c(int i2) {
        return i2 == 65552;
    }

    public static final boolean c(String str) {
        return b(a(str));
    }

    public static final String d() {
        if (h != null) {
            return h;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<Integer> it = f2683b.iterator();
        while (it.hasNext()) {
            for (String str : j.get(it.next().intValue())) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(";");
                }
                stringBuffer.append(str);
            }
        }
        h = stringBuffer.toString();
        return h;
    }

    public static final boolean d(int i2) {
        return f2682a.contains(Integer.valueOf(i2));
    }

    public static final boolean d(String str) {
        return c(a(str));
    }

    public static final String e() {
        return new String(".apk");
    }

    public static final boolean e(int i2) {
        return c.contains(Integer.valueOf(i2));
    }

    public static final boolean e(String str) {
        return d(a(str));
    }

    public static final String f() {
        return new String(".zip;.rar;.tar;.gzip;.bz2;.gz;.7z;.esi");
    }

    public static String f(int i2) {
        String str = k.get(i2);
        return str == null ? "video/*" : str;
    }

    public static final boolean f(String str) {
        return e(a(str));
    }

    public static String g(int i2) {
        String str = k.get(i2);
        return str == null ? "audio/*" : str;
    }

    public static final boolean g(String str) {
        return h(a(str));
    }

    public static String[] g() {
        String[] strArr = new String[f2683b.size()];
        Iterator<Integer> it = f2683b.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = Integer.toString(it.next().intValue());
            i2++;
        }
        return strArr;
    }

    public static final boolean h(int i2) {
        return d.contains(Integer.valueOf(i2));
    }

    public static final boolean h(String str) {
        return i(a(str));
    }

    public static final boolean i(int i2) {
        return e.contains(Integer.valueOf(i2));
    }

    public static final boolean i(String str) {
        return j(a(str));
    }

    public static final boolean j(int i2) {
        return i2 == 458753;
    }

    public static final boolean j(String str) {
        if (str == null) {
            return false;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.endsWith(".gzip") || lowerCase.endsWith(".gz");
    }

    public static final boolean k(int i2) {
        return i2 == 327737;
    }

    public static final boolean k(String str) {
        if (str == null) {
            return false;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        return str.toLowerCase().endsWith(".7z");
    }

    public static final boolean l(int i2) {
        return i2 == 262203;
    }

    public static final boolean l(String str) {
        if (str == null) {
            return false;
        }
        if (str.charAt(str.length() - 1) == '/') {
            str = str.substring(0, str.length() - 1);
        }
        return str.toLowerCase().endsWith(".rar");
    }

    public static final boolean m(int i2) {
        return i2 == 262204;
    }

    public static final boolean m(String str) {
        return k(a(str));
    }

    public static final boolean n(int i2) {
        return i2 == 393292;
    }

    public static final boolean n(String str) {
        return l(a(str));
    }

    public static final boolean o(int i2) {
        return i2 == 393291;
    }

    public static final boolean o(String str) {
        return m(a(str));
    }

    public static final boolean p(int i2) {
        return i2 == 327743;
    }

    public static final boolean p(String str) {
        return n(a(str));
    }

    public static final boolean q(int i2) {
        return i2 == 524289;
    }

    public static final boolean q(String str) {
        return o(a(str));
    }

    public static final boolean r(int i2) {
        return i2 == 327741;
    }

    public static final boolean r(String str) {
        return a(str) == 524290;
    }

    public static final boolean s(int i2) {
        return i2 == 262192;
    }

    public static final boolean s(String str) {
        return a(str) == 524291;
    }

    public static final boolean t(int i2) {
        return i2 == 262193;
    }

    public static final boolean t(String str) {
        return a(str) == 524292;
    }

    public static final boolean u(int i2) {
        return i2 == 262208;
    }

    public static final boolean u(String str) {
        return a(str) == 524293;
    }

    public static final boolean v(int i2) {
        return i2 == 262194;
    }

    public static final boolean v(String str) {
        return p(a(str));
    }

    public static final boolean w(int i2) {
        return i2 == 262199;
    }

    public static final boolean w(String str) {
        return q(a(str));
    }

    public static final boolean x(int i2) {
        return i2 == 327738;
    }

    public static final boolean x(String str) {
        return r(a(str));
    }

    public static final boolean y(int i2) {
        return i2 == 65613;
    }

    public static final boolean y(String str) {
        return s(a(str));
    }

    public static final boolean z(int i2) {
        return i2 == 131111;
    }

    public static final boolean z(String str) {
        return t(a(str));
    }
}
