package com.estrongs.android.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import java.io.File;

/* loaded from: classes.dex */
public class c extends a {
    public c(Context context) {
        super(context);
    }

    @Override // com.estrongs.android.d.a
    protected String a() {
        File file = new File(b(), ".apps");
        if (!file.exists() && !file.mkdirs()) {
            File file2 = new File(this.f274a.getCacheDir(), ".apps");
            if (!file2.exists()) {
                file2.mkdirs();
            }
            return file2.getAbsolutePath();
        }
        return file.getAbsolutePath();
    }

    @Override // com.estrongs.android.d.a
    protected boolean b(com.estrongs.fs.g gVar) {
        return ak.aO(gVar.getAbsolutePath());
    }

    @Override // com.estrongs.android.d.a
    protected Bitmap c(com.estrongs.fs.g gVar) {
        Drawable drawable;
        String absolutePath = gVar.getAbsolutePath();
        PackageManager packageManager = this.f274a.getPackageManager();
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(absolutePath, 8192);
        if (packageArchiveInfo != null) {
            if (aw.b()) {
                packageArchiveInfo.applicationInfo.sourceDir = absolutePath;
                packageArchiveInfo.applicationInfo.publicSourceDir = absolutePath;
                drawable = packageManager.getApplicationIcon(packageArchiveInfo.applicationInfo);
            } else {
                drawable = packageManager.getApplicationIcon(packageArchiveInfo.applicationInfo);
            }
            if (drawable instanceof BitmapDrawable) {
                return ((BitmapDrawable) drawable).getBitmap();
            }
        } else {
            drawable = null;
        }
        if (drawable == null && (gVar instanceof com.estrongs.fs.impl.b.c)) {
            Drawable loadIcon = ((com.estrongs.fs.impl.b.c) gVar).c().loadIcon(packageManager);
            if (loadIcon instanceof BitmapDrawable) {
                return ((BitmapDrawable) loadIcon).getBitmap();
            }
        }
        return null;
    }

    @Override // com.estrongs.android.d.h
    public String[] d() {
        return new String[]{"65536"};
    }

    @Override // com.estrongs.android.d.a
    protected Bitmap.CompressFormat f(com.estrongs.fs.g gVar) {
        return Bitmap.CompressFormat.PNG;
    }
}
