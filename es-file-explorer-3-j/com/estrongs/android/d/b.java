package com.estrongs.android.d;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.provider.MediaStore;
import com.estrongs.android.util.ah;
import com.estrongs.android.util.ak;
import java.io.File;

/* loaded from: classes.dex */
public class b extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        super(context);
    }

    @Override // com.estrongs.android.d.a
    protected String a() {
        File file = new File(b(), ".albumart");
        if (!file.exists() && !file.mkdirs()) {
            File file2 = new File(this.f274a.getCacheDir(), ".albumart");
            if (!file2.exists()) {
                file2.mkdirs();
            }
            return file2.getAbsolutePath();
        }
        return file.getAbsolutePath();
    }

    @Override // com.estrongs.android.d.a
    protected Bitmap c(com.estrongs.fs.g gVar) {
        Bitmap bitmap = null;
        String absolutePath = gVar.getAbsolutePath();
        if (absolutePath.endsWith("/") && !absolutePath.equals("/")) {
            absolutePath = absolutePath.substring(0, absolutePath.length() - 1);
        }
        if (absolutePath.startsWith("file://")) {
            absolutePath = absolutePath.replaceAll("file://", "");
        }
        Cursor query = this.f274a.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "album_id", "album_key"}, "_data=?", new String[]{ak.aO(absolutePath) ? ak.bo(absolutePath) : absolutePath}, null);
        if (query.moveToFirst()) {
            long j = query.getLong(0);
            long j2 = query.getLong(1);
            if (query.getString(2) != null) {
                Bitmap a2 = ah.a(this.f274a, j, j2);
                if (a2 == null || a2.getWidth() * a2.getHeight() <= 10000) {
                    bitmap = a2;
                } else {
                    float width = a2.getWidth();
                    float height = a2.getHeight();
                    float min = Math.min(width / 90.0f, height / 90.0f);
                    bitmap = Bitmap.createScaledBitmap(a2, (int) (width / min), (int) (height / min), true);
                    a2.recycle();
                }
            }
        }
        query.close();
        return bitmap;
    }

    @Override // com.estrongs.android.d.h
    public String[] d() {
        return new String[]{"131104"};
    }
}
