package com.estrongs.fs.impl.pcs;

import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    public String f3160a;

    /* renamed from: b, reason: collision with root package name */
    public String f3161b;
    public String c;
    public long d;
    private String e;

    public a(String str, String str2, String str3) {
        this.f3160a = null;
        this.f3161b = null;
        this.c = null;
        this.d = 0L;
        this.e = null;
        this.f3161b = str2;
        this.c = str3;
        this.e = str;
        if (str3.startsWith("/")) {
            return;
        }
        String str4 = "/" + str3;
    }

    public a(String str, String str2, String str3, String str4) {
        this(str + ":" + str2, str3, str4);
    }

    public a(JSONObject jSONObject) {
        this(jSONObject.optString("user_info"), jSONObject.optString("source"), "/apps/Downloads/");
        this.f3160a = jSONObject.optString("pcs_id");
        a(jSONObject.optLong("size"));
        b(jSONObject.optLong("end_time"));
        putExtra("name", jSONObject.optString("title"));
    }

    private void a() {
        this.path = String.format("pcs://%s@pcs/files", this.e) + this.c;
        if (aw.b((CharSequence) this.f3160a)) {
            this.path += this.f3160a;
        }
        if (!this.path.endsWith(".pcs")) {
            this.path += ".pcs";
        }
        this.absolutePath = this.path;
    }

    public void a(long j) {
        this.size = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(long j) {
        this.lastModified = j;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public final String getAbsolutePath() {
        if (this.path == null) {
            a();
        }
        return this.absolutePath;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public String getName() {
        Object extra = getExtra("name");
        if (extra != null) {
            this.name = extra.toString();
        }
        if (aw.a((CharSequence) this.name)) {
            this.name = ak.d(this.f3161b);
        }
        return this.name;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public String getPath() {
        if (this.path == null) {
            a();
        }
        return this.path;
    }
}
