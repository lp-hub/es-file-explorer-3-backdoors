package com.baidu.share.message;

import android.content.Context;
import android.content.Intent;
import com.baidu.share.message.token.ShareToken;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    private Context f180a;

    public b(Context context) {
        this.f180a = null;
        this.f180a = context;
    }

    private String a(String str) {
        return a.a(str);
    }

    @Override // com.baidu.share.message.c
    public void a(d dVar) {
        HashMap<String, String> b2;
        if (dVar == null) {
            return;
        }
        e eVar = new e(this.f180a);
        if (dVar.f181a.equals("baidu.pcs.share.ACTION_TOKEN_SHARE")) {
            try {
                eVar.a(dVar);
                return;
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        if (!dVar.f181a.equals("baidu.pcs.share.ACTION_TOLEN_SYNC") || (b2 = eVar.b()) == null) {
            return;
        }
        String jSONObject = new JSONObject(b2).toString();
        Intent intent = new Intent("baidu.intent.action.PCS_SHARE");
        intent.putExtra("action", a("baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY"));
        intent.putExtra("sender", a(this.f180a.getPackageName()));
        intent.putExtra("receiver", a(dVar.f182b));
        intent.putExtra(ShareToken.KEY_TIMESTAMP, System.currentTimeMillis());
        intent.putExtra("data", a(jSONObject));
        this.f180a.sendBroadcast(intent);
    }
}
