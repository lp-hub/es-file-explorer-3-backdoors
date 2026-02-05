package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.io.File;
import java.text.Collator;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class a implements f {

    /* renamed from: a, reason: collision with root package name */
    private List<e> f998a = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    private final Collator f999b = Collator.getInstance();

    public a(ContentResolver contentResolver, Uri uri, int i) {
        a(contentResolver, uri);
        Collections.sort(this.f998a, c(i));
    }

    private void a(ContentResolver contentResolver, Uri uri) {
        Cursor query = contentResolver.query(uri, null, null, null, "bucket_display_name");
        if (query != null) {
            while (query.moveToNext()) {
                File file = new File(query.getString(query.getColumnIndexOrThrow("_data")));
                if (file.exists()) {
                    this.f998a.add(new j(this, null, Uri.fromFile(file), file.lastModified()));
                }
            }
            query.close();
        }
    }

    private Comparator<e> c(int i) {
        return new b(this, i);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public int a(e eVar) {
        return this.f998a.indexOf(eVar);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public e a(int i) {
        if (i <= -1 || i >= this.f998a.size()) {
            return null;
        }
        return this.f998a.get(i);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public e a(Uri uri) {
        for (e eVar : this.f998a) {
            if (uri.getPath().equalsIgnoreCase(eVar.d())) {
                return eVar;
            }
        }
        return null;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public void a() {
        this.f998a.clear();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public int b() {
        return this.f998a.size();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public boolean b(int i) {
        return b(a(i));
    }

    public boolean b(e eVar) {
        File file = new File(((j) eVar).d());
        if (!file.exists() || !file.delete()) {
            return false;
        }
        this.f998a.remove(eVar);
        return true;
    }
}
