package com.baidu.share.message;

import com.baidu.share.message.token.ShareToken;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public String f181a;

    /* renamed from: b, reason: collision with root package name */
    public String f182b;
    public String c;
    public long d;
    public HashMap<String, String> e;

    public d(String str, String str2, String str3, long j, HashMap<String, String> hashMap) {
        this.f181a = null;
        this.f182b = null;
        this.c = null;
        this.d = 0L;
        this.e = null;
        this.f181a = str;
        this.f182b = str2;
        this.c = str3;
        this.d = j;
        this.e = hashMap;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("action", this.f181a);
            jSONObject.put("sender", this.f182b);
            jSONObject.put("receiver", this.c);
            jSONObject.put(ShareToken.KEY_TIMESTAMP, this.d);
            if (this.e != null) {
                jSONObject.put("data", new JSONObject(this.e));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
