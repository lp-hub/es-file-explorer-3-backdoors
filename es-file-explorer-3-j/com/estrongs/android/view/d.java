package com.estrongs.android.view;

import android.os.AsyncTask;

/* loaded from: classes.dex */
class d extends AsyncTask<Void, Void, String[]> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2832a;

    private d(a aVar) {
        this.f2832a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ d(a aVar, b bVar) {
        this(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String[] strArr) {
        this.f2832a.f.n();
        this.f2832a.a("app://update");
        super.onPostExecute(strArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String[] doInBackground(Void... voidArr) {
        return new String[0];
    }
}
