package com.baidu.mobstat;

import android.content.Context;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
class j {

    /* renamed from: a, reason: collision with root package name */
    private static j f149a = new j();

    /* renamed from: b, reason: collision with root package name */
    private boolean f150b = false;

    private j() {
    }

    public static j a() {
        return f149a;
    }

    public void a(Context context) {
        com.baidu.mobstat.a.c.a("stat", "openExceptonAnalysis");
        if (this.f150b) {
            return;
        }
        this.f150b = true;
        a.a().a(context);
    }

    public void b(Context context) {
        if (context == null) {
            com.baidu.mobstat.a.c.a("stat", "exceptonAnalysis, context=null");
            return;
        }
        JSONArray b2 = a.a().b(context);
        if (b2 == null) {
            com.baidu.mobstat.a.c.a("stat", "no exception str");
            return;
        }
        com.baidu.mobstat.a.c.a("stat", "move exception cache to stat cache");
        int i = 0;
        while (true) {
            try {
                int i2 = i;
                if (i2 >= b2.length()) {
                    return;
                }
                JSONObject jSONObject = (JSONObject) b2.get(i2);
                b.a().a(jSONObject.getLong("t"), jSONObject.getString("c"));
                b.a().b(context);
                i = i2 + 1;
            } catch (Exception e) {
                com.baidu.mobstat.a.c.a("stat", e);
                return;
            }
        }
    }
}
