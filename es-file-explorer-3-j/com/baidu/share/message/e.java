package com.baidu.share.message;

import android.content.Context;
import android.util.Log;
import com.baidu.share.message.token.ShareToken;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final String f183a = e.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f184b = new Object();
    private File c;
    private File d;

    public e(Context context) {
        this.c = null;
        this.d = null;
        this.c = new File(String.valueOf(context.getFilesDir().getAbsolutePath()) + "/preverify.json");
        this.d = new File(String.valueOf(context.getFilesDir().getAbsolutePath()) + "/shareData.json");
    }

    public d a() {
        d dVar;
        if (!this.c.exists() || this.c.length() <= 0) {
            return null;
        }
        try {
            synchronized (f184b) {
                FileInputStream fileInputStream = new FileInputStream(this.c);
                DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                byte[] bArr = new byte[(int) this.c.length()];
                dataInputStream.readFully(bArr);
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String string = jSONObject.getString("action");
                String string2 = jSONObject.getString("sender");
                String string3 = jSONObject.has("receiver") ? jSONObject.getString("receiver") : null;
                long j = jSONObject.getLong(ShareToken.KEY_TIMESTAMP);
                HashMap hashMap = new HashMap();
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject2.getString(next));
                }
                dataInputStream.close();
                fileInputStream.close();
                dVar = new d(string, string2, string3, j, hashMap);
            }
            return dVar;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (JSONException e3) {
            e3.printStackTrace();
            if (this.c.exists()) {
                this.c.delete();
            }
            return null;
        }
    }

    public void a(d dVar) {
        synchronized (f184b) {
            if (dVar.toString() == null) {
                Log.e(f183a, "savePreverifyMessageData error message");
                return;
            }
            if (this.c.exists()) {
                this.c.delete();
            }
            FileWriter fileWriter = new FileWriter(this.c);
            fileWriter.write(dVar.toString());
            fileWriter.flush();
            fileWriter.close();
        }
    }

    public void a(HashMap<String, String> hashMap) {
        if (hashMap == null) {
            return;
        }
        synchronized (f184b) {
            String jSONObject = new JSONObject(hashMap).toString();
            if (jSONObject == null) {
                Log.e(f183a, "saveShareData error message");
                return;
            }
            if (this.d.exists()) {
                this.d.delete();
            }
            FileWriter fileWriter = new FileWriter(this.d);
            fileWriter.write(jSONObject);
            fileWriter.flush();
            fileWriter.close();
        }
    }

    public HashMap<String, String> b() {
        HashMap<String, String> hashMap;
        if (!this.d.exists() || this.d.length() <= 0) {
            return null;
        }
        try {
            synchronized (f184b) {
                FileInputStream fileInputStream = new FileInputStream(this.d);
                DataInputStream dataInputStream = new DataInputStream(fileInputStream);
                byte[] bArr = new byte[(int) this.d.length()];
                dataInputStream.readFully(bArr);
                JSONObject jSONObject = new JSONObject(new String(bArr));
                hashMap = new HashMap<>();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
                dataInputStream.close();
                fileInputStream.close();
            }
            return hashMap;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        } catch (JSONException e3) {
            e3.printStackTrace();
            if (this.d.exists()) {
                this.d.delete();
            }
            return null;
        }
    }

    public void c() {
        if (this.c.exists()) {
            this.c.delete();
        }
    }

    public void d() {
        if (this.d.exists()) {
            this.d.delete();
        }
    }
}
