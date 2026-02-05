package com.estrongs.fs.impl.n;

import android.os.AsyncTask;
import com.estrongs.android.view.ar;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.g;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f extends AsyncTask<String, Integer, List<g>> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3149a;

    /* renamed from: b, reason: collision with root package name */
    private ar f3150b;
    private List<g> c;

    public f(a aVar, ar arVar, List<g> list) {
        this.f3149a = aVar;
        this.f3150b = arVar;
        this.c = list;
    }

    private boolean a(List<g> list, List<g> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!list.get(i).getAbsolutePath().equals(list2.get(i).getAbsolutePath())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public List<g> doInBackground(String... strArr) {
        List<g> list;
        FileSystemException e;
        try {
            list = this.f3149a.a();
            try {
                if (a(this.c, list)) {
                    return null;
                }
                this.f3149a.b(list);
                return list;
            } catch (FileSystemException e2) {
                e = e2;
                e.printStackTrace();
                return list;
            }
        } catch (FileSystemException e3) {
            list = null;
            e = e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(List<g> list) {
        if (list == null || this.f3150b == null || this.f3150b.U()) {
            return;
        }
        this.f3150b.b(true);
    }
}
