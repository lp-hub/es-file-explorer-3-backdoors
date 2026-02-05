package com.baidu.mobstat;

import android.content.Context;
import de.aflx.sardine.util.SardineUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a */
    static c f133a = new c();
    private static JSONObject c = new JSONObject();
    private static b i = new b();

    /* renamed from: b */
    private int f134b = 0;
    private JSONArray d = new JSONArray();
    private JSONArray e = new JSONArray();
    private JSONArray f = new JSONArray();
    private JSONArray g = new JSONArray();
    private boolean h = false;

    private b() {
    }

    public static b a() {
        return i;
    }

    private void a(boolean z) {
        this.h = z;
    }

    public static String b(String str, Context context) {
        if (str == null) {
            return null;
        }
        if (!str.equals("000000000000000")) {
            return str;
        }
        String h = h(context);
        com.baidu.mobstat.a.c.a("stat", "imei=null,mac=" + h);
        return h;
    }

    private boolean d() {
        return this.h;
    }

    public static String f(Context context) {
        String str;
        String str2;
        String str3;
        String str4;
        str = f133a.d;
        if (str == null) {
            f133a.d = BasicStoreTools.getInstance().loadGenerateDeviceCUID(context);
            str3 = f133a.d;
            if (str3 == null) {
                f133a.d = com.baidu.a.a.a.b.a.a(context);
                BasicStoreTools basicStoreTools = BasicStoreTools.getInstance();
                str4 = f133a.d;
                basicStoreTools.setGenerateDeviceCUID(context, str4);
            }
        }
        str2 = f133a.d;
        return str2;
    }

    public static String h(Context context) {
        String g = z.g(context);
        if (g != null) {
            return g.replaceAll(":", "");
        }
        return null;
    }

    public void a(long j, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("t", j);
            if (str.getBytes().length > 5120) {
                byte[] bArr = new byte[5120];
                str.getBytes(0, 5120, bArr, 0);
                com.baidu.mobstat.a.c.a("exception bytes=" + bArr.length);
                jSONObject.put("c", new String(bArr));
            } else {
                jSONObject.put("c", str);
            }
        } catch (JSONException e) {
            com.baidu.mobstat.a.c.a("stat", e);
        }
        c(jSONObject, false);
    }

    public synchronized void a(Context context) {
        f133a.b(context);
    }

    public void a(String str) {
        f133a.c = str;
    }

    public void a(String str, String str2, int i2, long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("i", str);
            jSONObject.put("l", str2);
            jSONObject.put("c", i2);
            jSONObject.put("t", j);
            jSONObject.put(SardineUtil.DEFAULT_NAMESPACE_PREFIX, j2);
            b(jSONObject, false);
            com.baidu.mobstat.a.c.a("stat", "put event:" + jSONObject.toString());
        } catch (JSONException e) {
            com.baidu.mobstat.a.c.a("stat", e);
        }
    }

    public void a(JSONObject jSONObject, boolean z) {
        if (jSONObject != null && !z) {
            int length = jSONObject.toString().getBytes().length;
            com.baidu.mobstat.a.c.a("stat", "putSession:addSize is:", Integer.valueOf(length));
            if (length + this.f134b > 204800) {
                com.baidu.mobstat.a.c.a("stat", "putSession: size is full!");
                return;
            }
        }
        synchronized (this.d) {
            try {
                this.d.put(this.d.length(), jSONObject);
            } catch (JSONException e) {
                com.baidu.mobstat.a.c.a("stat", e);
            }
        }
    }

    public void b(Context context) {
        com.baidu.mobstat.a.c.a("stat", "flush cache to __local_stat_cache.json");
        JSONObject jSONObject = new JSONObject();
        try {
            synchronized (this.d) {
                jSONObject.put("pr", new JSONArray(this.d.toString()));
            }
            synchronized (this.e) {
                jSONObject.put("ev", new JSONArray(this.e.toString()));
            }
            synchronized (this.g) {
                jSONObject.put("ex", new JSONArray(this.g.toString()));
            }
        } catch (JSONException e) {
            com.baidu.mobstat.a.c.a("stat", "flushLogWithoutHeader() construct cache error");
        }
        String jSONObject2 = jSONObject.toString();
        if (d()) {
            com.baidu.mobstat.a.c.a("stat", "cache.json exceed 204800B,stop flush.");
            return;
        }
        int length = jSONObject2.getBytes().length;
        if (length >= 204800) {
            a(true);
            return;
        }
        this.f134b = length;
        com.baidu.mobstat.a.c.a("stat", "flush:cacheFileSize is:" + this.f134b);
        com.baidu.mobstat.a.b.a(false, context, "__local_stat_cache.json", jSONObject2, false);
    }

    public void b(String str) {
        f133a.j = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x007b, code lost:
    
        if (r2.equals("") != false) goto L126;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(JSONObject jSONObject, boolean z) {
        if (jSONObject != null && !z) {
            int length = jSONObject.toString().getBytes().length;
            com.baidu.mobstat.a.c.a("stat", "putEvent:eventSize is:", Integer.valueOf(length));
            if (length + this.f134b > 204800) {
                com.baidu.mobstat.a.c.a("stat", "putEvent: size is full!");
                return;
            }
        }
        int i2 = 0;
        try {
            String string = jSONObject.getString("i");
            String string2 = jSONObject.getString("l");
            long j = jSONObject.getLong("t") / 3600000;
            String optString = jSONObject.optString(SardineUtil.CUSTOM_NAMESPACE_PREFIX);
            try {
                i2 = jSONObject.getInt(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
            } catch (JSONException e) {
                com.baidu.mobstat.a.c.a("stat", "old version data, No duration Tag");
            }
            if (i2 != 0) {
                synchronized (this.e) {
                    int length2 = this.e.length();
                    try {
                        jSONObject.put(SardineUtil.CUSTOM_NAMESPACE_PREFIX, "0");
                        this.e.put(length2, jSONObject);
                    } catch (JSONException e2) {
                        com.baidu.mobstat.a.c.a("stat", e2);
                    }
                }
                return;
            }
            synchronized (this.e) {
                int length3 = this.e.length();
                if (optString != null) {
                    try {
                    } catch (JSONException e3) {
                        com.baidu.mobstat.a.c.a("stat", "event put s fail");
                    }
                }
                jSONObject.put(SardineUtil.CUSTOM_NAMESPACE_PREFIX, "0|");
                int i3 = 0;
                int i4 = length3;
                while (true) {
                    if (i3 >= length3) {
                        i3 = i4;
                        break;
                    }
                    try {
                        JSONObject jSONObject2 = this.e.getJSONObject(i3);
                        com.baidu.mobstat.a.c.a("stat", ";event_iter=" + jSONObject2.toString());
                        String string3 = jSONObject2.getString("i");
                        String string4 = jSONObject2.getString("l");
                        long j2 = jSONObject2.getLong("t") / 3600000;
                        int i5 = 0;
                        try {
                            i5 = jSONObject2.getInt(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
                        } catch (JSONException e4) {
                            com.baidu.mobstat.a.c.a("stat", "old version data, No duration Tag");
                        }
                        if (j2 == j && i5 == 0) {
                            com.baidu.mobstat.a.c.a("stat", ";event_iter=" + jSONObject2.toString());
                            if (string3.equals(string) && string4.equals(string2)) {
                                int i6 = jSONObject2.getInt("c") + jSONObject.getInt("c");
                                String optString2 = jSONObject2.optString(SardineUtil.CUSTOM_NAMESPACE_PREFIX);
                                if (optString2 == null || optString2.equalsIgnoreCase("")) {
                                    optString2 = "0|";
                                }
                                String str = optString2 + (jSONObject.getLong("t") - jSONObject2.getLong("t")) + "|";
                                try {
                                    jSONObject2.remove("c");
                                    jSONObject2.put("c", i6);
                                    jSONObject2.put(SardineUtil.CUSTOM_NAMESPACE_PREFIX, str);
                                    break;
                                } catch (JSONException e5) {
                                    e = e5;
                                    i4 = i3;
                                    com.baidu.mobstat.a.c.a("stat", e);
                                    i3++;
                                }
                            }
                        }
                    } catch (JSONException e6) {
                        e = e6;
                    }
                    i3++;
                }
                if (i3 < length3) {
                    return;
                }
                try {
                    this.e.put(length3, jSONObject);
                } catch (JSONException e7) {
                    com.baidu.mobstat.a.c.a("stat", e7);
                }
            }
        } catch (JSONException e8) {
            com.baidu.mobstat.a.c.a("stat", e8);
        }
    }

    public boolean b() {
        return this.d.length() == 0 && this.e.length() == 0 && this.g.length() == 0;
    }

    public void c(Context context) {
        com.baidu.mobstat.a.c.a("stat", "LoadLastSession()");
        if (context != null && com.baidu.mobstat.a.b.c(context, "__local_last_session.json")) {
            String a2 = com.baidu.mobstat.a.b.a(false, context, "__local_last_session.json");
            if (a2.equals("")) {
                com.baidu.mobstat.a.c.a("stat", "loadLastSession(): last_session.json file not found.");
                return;
            }
            com.baidu.mobstat.a.b.a(false, context, "__local_last_session.json", new JSONObject().toString(), false);
            c(a2);
            b(context);
        }
    }

    public void c(String str) {
        if (str.equals("{}") || str.equals("")) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            a(jSONObject, false);
            com.baidu.mobstat.a.c.a("stat", "Load last session:" + jSONObject);
        } catch (JSONException e) {
            com.baidu.mobstat.a.c.a("stat", "putSession()" + e);
        }
    }

    public void c(JSONObject jSONObject, boolean z) {
        if (jSONObject != null && !z) {
            int length = jSONObject.toString().getBytes().length;
            com.baidu.mobstat.a.c.a("stat", "putException:addSize is:", Integer.valueOf(length));
            if (length + this.f134b > 204800) {
                com.baidu.mobstat.a.c.a("stat", "putException: size is full!");
                return;
            }
        }
        synchronized (this.g) {
            try {
                this.g.put(this.g.length(), jSONObject);
            } catch (JSONException e) {
                com.baidu.mobstat.a.c.a("stat", e);
            }
        }
    }

    public void d(Context context) {
        if (context != null && com.baidu.mobstat.a.b.c(context, "__local_stat_cache.json")) {
            String a2 = com.baidu.mobstat.a.b.a(false, context, "__local_stat_cache.json");
            if (a2.equals("")) {
                com.baidu.mobstat.a.c.a("stat", "stat_cache file not found.");
                return;
            }
            com.baidu.mobstat.a.c.a("stat", "loadStatData, ");
            try {
                this.f134b = a2.getBytes().length;
                com.baidu.mobstat.a.c.a("stat", "load Stat Data:cacheFileSize is:" + this.f134b);
                JSONObject jSONObject = new JSONObject(a2);
                com.baidu.mobstat.a.c.a("stat", "Load cache:" + a2);
                long currentTimeMillis = System.currentTimeMillis();
                JSONArray jSONArray = jSONObject.getJSONArray("pr");
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    if (currentTimeMillis - jSONObject2.getLong(SardineUtil.CUSTOM_NAMESPACE_PREFIX) <= 604800000) {
                        a(jSONObject2, true);
                    }
                }
                JSONArray jSONArray2 = jSONObject.getJSONArray("ev");
                for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i3);
                    if (currentTimeMillis - jSONObject3.getLong("t") <= 604800000) {
                        b(jSONObject3, true);
                    }
                }
                JSONArray jSONArray3 = jSONObject.getJSONArray("ex");
                for (int i4 = 0; i4 < jSONArray3.length(); i4++) {
                    JSONObject jSONObject4 = jSONArray3.getJSONObject(i4);
                    if (currentTimeMillis - jSONObject4.getLong("t") <= 604800000) {
                        c(jSONObject4, true);
                    }
                }
            } catch (JSONException e) {
                com.baidu.mobstat.a.c.a("stat", "Load stat data error:" + e);
            }
        }
    }

    public boolean e(Context context) {
        boolean z = false;
        com.baidu.mobstat.a.c.a("stat", "sendLogData() begin.");
        JSONObject jSONObject = new JSONObject();
        synchronized (c) {
            try {
                c.put("t", System.currentTimeMillis());
                c.put("ss", s.b().d());
                jSONObject.put("he", c);
                synchronized (this.d) {
                    try {
                        jSONObject.put("pr", this.d);
                        synchronized (this.e) {
                            try {
                                jSONObject.put("ev", this.e);
                                synchronized (this.f) {
                                    synchronized (this.g) {
                                        try {
                                            jSONObject.put("ex", this.g);
                                            String jSONObject2 = jSONObject.toString();
                                            com.baidu.mobstat.a.c.a("stat", "---Send Data Is:" + jSONObject2);
                                            try {
                                                z.a(context, "http://hmma.baidu.com/app.gif", jSONObject2, 50000, 50000);
                                                com.baidu.mobstat.a.c.a("stat", "sendLogData() send_sucess.data=" + jSONObject2);
                                                z = true;
                                            } catch (Exception e) {
                                                com.baidu.mobstat.a.c.a("stat", e);
                                            }
                                            com.baidu.mobstat.a.c.b("stat", "send log data over. result=" + z);
                                            if (z) {
                                                a(false);
                                                this.g = new JSONArray();
                                                this.e = new JSONArray();
                                                this.d = new JSONArray();
                                                b(context);
                                                s.b().c();
                                                l.a().c(context);
                                            }
                                        } catch (JSONException e2) {
                                            com.baidu.mobstat.a.c.a("stat", e2);
                                        }
                                    }
                                }
                            } catch (JSONException e3) {
                                com.baidu.mobstat.a.c.a("stat", e3);
                            }
                        }
                    } catch (JSONException e4) {
                        com.baidu.mobstat.a.c.a("stat", e4.toString());
                    }
                }
            } catch (JSONException e5) {
                com.baidu.mobstat.a.c.a("stat", e5);
            }
        }
        com.baidu.mobstat.a.c.a("stat", "sendLogData() end.");
        return z;
    }
}
