package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.ProgressTextView;
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
import java.util.zip.InflaterInputStream;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/* loaded from: classes.dex */
public class ai {

    /* renamed from: a, reason: collision with root package name */
    public static String f2527a;

    /* renamed from: b, reason: collision with root package name */
    public String f2528b;
    public String c;
    public String d;
    public String e;
    public String f;
    public int g;
    private ProgressTextView k;
    private int l;
    private int m;
    private BitmapDrawable n;
    private String o;
    private long p = 0;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;

    public static ai a(JSONObject jSONObject) {
        ai aiVar = new ai();
        aiVar.c = (String) jSONObject.get("title");
        aiVar.f2528b = (String) jSONObject.get("package");
        aiVar.e = (String) jSONObject.get("url");
        aiVar.d = (String) jSONObject.get("icon");
        aiVar.f = (String) jSONObject.get("pic");
        aiVar.g = Integer.parseInt((String) jSONObject.get("vcode"));
        aiVar.e();
        return aiVar;
    }

    public static List<ai> a(String str) {
        ParseException parseException;
        ArrayList arrayList;
        IOException iOException;
        FileNotFoundException fileNotFoundException;
        File file = new File(str);
        try {
        } catch (FileNotFoundException e) {
            fileNotFoundException = e;
            arrayList = null;
        } catch (IOException e2) {
            iOException = e2;
            arrayList = null;
        } catch (ParseException e3) {
            parseException = e3;
            arrayList = null;
        }
        if (!file.exists()) {
            f2527a = null;
            return null;
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
        f2527a = (String) ((JSONObject) parse).get("hash_code");
        Object obj = ((JSONObject) parse).get("content");
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < jSONArray.size(); i++) {
                try {
                    ai a2 = a((JSONObject) jSONArray.get(i));
                    if (a2 != null) {
                        arrayList2.add(a2);
                    }
                } catch (FileNotFoundException e4) {
                    fileNotFoundException = e4;
                    arrayList = arrayList2;
                    fileNotFoundException.printStackTrace();
                    f2527a = null;
                    return arrayList;
                } catch (IOException e5) {
                    iOException = e5;
                    arrayList = arrayList2;
                    iOException.printStackTrace();
                    f2527a = null;
                    return arrayList;
                } catch (ParseException e6) {
                    parseException = e6;
                    arrayList = arrayList2;
                    parseException.printStackTrace();
                    f2527a = null;
                    return arrayList;
                }
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    private BitmapDrawable b(Context context, int i) {
        al a2 = al.a(context);
        return new BitmapDrawable(context.getResources(), com.estrongs.android.ui.d.a.a((BitmapDrawable) a2.j(), (BitmapDrawable) a2.a(i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        File file = new File(a() + this.f2528b + this.g + ".apk");
        if (file.exists()) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            context.startActivity(intent);
        }
    }

    private void e(Context context) {
        b(context, C0000R.drawable.pcs_folder);
        b(context, C0000R.drawable.net_folder);
        b(context, C0000R.drawable.share_folder);
        b(context, C0000R.drawable.download_folder);
        b(context, C0000R.drawable.ftp_folder);
        b(context, C0000R.drawable.pic_folder);
        b(context, C0000R.drawable.sys_folder);
    }

    public Context a(Context context) {
        try {
            return context.createPackageContext(this.f2528b, 2);
        } catch (PackageManager.NameNotFoundException e) {
            return context;
        }
    }

    public BitmapDrawable a(Context context, int i) {
        return b(context, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r0 == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Drawable a(Context context, Handler handler) {
        Drawable drawable = null;
        if (b(context)) {
            Context a2 = a(context);
            try {
                drawable = a2.getResources().getDrawable(a2.getResources().getIdentifier("thumbnails", "drawable", this.f2528b));
            } catch (Exception e) {
            }
        }
        drawable = Drawable.createFromPath(a() + "image_thumb");
        if (drawable == null) {
            a(handler);
        }
        return drawable;
    }

    public String a() {
        String str = com.estrongs.android.util.ak.f() + this.f2528b + "/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    public void a(int i) {
        this.l = i;
        this.n = null;
        File file = new File(a() + "background.dat");
        if (file.exists()) {
            file.delete();
        }
        d();
    }

    public void a(Context context, String str, boolean z) {
        this.o = str;
        d();
        if (z) {
            e(context);
        }
    }

    public void a(Handler handler) {
        if (this.h) {
            return;
        }
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(this.d);
        xVar.a(a() + "image_thumb");
        xVar.a((com.estrongs.android.util.aa) new aj(this, handler));
        xVar.c();
        this.h = true;
    }

    public void a(ProgressTextView progressTextView) {
        this.k = progressTextView;
    }

    public void b(int i) {
        this.m = i;
        d();
    }

    public void b(Context context, Handler handler) {
        File file = new File(a() + this.f2528b + this.g + ".apk");
        if (file.exists()) {
            if (handler != null) {
                Message message = new Message();
                message.what = 12;
                message.obj = this.f2528b;
                handler.sendMessage(message);
            }
            d(context);
            return;
        }
        if (this.j) {
            return;
        }
        com.estrongs.android.util.x xVar = new com.estrongs.android.util.x(this.e);
        xVar.a(file.getPath());
        xVar.a((com.estrongs.android.util.aa) new ak(this, handler, context));
        xVar.c();
        this.j = true;
    }

    public boolean b() {
        return this.j;
    }

    public boolean b(Context context) {
        if (context.getPackageName().equals(this.f2528b)) {
            return true;
        }
        return (this.f2528b == null || al.a(context).d(this.f2528b) == null) ? false : true;
    }

    public void c() {
        File file = new File(a() + this.f2528b + this.g + ".apk");
        if (file.exists()) {
            file.delete();
        }
    }

    public void c(Context context) {
        Intent intent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", this.f2528b, null));
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public synchronized void d() {
        File file = new File(a() + "configuration.dat");
        try {
            file.createNewFile();
            JSONObject jSONObject = new JSONObject();
            if (this.l != Integer.MIN_VALUE) {
                jSONObject.put("background_color", Integer.valueOf(this.l));
            }
            if (this.m != Integer.MIN_VALUE) {
                jSONObject.put("text_color", Integer.valueOf(this.m));
            }
            if (this.o != null) {
                jSONObject.put("folder_style_name", this.o);
            }
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(jSONObject.toString());
            fileWriter.flush();
            fileWriter.close();
            jSONObject.clear();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public synchronized void e() {
        Object obj;
        int parseInt;
        int parseInt2;
        this.o = null;
        this.l = Integer.MIN_VALUE;
        this.m = Integer.MIN_VALUE;
        this.n = null;
        File file = new File(a() + "configuration.dat");
        if (file.exists()) {
            try {
                JSONParser jSONParser = new JSONParser();
                FileReader fileReader = new FileReader(file);
                JSONObject jSONObject = (JSONObject) jSONParser.parse(fileReader);
                if (jSONObject != null) {
                    if (jSONObject.containsKey("background_color") && (parseInt2 = Integer.parseInt(jSONObject.get("background_color").toString())) != Integer.MIN_VALUE) {
                        this.l = parseInt2;
                    }
                    if (jSONObject.containsKey("text_color") && (parseInt = Integer.parseInt(jSONObject.get("text_color").toString())) != Integer.MIN_VALUE) {
                        this.m = parseInt;
                    }
                    if (jSONObject.containsKey("folder_style_name") && (obj = jSONObject.get("folder_style_name")) != null) {
                        this.o = obj.toString();
                    }
                    jSONObject.clear();
                    fileReader.close();
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            } catch (ParseException e3) {
                e3.printStackTrace();
            }
        }
    }

    public synchronized boolean f() {
        boolean z = true;
        synchronized (this) {
            boolean z2 = false;
            File file = new File(a() + "configuration.dat");
            if (file.exists()) {
                file.delete();
                z2 = true;
            }
            File file2 = new File(a() + "background.dat");
            if (file2.exists()) {
                file2.delete();
            } else {
                z = z2;
            }
            e();
        }
        return z;
    }

    public String g() {
        return this.o;
    }

    public Drawable h() {
        ColorDrawable colorDrawable;
        File file = new File(a() + "background.dat");
        if (file.exists()) {
            if (this.n == null || this.p != file.lastModified()) {
                if (this.n != null) {
                    try {
                        this.n.getBitmap().recycle();
                    } catch (Exception e) {
                    }
                    this.n = null;
                }
                try {
                    this.n = (BitmapDrawable) Drawable.createFromPath(file.getAbsolutePath());
                } catch (Throwable th) {
                }
                this.p = file.lastModified();
            }
            if (this.n != null) {
                this.n.setTileModeXY(Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
                return this.n;
            }
        }
        if (this.l == Integer.MIN_VALUE || (colorDrawable = new ColorDrawable(this.l)) == null) {
            return null;
        }
        return colorDrawable;
    }

    public int i() {
        return this.m;
    }

    public int j() {
        return this.l;
    }

    public void k() {
        if (this.n != null) {
            Bitmap bitmap = this.n.getBitmap();
            if (bitmap == null || !bitmap.isRecycled()) {
            }
            this.n = null;
        }
    }
}
