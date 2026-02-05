package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.view.bt;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
class i implements bt {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2546a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(f fVar) {
        this.f2546a = fVar;
    }

    @Override // com.estrongs.android.view.bt
    public void a(com.estrongs.fs.g gVar) {
        al alVar;
        int i;
        alVar = this.f2546a.f2542a.f2507a;
        List<ai> f = alVar.f();
        if (f == null) {
            return;
        }
        i = this.f2546a.f2542a.f2508b;
        ai aiVar = f.get(i);
        Intent intent = new Intent();
        intent.setData(Uri.fromFile(new File(gVar.getAbsolutePath())));
        intent.setClass(this.f2546a.f2542a, CropImage.class);
        int max = Math.max(com.estrongs.android.ui.d.a.d, com.estrongs.android.ui.d.a.e);
        intent.putExtra("outputX", max);
        intent.putExtra("outputY", max);
        intent.putExtra("aspectX", max);
        intent.putExtra("aspectY", max);
        intent.putExtra("scale", true);
        intent.putExtra("noFaceDetection", true);
        intent.putExtra("customSave", aiVar.a() + "background.dat");
        this.f2546a.f2542a.startActivityForResult(intent, 268439577);
    }
}
