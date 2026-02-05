package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ca implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bx f554a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(bx bxVar) {
        this.f554a = bxVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Bitmap bitmap;
        Bitmap bitmap2;
        bitmap = this.f554a.f.f547b;
        if (bitmap == null) {
            ((ImageView) this.f554a.e.findViewById(C0000R.id.image)).setImageResource(C0000R.drawable.format_picture_broken);
            return;
        }
        bw bwVar = this.f554a.f;
        View view = this.f554a.e;
        bitmap2 = this.f554a.f.f547b;
        bwVar.a(view, bitmap2);
        this.f554a.f.notifyDataSetChanged();
    }
}
