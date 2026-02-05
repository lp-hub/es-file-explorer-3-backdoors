package com.baidu.mobstat;

import de.aflx.sardine.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q {

    /* renamed from: b, reason: collision with root package name */
    private long f163b = 0;
    private long c = 0;
    private int d = 0;

    /* renamed from: a, reason: collision with root package name */
    List<r> f162a = new ArrayList();

    public q() {
        a(System.currentTimeMillis());
    }

    public long a() {
        return this.f163b;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(long j) {
        this.f163b = j;
    }

    public void a(String str, long j, long j2) {
        this.f162a.add(new r(this, str, j, j2));
    }

    public void b() {
        this.f163b = 0L;
        this.c = 0L;
        this.d = 0;
        this.f162a.clear();
        a(System.currentTimeMillis());
    }

    public void b(long j) {
        this.c = j;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SardineUtil.CUSTOM_NAMESPACE_PREFIX, this.f163b);
            jSONObject.put("e", this.c);
            jSONObject.put("i", System.currentTimeMillis());
            jSONObject.put("c", this.d);
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.f162a.size(); i++) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("n", this.f162a.get(i).a());
                jSONObject2.put(SardineUtil.DEFAULT_NAMESPACE_PREFIX, this.f162a.get(i).b());
                long c = this.f162a.get(i).c() - this.f163b;
                if (c < 0) {
                    c = 0;
                }
                jSONObject2.put("ps", c);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("p", jSONArray);
        } catch (JSONException e) {
            com.baidu.mobstat.a.c.a("stat", "StatSession.constructJSONObject() failed");
        }
        return jSONObject;
    }

    public int d() {
        return this.d;
    }
}
