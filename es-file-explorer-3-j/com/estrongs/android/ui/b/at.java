package com.estrongs.android.ui.b;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at extends AsyncTask<List<File>, String, Void> {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.fs.c.a f1638a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f1639b;
    final /* synthetic */ TextView c;
    final /* synthetic */ as d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(as asVar, Context context, TextView textView) {
        this.d = asVar;
        this.f1639b = context;
        this.c = textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(List<File>... listArr) {
        this.f1638a = new com.estrongs.fs.c.a(new au(this));
        this.f1638a.a(listArr[0]);
        publishProgress("" + this.f1638a.c(), com.estrongs.fs.c.d.c(this.f1638a.b()), "over");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Void r5) {
        publishProgress("" + this.f1638a.c(), com.estrongs.fs.c.d.c(this.f1638a.b()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onProgressUpdate(String... strArr) {
        this.c.setText(this.f1639b.getString(C0000R.string.task_progress_multi_item_message, strArr[0], this.f1639b.getString(C0000R.string.task_progress_multi_item_message_size, strArr[1])));
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        if (this.f1638a != null) {
            this.f1638a.a();
        }
    }
}
