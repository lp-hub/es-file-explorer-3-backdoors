package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.BrowserDownloaderActivity;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.InflaterInputStream;
import org.apache.commons.net.SocketClient;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;

/* loaded from: classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    long f1461a = 0;
    private String k = null;
    private String l = null;
    private boolean m = false;
    private Object o = new Object();
    private Handler p = null;
    private static int c = 0;
    private static String d = null;
    private static final String e = com.estrongs.android.pop.a.e;

    /* renamed from: b, reason: collision with root package name */
    public static final String f1460b = e + "/recomm_items";
    private static final String f = e + "/icons";
    private static final String g = e + "/thumbnail_pics";
    private static final String h = e + "/pics";
    private static final String i = e + "/apks";
    private static final String j = e + "/recomm_items_download_status";
    private static v[] n = null;
    private static n q = null;
    private static HashMap<String, u> r = new HashMap<>();
    private static boolean s = false;
    private static String t = "PreferActivity";

    public static u a(Activity activity, String str) {
        u uVar;
        if (!s && b(activity)) {
            s = true;
        }
        String lowerCase = str.toLowerCase(Locale.getDefault());
        synchronized (r) {
            uVar = r.get(lowerCase);
        }
        return (uVar != null || com.estrongs.android.pop.m.S == null || com.estrongs.android.pop.m.S.size() <= 0) ? uVar : com.estrongs.android.pop.m.d(lowerCase);
    }

    public static String a(String str) {
        return i + "/" + str + ".apk";
    }

    public static void a(Activity activity) {
        synchronized (r) {
            r.clear();
            File filesDir = activity.getFilesDir();
            if (filesDir == null) {
                return;
            }
            File file = new File(filesDir.getAbsolutePath() + '/' + t);
            if (file.exists()) {
                file.delete();
            }
        }
    }

    public static void a(Activity activity, String str, u uVar) {
        synchronized (r) {
            if (uVar == null) {
                r.remove(str.toLowerCase(Locale.getDefault()));
            } else {
                r.put(str.toLowerCase(Locale.getDefault()), uVar);
            }
            c(activity);
        }
    }

    public static void a(v vVar) {
        String str = f + "/icon_" + vVar.f.hashCode();
        if (new File(str).exists()) {
            vVar.k = BitmapFactory.decodeFile(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.estrongs.android.util.x xVar) {
        v vVar = (v) xVar.d;
        String str = vVar.f1476b;
        if (str == null) {
            return;
        }
        new com.estrongs.android.util.x("http://www.estrongs.com/channel?aid=" + str).c();
        vVar.y = true;
    }

    private synchronized void a(v[] vVarArr) {
        File file = new File(j);
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        try {
            if (file.exists()) {
                DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    String[] split = readLine.split("######");
                    if (split.length == 3) {
                        hashMap.put(split[0], Integer.valueOf(Integer.parseInt(split[1])));
                        hashMap2.put(split[0], Long.valueOf(Long.parseLong(split[2])));
                    }
                }
                dataInputStream.close();
                for (int i2 = 0; i2 < vVarArr.length; i2++) {
                    Integer num = (Integer) hashMap.get(vVarArr[i2].f);
                    Long l = (Long) hashMap2.get(vVarArr[i2].f);
                    vVarArr[i2].q = num == null ? 0 : num.intValue();
                    vVarArr[i2].t = l == null ? 0L : l.longValue();
                    if (vVarArr[i2].q == 1 || vVarArr[i2].q == 3 || vVarArr[i2].q == 4) {
                        File file2 = new File(a(vVarArr[i2].f));
                        if (!file2.exists() || file2.length() == 0 || vVarArr[i2].t == 0) {
                            vVarArr[i2].q = 0;
                        } else {
                            if (vVarArr[i2].q == 1) {
                                vVarArr[i2].q = 4;
                            }
                            vVarArr[i2].u = file2.length();
                            if (vVarArr[i2].u == vVarArr[i2].t) {
                                vVarArr[i2].q = 3;
                            }
                        }
                    }
                }
            }
        } catch (Exception e2) {
        }
    }

    public static t[] a(Context context, Intent intent) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = context.getPackageManager();
        if ("*/*".equals(intent.getType())) {
            intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
            return null;
        }
        for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
            ResolveInfo resolveInfo = queryIntentActivities.get(i2);
            if (!DownloaderActivity.class.getName().equals(resolveInfo.activityInfo.name) && !BrowserDownloaderActivity.class.getName().equals(resolveInfo.activityInfo.name)) {
                t tVar = new t();
                tVar.f1471a = resolveInfo.loadIcon(context.getPackageManager());
                tVar.f1472b = (String) resolveInfo.loadLabel(context.getPackageManager());
                tVar.c = resolveInfo.activityInfo.packageName;
                tVar.d = resolveInfo.activityInfo.name;
                arrayList.add(tVar);
            }
        }
        return (t[]) arrayList.toArray(new t[0]);
    }

    public static synchronized n b() {
        n nVar;
        synchronized (n.class) {
            if (q == null) {
                q = new n();
            }
            nVar = q;
        }
        return nVar;
    }

    private static String b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf) + "_s" + str.substring(lastIndexOf);
    }

    public static void b(v vVar, int i2) {
        String str = h + "/" + vVar.f.hashCode() + "/" + vVar.d[i2];
        if (new File(str).exists()) {
            vVar.n[i2] = BitmapFactory.decodeFile(str);
        }
    }

    private static boolean b(Activity activity) {
        try {
            File filesDir = activity.getFilesDir();
            if (filesDir == null) {
                return false;
            }
            File file = new File(filesDir.getAbsolutePath() + '/' + t);
            if (!file.exists()) {
                return true;
            }
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
            synchronized (r) {
                r.clear();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        String[] split = readLine.split("######");
                        if (split.length == 3) {
                            r.put(split[0], new u(split[1], split[2]));
                        }
                    }
                }
            }
            dataInputStream.close();
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(String str) {
        File file = new File(str);
        try {
            if (!file.exists()) {
                return -1;
            }
            int intValue = Long.valueOf(file.length()).intValue();
            byte[] bArr = new byte[intValue];
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            randomAccessFile.read(bArr, 0, intValue);
            randomAccessFile.close();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr));
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = inflaterInputStream.read(bArr2, 0, 1024);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            inflaterInputStream.close();
            String str2 = new String(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            Object parse = new JSONParser().parse(str2);
            this.k = (String) ((Map) parse).get("channel_title");
            this.l = (String) ((Map) parse).get("pic_url");
            String str3 = (String) ((Map) parse).get("hash_code");
            if (d != null && d.equals(str3) && n != null) {
                return 0;
            }
            d = str3;
            Object obj = ((Map) parse).get("content");
            if (!(obj instanceof JSONArray)) {
                return -1;
            }
            v[] vVarArr = new v[((JSONArray) obj).size()];
            Iterator it = ((JSONArray) obj).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Object next = it.next();
                v vVar = new v();
                vVar.f1475a = (String) ((Map) next).get("icon");
                vVar.c = (String) ((Map) next).get("title");
                vVar.d = ((String) ((Map) next).get("pic")).split(",");
                vVar.l = new Bitmap[vVar.d.length];
                vVar.m = new com.estrongs.android.util.x[vVar.d.length];
                vVar.n = new Bitmap[vVar.d.length];
                vVar.o = new com.estrongs.android.util.x[vVar.d.length];
                vVar.s = (String) ((Map) next).get("size");
                vVar.f1476b = (String) ((Map) next).get("aid");
                vVar.f = (String) ((Map) next).get("package");
                vVar.e = (String) ((Map) next).get("url");
                vVar.g = (String) ((Map) next).get("shortDesc");
                vVar.h = (String) ((Map) next).get("longDesc");
                vVar.i = (String) ((Map) next).get("version");
                vVar.j = (String) ((Map) next).get("types");
                if (vVar.j == null) {
                    if (vVar.f.equalsIgnoreCase("cn.wps.moffice_eng") || vVar.f.equalsIgnoreCase("cn.wps.moffice")) {
                        vVar.j = "text/plain;application/msexcel;application/ms-excel;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.openxmlformats-officedocument.spreadsheetml.template;application/mspowerpoint;application/ms-powerpoint;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.openxmlformats-officedocument.presentationml.template;application/vnd.openxmlformats-officedocument.presentationml.slideshow;application/msword;application/ms-word;application/vnd.ms-word;application/vnd.ms-works;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.openxmlformats-officedocument.wordprocessingml.template;application/octet-stream;application/log;application/kswps;application/kset;application/ksdps;application/wps;application/et;application/dps;application/dpt;application/wpt;application/ett";
                    } else if (vVar.f.equalsIgnoreCase("com.uc.browser") || vVar.f.equalsIgnoreCase("com.uc.browser.hd") || vVar.f.equalsIgnoreCase("com.uc.browser.en")) {
                        vVar.j = "text/plain;text/html";
                    }
                }
                vVar.v = b(vVar);
                if (HttpUtils.getInt(next, "show") == 0) {
                    vVar.w = false;
                }
                vVar.x = HttpUtils.getInt(next, "vcode");
                vVarArr[i2] = vVar;
                i2++;
            }
            if (n != null) {
                for (int i3 = 0; i3 < vVarArr.length; i3++) {
                    int i4 = 0;
                    while (true) {
                        if (i4 >= n.length) {
                            break;
                        }
                        if (n[i4].f.equals(vVarArr[i3].f)) {
                            vVarArr[i3].k = n[i4].k;
                            vVarArr[i3].n = n[i4].n;
                            vVarArr[i3].o = n[i4].o;
                            vVarArr[i3].l = n[i4].l;
                            vVarArr[i3].m = n[i4].m;
                            vVarArr[i3].p = n[i4].p;
                            vVarArr[i3].q = n[i4].q;
                            vVarArr[i3].r = n[i4].r;
                            vVarArr[i3].t = n[i4].t;
                            vVarArr[i3].u = n[i4].u;
                            break;
                        }
                        i4++;
                    }
                }
            } else {
                a(vVarArr);
            }
            if (vVarArr.length != 0 && !this.m) {
                n = vVarArr;
            }
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            file.delete();
            return -1;
        }
    }

    private static void c(Activity activity) {
        File filesDir = activity.getFilesDir();
        if (filesDir == null) {
            return;
        }
        File file = new File(filesDir.getAbsolutePath() + '/' + t);
        if (file.exists()) {
            file.delete();
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            synchronized (r) {
                for (Map.Entry<String, u> entry : r.entrySet()) {
                    String key = entry.getKey();
                    u value = entry.getValue();
                    bufferedWriter.write(key + "######" + value.f1473a + "######" + value.f1474b + SocketClient.NETASCII_EOL);
                }
            }
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (Exception e2) {
        }
    }

    public static void c(v vVar, int i2) {
        String str = g + "/" + vVar.f.hashCode() + "/" + b(vVar.d[i2]);
        if (new File(str).exists()) {
            vVar.l[i2] = BitmapFactory.decodeFile(str);
        }
    }

    private void f(v vVar) {
        File file = new File(a(vVar.f));
        switch (vVar.q) {
            case 0:
                int i2 = vVar.v;
                vVar.v = b(vVar);
                file.delete();
                return;
            case 1:
            default:
                return;
            case 2:
                file.delete();
                return;
            case 3:
                vVar.v = b(vVar);
                if (vVar.v == 3) {
                    file.delete();
                    vVar.q = 0;
                    return;
                } else {
                    if (vVar.v == 1 || vVar.v == 2) {
                        if (!file.exists() || file.length() == 0) {
                            file.delete();
                            vVar.q = 0;
                            return;
                        }
                        return;
                    }
                    return;
                }
            case 4:
                file.delete();
                vVar.q = 0;
                vVar.v = b(vVar);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() {
        if (n != null) {
            File file = new File(j);
            file.delete();
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                for (int i2 = 0; i2 < n.length; i2++) {
                    String str = n[i2].f;
                    String str2 = "" + n[i2].q;
                    long j2 = n[i2].t;
                    if (j2 <= 0) {
                        str2 = "0";
                    }
                    bufferedWriter.write(str + "######" + str2 + "######" + j2 + SocketClient.NETASCII_EOL);
                }
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (Exception e2) {
            }
        }
    }

    public long a(Context context) {
        return new Date().getTime() - (this.f1461a == 0 ? com.estrongs.android.pop.q.a(context).G() : this.f1461a);
    }

    public Handler a(Handler handler) {
        Handler handler2;
        synchronized (this.o) {
            handler2 = this.p;
            this.p = handler;
        }
        return handler2;
    }

    public void a() {
        a(d(), 4);
        g();
    }

    public void a(Message message, long j2) {
        synchronized (this.o) {
            if (this.p != null) {
                if (j2 != 0) {
                    this.p.sendMessageDelayed(message, j2);
                } else {
                    this.p.sendMessage(message);
                }
            }
        }
    }

    public void a(v vVar, int i2) {
        if (vVar.r != null) {
            if (vVar.q == 1 || vVar.q == 5) {
                vVar.q = i2;
            }
            vVar.r.b();
            vVar.r = null;
        }
        vVar.u = 0L;
        h();
    }

    public void a(boolean z) {
        String locale = Locale.getDefault().toString();
        int indexOf = locale.indexOf(95);
        if (indexOf > 0) {
            locale = locale.substring(0, indexOf);
        }
        if (com.estrongs.android.pop.esclasses.c.f1130a != null) {
            locale = (com.estrongs.android.pop.esclasses.c.f1130a.equalsIgnoreCase("CN") || com.estrongs.android.pop.esclasses.c.f1130a.equalsIgnoreCase("TW")) ? "zh" : "en";
        }
        String str = c == 0 ? d == null ? "http://www.estrongs.com/channel?l=" + locale : "http://www.estrongs.com/channel?l=" + locale + "&v=" + d : d == null ? "http://www.estrongs.com/channel?id=" + c + "&l=" + locale : "http://www.estrongs.com/channel?id=" + c + "&l=" + locale + "&v=" + d;
        if (z) {
            str = str + "&s=1";
        }
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(str);
        xVar.a(new o(this));
        xVar.a((Object) xVar);
        xVar.a(f1460b + ".tmp");
        xVar.c();
        this.f1461a = new Date().getTime();
        com.estrongs.android.pop.q.a(FexApplication.a()).b(this.f1461a);
    }

    public void a(v[] vVarArr, int i2) {
        if (vVarArr == null) {
            return;
        }
        for (v vVar : vVarArr) {
            if (vVar.r != null) {
                if (vVar.q == 1 || vVar.q == 5) {
                    vVar.q = i2;
                }
                vVar.r.b();
                vVar.r = null;
            }
            vVar.u = 0L;
        }
        h();
    }

    public int b(v vVar) {
        try {
            FexApplication a2 = FexApplication.a();
            if (a2 == null) {
                return 0;
            }
            PackageInfo packageInfo = a2.getPackageManager().getPackageInfo(vVar.f, 0);
            if (packageInfo == null) {
                return 1;
            }
            if (vVar.x == -1) {
                return 3;
            }
            return packageInfo.versionCode < vVar.x ? 2 : 3;
        } catch (PackageManager.NameNotFoundException e2) {
            return 1;
        }
    }

    public void c() {
        a(false);
    }

    public boolean c(v vVar) {
        if (vVar.e == null || !vVar.e.startsWith("http")) {
            return false;
        }
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(vVar.e);
        xVar.a(a(vVar.f));
        xVar.a((Object) xVar);
        xVar.d = vVar;
        xVar.a(new p(this));
        vVar.r = xVar;
        if (vVar.q == 4) {
            xVar.f();
        } else {
            xVar.c();
        }
        return true;
    }

    public Bitmap d(v vVar) {
        if (vVar.k != null) {
            return vVar.k;
        }
        a(vVar);
        if (vVar.k == null && vVar.f1475a.startsWith(Utils.http)) {
            b().e(vVar);
        }
        return vVar.k;
    }

    public Bitmap d(v vVar, int i2) {
        if (vVar.n[i2] != null) {
            return vVar.n[i2];
        }
        b(vVar, i2);
        if (vVar.n[i2] == null) {
            b().f(vVar, i2);
        }
        return vVar.n[i2];
    }

    public v[] d() {
        if (n == null || this.m) {
            d = null;
            if (c(f1460b) < 0) {
                return new v[0];
            }
            if (n == null) {
                return null;
            }
        }
        this.m = false;
        int i2 = 0;
        for (int i3 = 0; i3 < n.length; i3++) {
            if (n[i3].w) {
                i2++;
            }
        }
        if (i2 == n.length) {
            return n;
        }
        v[] vVarArr = new v[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < n.length; i5++) {
            if (n[i5].w) {
                vVarArr[i4] = n[i5];
                i4++;
            }
        }
        return vVarArr;
    }

    public Bitmap e(v vVar, int i2) {
        if (vVar.l[i2] != null) {
            return vVar.l[i2];
        }
        c(vVar, i2);
        if (vVar.l[i2] == null) {
            b().g(vVar, i2);
        }
        return vVar.l[i2];
    }

    public void e() {
        if (n != null) {
            for (int i2 = 0; i2 < n.length; i2++) {
                f(n[i2]);
            }
        }
    }

    public void e(v vVar) {
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(vVar.f1475a);
        xVar.d = vVar;
        xVar.a(f + "/icon_" + vVar.f.hashCode());
        xVar.a((Object) xVar);
        xVar.a(new q(this));
        xVar.c();
    }

    public void f() {
        if (this.m) {
            a(n, 4);
            g();
            n = null;
            this.m = false;
        }
    }

    public void f(v vVar, int i2) {
        if (vVar.o[i2] != null) {
            return;
        }
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(this.l + vVar.d[i2]);
        xVar.d = vVar;
        xVar.e = Integer.valueOf(i2);
        xVar.a(h + "/" + vVar.f.hashCode() + "/" + vVar.d[i2]);
        xVar.a((Object) xVar);
        xVar.a(new r(this));
        xVar.c();
        vVar.o[i2] = xVar;
    }

    public void g() {
        if (n != null) {
            for (int i2 = 0; i2 < n.length; i2++) {
                if (n[i2].k != null) {
                    n[i2].k.recycle();
                    n[i2].k = null;
                }
            }
        }
    }

    public void g(v vVar, int i2) {
        if (vVar.m[i2] != null) {
            return;
        }
        String b2 = b(vVar.d[i2]);
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(this.l + b2);
        xVar.d = vVar;
        xVar.e = Integer.valueOf(i2);
        xVar.a(g + "/" + vVar.f.hashCode() + "/" + b2);
        xVar.a((Object) xVar);
        xVar.a(new s(this));
        xVar.c();
        vVar.m[i2] = xVar;
    }
}
