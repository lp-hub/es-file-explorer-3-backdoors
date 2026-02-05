package com.baidu.mobstat;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private static a f127a = new a();

    /* renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f128b = null;
    private Context c = null;

    private a() {
    }

    public static a a() {
        return f127a;
    }

    private void a(long j, String str) {
        if (this.c == null || str == null || str.trim().equals("")) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("t", j);
            jSONObject.put("c", str);
            JSONArray b2 = b(this.c);
            if (b2 == null) {
                b2 = new JSONArray();
            }
            b2.put(jSONObject);
            FileOutputStream openFileOutput = this.c.openFileOutput("__local_except_cache.json", 0);
            openFileOutput.write(b2.toString().getBytes());
            openFileOutput.flush();
            openFileOutput.close();
            com.baidu.mobstat.a.c.a("SDKCrashHandler", "Save Exception String Successlly");
        } catch (Exception e) {
            com.baidu.mobstat.a.c.a("SDKCrashHandler", e);
        }
    }

    public void a(Context context) {
        if (this.f128b == null) {
            this.f128b = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
        if (this.c == null) {
            this.c = context.getApplicationContext();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONArray b(Context context) {
        JSONArray jSONArray = null;
        if (context != null) {
            File file = new File(context.getFilesDir(), "__local_except_cache.json");
            try {
            } catch (Exception e) {
                com.baidu.mobstat.a.c.a("SDKCrashHandler", e);
            }
            if (file.exists()) {
                FileInputStream openFileInput = context.openFileInput("__local_except_cache.json");
                StringBuffer stringBuffer = new StringBuffer();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = openFileInput.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    stringBuffer.append(new String(bArr, 0, read));
                }
                openFileInput.close();
                jSONArray = stringBuffer.length() != 0 ? new JSONArray(stringBuffer.toString()) : null;
                try {
                    file.delete();
                } catch (Exception e2) {
                    com.baidu.mobstat.a.c.a("SDKCrashHandler", e2);
                }
            }
        }
        return jSONArray;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        String obj = stringWriter.toString();
        com.baidu.mobstat.a.c.a("SDKCrashHandler", obj);
        a(System.currentTimeMillis(), obj);
        if (!this.f128b.equals(this)) {
            this.f128b.uncaughtException(thread, th);
        }
        throw new RuntimeException(th);
    }
}
