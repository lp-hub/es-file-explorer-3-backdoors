package com.estrongs.android.ui.h;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.x;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private int f2240a;

    /* renamed from: b, reason: collision with root package name */
    private String f2241b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private Bitmap h;
    private int j;
    private x m;
    private f n;
    private boolean k = false;
    private boolean l = false;
    private int i = 100;

    public static c a(JSONObject jSONObject) {
        c cVar = new c();
        cVar.f2240a = Integer.parseInt(jSONObject.get(Name.MARK).toString());
        cVar.f2241b = (String) jSONObject.get("app_name");
        cVar.c = (String) jSONObject.get("package_name");
        cVar.g = (String) jSONObject.get("download_url");
        cVar.f = (String) jSONObject.get("description");
        cVar.e = (String) jSONObject.get("summary");
        cVar.d = (String) jSONObject.get("icon");
        cVar.i = Integer.parseInt(jSONObject.get("notify_gate").toString());
        cVar.j = Integer.parseInt(jSONObject.get("weight").toString());
        return cVar;
    }

    public static List<c> b(String str) {
        ArrayList arrayList;
        ParseException parseException;
        IOException iOException;
        FileNotFoundException fileNotFoundException;
        File file = new File(str);
        try {
        } catch (FileNotFoundException e) {
            arrayList = null;
            fileNotFoundException = e;
        } catch (IOException e2) {
            arrayList = null;
            iOException = e2;
        } catch (ParseException e3) {
            arrayList = null;
            parseException = e3;
        }
        if (!file.exists()) {
            return null;
        }
        int intValue = Long.valueOf(file.length()).intValue();
        byte[] bArr = new byte[intValue];
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        randomAccessFile.read(bArr, 0, intValue);
        randomAccessFile.close();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = byteArrayInputStream.read(bArr2, 0, 1024);
            if (read <= 0) {
                break;
            }
            byteArrayOutputStream.write(bArr2, 0, read);
        }
        String str2 = new String(byteArrayOutputStream.toByteArray());
        byteArrayOutputStream.close();
        JSONArray jSONArray = (JSONArray) new JSONParser().parse(str2);
        if (jSONArray instanceof JSONArray) {
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < jSONArray.size(); i++) {
                try {
                    c a2 = a((JSONObject) jSONArray.get(i));
                    if (a2 != null) {
                        arrayList2.add(a2);
                    }
                } catch (FileNotFoundException e4) {
                    fileNotFoundException = e4;
                    arrayList = arrayList2;
                    fileNotFoundException.printStackTrace();
                    return arrayList;
                } catch (IOException e5) {
                    iOException = e5;
                    arrayList = arrayList2;
                    iOException.printStackTrace();
                    return arrayList;
                } catch (ParseException e6) {
                    parseException = e6;
                    arrayList = arrayList2;
                    parseException.printStackTrace();
                    return arrayList;
                }
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    private String j(Context context) {
        return ak.b(context) + this.c;
    }

    public Bitmap a(Context context) {
        if (this.h != null) {
            return this.h;
        }
        String str = j(context) + "/icon";
        if (new File(str).exists()) {
            this.h = BitmapFactory.decodeFile(str);
        }
        return this.h;
    }

    public String a() {
        return this.f2241b;
    }

    public void a(Context context, Handler handler) {
        if (this.l) {
            return;
        }
        String str = j(context) + "/" + (this.c + ".apk");
        this.m = new x(this.g);
        this.m.a(str);
        this.m.a((aa) new e(this, handler, context));
        this.m.c();
        this.l = true;
    }

    public void a(String str) {
        this.g = str;
    }

    public String b() {
        return this.c;
    }

    public boolean b(Context context) {
        return new File(j(context) + "/icon").exists();
    }

    public String c() {
        return this.e;
    }

    public void c(Context context) {
        if (this.k) {
            return;
        }
        String str = j(context) + "/icon";
        if (new File(str).exists()) {
            return;
        }
        x xVar = new x(this.d);
        xVar.a(str);
        xVar.a((aa) new d(this));
        xVar.c();
        this.k = true;
    }

    public String d() {
        return this.f;
    }

    public boolean d(Context context) {
        return context.getPackageManager().getPackageInfo(this.c, 1) != null;
    }

    public int e() {
        return this.i;
    }

    public void e(Context context) {
        File file = new File(j(context) + "/" + (this.c + ".apk"));
        if (file.exists()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            context.startActivity(intent);
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            if (this.n == null) {
                this.n = new f(this, context);
                context.registerReceiver(this.n, intentFilter);
            }
        }
    }

    public int f() {
        return this.j;
    }

    public boolean f(Context context) {
        return new File(j(context) + "/.skip").exists();
    }

    public void g(Context context) {
        try {
            new File(j(context) + "/.skip").createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean g() {
        return this.c.startsWith("action_");
    }

    public void h() {
        if (this.m != null) {
            this.m.a((aa) null);
            this.m.b();
            this.l = false;
        }
    }

    public void h(Context context) {
        File file = new File(j(context) + "/.lastTime");
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
            FileWriter fileWriter = new FileWriter(file);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write("" + ((g() ? 86400000 * 3 : 86400000L) + System.currentTimeMillis()));
            bufferedWriter.flush();
            bufferedWriter.close();
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void i() {
        if (this.h != null) {
            this.h.recycle();
            this.h = null;
        }
        if (this.n != null) {
            this.n.a();
            this.n = null;
        }
    }

    public boolean i(Context context) {
        File file = new File(j(context) + "/.lastTime");
        if (!file.exists()) {
            return false;
        }
        try {
            return System.currentTimeMillis() < Long.parseLong(new BufferedReader(new FileReader(file)).readLine());
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
