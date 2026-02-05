package com.estrongs.android.pop.utils;

import android.content.Context;
import android.os.AsyncTask;
import com.estrongs.android.pop.C0000R;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k extends AsyncTask<Void, Void, Void> {

    /* renamed from: a, reason: collision with root package name */
    boolean f1263a = false;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f1264b;
    final /* synthetic */ String c;
    final /* synthetic */ c d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(c cVar, Context context, String str) {
        this.d = cVar;
        this.f1264b = context;
        this.c = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("charset_name", com.estrongs.android.util.g.f2695a[0]);
            hashMap.put("password", "s!*123.estrongs");
            com.estrongs.io.archive.c.b(this.c, hashMap).a(new l(this));
            this.f1263a = true;
            return null;
        } catch (Exception e) {
            this.f1263a = false;
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Void r3) {
        if (this.f1263a) {
            a.a(this.f1264b, C0000R.string.app_manager_replace_cache_suc);
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        a.a(this.f1264b, C0000R.string.app_restoring_cache_data);
    }
}
