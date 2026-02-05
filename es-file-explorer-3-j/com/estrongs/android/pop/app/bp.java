package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f536a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(ImageCommentActivity imageCommentActivity) {
        this.f536a = imageCommentActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        Intent intent = new Intent(this.f536a, (Class<?>) ImageCommentPostActivity.class);
        str = this.f536a.h;
        intent.putExtra("pic_path", str);
        intent.putExtra("from_detial_page", true);
        this.f536a.startActivityForResult(intent, 1);
    }
}
