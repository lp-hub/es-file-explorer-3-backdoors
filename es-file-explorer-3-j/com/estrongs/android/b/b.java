package com.estrongs.android.b;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.estrongs.android.e.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends AsyncTask<Void, Bitmap, Void> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f257a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f258b = false;
    private Bitmap c;

    public b(a aVar) {
        this.f257a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        String str;
        try {
            str = this.f257a.f255a;
            com.estrongs.android.e.a a2 = c.a(str);
            if (a2 != null) {
                long currentTimeMillis = System.currentTimeMillis();
                while (!this.f258b) {
                    com.estrongs.android.e.b a3 = a2.a(this.c);
                    if (this.c == null) {
                        this.c = a3.f290a;
                    }
                    publishProgress(this.c);
                    int i = a3.f291b;
                    if (i == 0) {
                        i = 100;
                    }
                    long currentTimeMillis2 = i - (System.currentTimeMillis() - currentTimeMillis);
                    if (currentTimeMillis2 > 0 && !this.f258b) {
                        try {
                            Thread.sleep(currentTimeMillis2);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    currentTimeMillis = System.currentTimeMillis();
                }
                a2.a();
            }
        } catch (Exception e2) {
        }
        return null;
    }

    public void a() {
        this.f258b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onProgressUpdate(Bitmap... bitmapArr) {
        super.onProgressUpdate(bitmapArr);
        this.f257a.a(this.f257a, bitmapArr[0]);
    }
}
