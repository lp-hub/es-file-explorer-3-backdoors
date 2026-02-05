package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.io.File;

/* loaded from: classes.dex */
class cs implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2047a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2048b;
    final /* synthetic */ cr c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cs(cr crVar, String str, String str2) {
        this.c = crVar;
        this.f2047a = str;
        this.f2048b = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.c.f2046a.l;
        Intent intent = new Intent(fileExplorerActivity, (Class<?>) CropImage.class);
        intent.setData(Uri.fromFile(new File(this.f2047a)));
        int max = Math.max(com.estrongs.android.ui.d.a.d, com.estrongs.android.ui.d.a.e);
        intent.putExtra("outputX", max);
        intent.putExtra("outputY", max);
        intent.putExtra("aspectX", max);
        intent.putExtra("aspectY", max);
        intent.putExtra("scale", true);
        intent.putExtra("noFaceDetection", true);
        intent.putExtra("customSave", this.f2048b);
        fileExplorerActivity2 = this.c.f2046a.l;
        fileExplorerActivity2.startActivityForResult(intent, 268439577);
    }
}
