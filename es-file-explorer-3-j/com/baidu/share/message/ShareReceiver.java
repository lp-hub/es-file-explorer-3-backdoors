package com.baidu.share.message;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.baidu.share.message.token.ShareToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShareReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static final String f176a = ShareReceiver.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final ArrayList<c> f177b = new ArrayList<>();

    private d a(Bundle bundle) {
        HashMap hashMap;
        String c = c(bundle.getString("action"));
        if (!a(c)) {
            Log.e(f176a, "parseShareMessage invalid action");
            return null;
        }
        String c2 = c(bundle.getString("sender"));
        if (b(c2)) {
            Log.e(f176a, "parseShareMessage invalid sender");
            return null;
        }
        String string = bundle.getString("receiver");
        if (string != null) {
            string = c(string);
        }
        long j = bundle.getLong(ShareToken.KEY_TIMESTAMP);
        if (j <= 0) {
            Log.e(f176a, "parseShareMessage invalid timestamp");
            return null;
        }
        String string2 = bundle.getString("data");
        if (string2 != null) {
            string2 = c(string2);
        }
        if (b(string2)) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject(string2);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
            } catch (JSONException e) {
                e.printStackTrace();
                Log.e(f176a, "parseShareMessage invalid data");
                return null;
            }
        }
        if ((c.equals("baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY") || c.equals("baidu.pcs.share.ACTION_TOKEN_SHARE")) && hashMap == null) {
            return null;
        }
        return new d(c, c2, string, j, hashMap);
    }

    public static void a(c cVar) {
        if (cVar == null || f177b.contains(cVar)) {
            return;
        }
        f177b.add(cVar);
    }

    private boolean a(String str) {
        if (str == null || str.length() <= 0) {
            return false;
        }
        return str.equals("baidu.pcs.share.ACTION_TOLEN_SYNC") || str.equals("baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY") || str.equals("baidu.pcs.share.ACTION_TOKEN_SHARE");
    }

    public static void b(c cVar) {
        if (cVar == null || !f177b.contains(cVar)) {
            return;
        }
        f177b.remove(cVar);
    }

    private boolean b(String str) {
        return str == null || str.length() <= 0;
    }

    private String c(String str) {
        return a.b(str);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        String action = intent.getAction();
        if (action != null) {
            if ((action == null || action.equals("baidu.intent.action.PCS_SHARE")) && (extras = intent.getExtras()) != null) {
                d a2 = a(extras);
                if (a2 == null) {
                    Log.e(f176a, "parseShareMessage error");
                } else {
                    if (a2.f182b.equals(context.getPackageName())) {
                        return;
                    }
                    if (f177b.size() == 0) {
                        new b(context).a(a2);
                    } else {
                        new Thread(new f(this, a2)).start();
                    }
                }
            }
        }
    }
}
