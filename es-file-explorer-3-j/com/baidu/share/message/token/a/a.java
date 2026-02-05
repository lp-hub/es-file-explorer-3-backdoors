package com.baidu.share.message.token.a;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.baidu.share.message.ShareReceiver;
import com.baidu.share.message.c;
import com.baidu.share.message.d;
import com.baidu.share.message.e;
import com.baidu.share.message.token.ShareToken;
import com.baidu.share.message.token.ShareTokenExpiredException;
import com.baidu.share.message.token.ShareTokenListener;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a implements c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f187a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static a f188b = null;
    private Context c = null;
    private ShareTokenListener d = null;
    private e e = null;
    private d f = null;
    private HashMap<String, String> g = null;
    private int h = 0;
    private boolean i = false;

    private a() {
    }

    public static final a a() {
        if (f188b == null) {
            f188b = new a();
        }
        return f188b;
    }

    private String a(String str) {
        return com.baidu.share.message.a.a(str);
    }

    private void a(String str, String str2, String str3, long j, String str4) {
        Intent intent = new Intent("baidu.intent.action.PCS_SHARE");
        if (str != null) {
            intent.putExtra("action", a(str));
        }
        if (str2 != null) {
            intent.putExtra("sender", a(str2));
        }
        if (str3 != null) {
            intent.putExtra("receiver", a(str3));
        }
        intent.putExtra(ShareToken.KEY_TIMESTAMP, j);
        if (str4 != null) {
            intent.putExtra("data", a(str4));
        }
        this.c.sendBroadcast(intent);
    }

    private void a(HashMap<String, String> hashMap) {
        a("baidu.pcs.share.ACTION_TOKEN_SHARE", this.c.getPackageName(), null, Long.parseLong(hashMap.get(ShareToken.KEY_TIMESTAMP)), new JSONObject(hashMap).toString());
    }

    private void f() {
        File file = new File(String.valueOf(this.c.getFilesDir().getAbsolutePath()) + "/attack");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        this.i = true;
    }

    private boolean g() {
        return new File(new StringBuilder(String.valueOf(this.c.getFilesDir().getAbsolutePath())).append("/").append("attack").toString()).exists();
    }

    private void h() {
        File file = new File(String.valueOf(this.c.getFilesDir().getAbsolutePath()) + "/attack");
        if (file.exists()) {
            d();
            file.delete();
        }
    }

    public synchronized ShareToken a(long j) {
        HashMap<String, String> hashMap;
        ShareToken shareToken = null;
        synchronized (this) {
            if (this.e == null) {
                throw new IllegalStateException();
            }
            if (this.f != null) {
                hashMap = this.f.e;
            } else {
                d a2 = this.e.a();
                if (a2 != null) {
                    hashMap = a2.e;
                    this.f = a2;
                } else {
                    hashMap = null;
                }
            }
            if (hashMap != null) {
                shareToken = new ShareToken(hashMap.get(ShareToken.KEY_TOKEN), Long.parseLong(hashMap.get(ShareToken.KEY_TIMESTAMP)), 0);
            } else if (this.g != null) {
                shareToken = new ShareToken(this.g.get(ShareToken.KEY_TOKEN), Long.parseLong(this.g.get(ShareToken.KEY_TIMESTAMP)), 1);
            } else {
                d();
                if (j > 0) {
                    try {
                        wait(j);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    if (this.g != null) {
                        shareToken = new ShareToken(this.g.get(ShareToken.KEY_TOKEN), Long.parseLong(this.g.get(ShareToken.KEY_TIMESTAMP)), 1);
                    } else if (this.f != null) {
                        HashMap<String, String> hashMap2 = this.f.e;
                        shareToken = new ShareToken(hashMap2.get(ShareToken.KEY_TOKEN), Long.parseLong(hashMap2.get(ShareToken.KEY_TIMESTAMP)), 0);
                    }
                }
            }
        }
        return shareToken;
    }

    public void a(Context context) {
        this.c = context;
        this.e = new e(this.c);
        this.g = this.e.b();
        ShareReceiver.a(this);
        if (g()) {
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007f, code lost:
    
        if (java.lang.Long.parseLong(r2.get(com.baidu.share.message.token.ShareToken.KEY_TIMESTAMP)) <= java.lang.Long.parseLong(r1.get(com.baidu.share.message.token.ShareToken.KEY_TIMESTAMP))) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x017b, code lost:
    
        if (java.lang.Long.parseLong(r2.get(com.baidu.share.message.token.ShareToken.KEY_TIMESTAMP)) <= java.lang.Long.parseLong(r1.get(com.baidu.share.message.token.ShareToken.KEY_TIMESTAMP))) goto L65;
     */
    @Override // com.baidu.share.message.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void a(d dVar) {
        if (dVar != null) {
            if (this.f == null && this.e != null) {
                this.f = this.e.a();
            }
            if (dVar.f181a.equals("baidu.pcs.share.ACTION_TOKEN_SHARE")) {
                HashMap<String, String> hashMap = dVar.e;
                if (this.g == null || !this.g.get(ShareToken.KEY_TOKEN).equals(hashMap.get(ShareToken.KEY_TOKEN))) {
                    if (this.f != null && !ShareToken.NORMALIZED_TOKEN.equals(hashMap.get(ShareToken.KEY_TOKEN))) {
                        HashMap<String, String> hashMap2 = this.f.e;
                        if (!hashMap2.get(ShareToken.KEY_TOKEN).equals(hashMap.get(ShareToken.KEY_TOKEN))) {
                        }
                    }
                    this.f = dVar;
                    if (this.e != null) {
                        try {
                            this.e.a(dVar);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (this.i) {
                        Log.e(f187a, "handle new message with isAttaced");
                    } else {
                        if (this.d != null) {
                            this.d.onShareToken(new ShareToken(hashMap.get(ShareToken.KEY_TOKEN), Long.parseLong(hashMap.get(ShareToken.KEY_TIMESTAMP)), 0));
                        }
                        notify();
                    }
                }
            } else if (dVar.f181a.equals("baidu.pcs.share.ACTION_TOLEN_SYNC")) {
                if (this.g != null) {
                    a("baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY", this.c.getPackageName(), dVar.f182b, System.currentTimeMillis(), new JSONObject(this.g).toString());
                }
            } else if (dVar.f181a.equals("baidu.pcs.share.ACTION_TOKEN_SYNC_REPLAY") && dVar.c.equals(this.c.getPackageName())) {
                if (this.i) {
                    Log.e(f187a, "handle ACTION_TOKEN_SYNC_RELAY message with isAttaced");
                } else {
                    HashMap<String, String> hashMap3 = dVar.e;
                    if (this.g == null || !this.g.get(ShareToken.KEY_TOKEN).equals(hashMap3.get(ShareToken.KEY_TOKEN))) {
                        if (this.f != null && !ShareToken.NORMALIZED_TOKEN.equals(hashMap3.get(ShareToken.KEY_TOKEN))) {
                            HashMap<String, String> hashMap4 = this.f.e;
                            if (!hashMap4.get(ShareToken.KEY_TOKEN).equals(hashMap3.get(ShareToken.KEY_TOKEN))) {
                            }
                        }
                        this.f = dVar;
                        if (this.e != null) {
                            try {
                                this.e.a(dVar);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        if (this.d != null) {
                            this.d.onShareToken(new ShareToken(hashMap3.get(ShareToken.KEY_TOKEN), Long.parseLong(hashMap3.get(ShareToken.KEY_TIMESTAMP)), 0));
                        }
                        notify();
                    }
                }
            }
        }
    }

    public synchronized void a(ShareToken shareToken) {
        if (this.e == null) {
            throw new IllegalStateException();
        }
        if (shareToken == null || shareToken.mToken == null || shareToken.mTimestamp <= 0 || shareToken.mStatus == 0) {
            throw new IllegalArgumentException();
        }
        if (shareToken.mStatus == 1) {
            if (this.g != null) {
                if (!this.g.get(ShareToken.KEY_TOKEN).equals(shareToken.mToken)) {
                    if (Long.parseLong(this.g.get(ShareToken.KEY_TIMESTAMP)) > shareToken.mTimestamp) {
                        throw new ShareTokenExpiredException("It is a expired ShareToken");
                    }
                }
            }
            this.g = shareToken.toHashMap();
            this.e.a(this.g);
            if (this.f != null) {
                HashMap<String, String> hashMap = this.f.e;
                if (hashMap.get(ShareToken.KEY_TOKEN).equals(shareToken.mToken)) {
                    this.e.c();
                    this.f = null;
                } else if (Long.parseLong(hashMap.get(ShareToken.KEY_TIMESTAMP)) < shareToken.mTimestamp || shareToken.mToken.equals(ShareToken.NORMALIZED_TOKEN)) {
                    this.e.c();
                    this.f = null;
                }
            }
            a(this.g);
        } else if (shareToken.mStatus == 2) {
            if (this.f != null) {
                HashMap<String, String> hashMap2 = this.f.e;
                if (hashMap2.get(ShareToken.KEY_TOKEN).equals(shareToken.mToken) || Long.parseLong(hashMap2.get(ShareToken.KEY_TIMESTAMP)) <= shareToken.mTimestamp) {
                    this.e.c();
                    this.f = null;
                }
            }
            int i = this.h;
            this.h = i + 1;
            if (i > 3) {
                f();
            }
        }
    }

    public void a(ShareTokenListener shareTokenListener) {
        this.d = shareTokenListener;
    }

    public void b() {
        ShareReceiver.b(this);
        f188b = null;
    }

    public void c() {
        if (this.e != null) {
            this.e.c();
            this.e.d();
        }
    }

    public void d() {
        if (this.e == null) {
            throw new IllegalStateException();
        }
        a("baidu.pcs.share.ACTION_TOLEN_SYNC", this.c.getPackageName(), null, System.currentTimeMillis(), null);
    }

    public synchronized ShareToken e() {
        return this.g != null ? new ShareToken(this.g.get(ShareToken.KEY_TOKEN), Long.parseLong(this.g.get(ShareToken.KEY_TIMESTAMP)), 1) : null;
    }
}
