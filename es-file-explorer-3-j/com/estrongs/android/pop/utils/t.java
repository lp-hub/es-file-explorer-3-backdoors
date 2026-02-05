package com.estrongs.android.pop.utils;

import android.os.AsyncTask;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t extends AsyncTask<Void, Void, Void> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1278a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1279b;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(c cVar, int i, List list) {
        this.c = cVar;
        this.f1278a = i;
        this.f1279b = list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f1278a) {
                return null;
            }
            com.estrongs.android.util.at.a(this.c.f1251a, ((com.estrongs.fs.impl.b.c) this.f1279b.get(i2)).c());
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Void r4) {
        com.estrongs.android.ui.view.z.a(this.c.f1251a, this.c.f1251a.getString(C0000R.string.operation_multiops_success), 1).show();
    }
}
