package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import com.estrongs.android.pop.view.utils.AppRunner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cb implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bw f555a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(bw bwVar) {
        this.f555a = bwVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        Intent intent = this.f555a.f546a.getIntent();
        ImageCommentActivity imageCommentActivity = this.f555a.f546a;
        str = this.f555a.f546a.h;
        AppRunner.a((Activity) imageCommentActivity, str, intent.getStringExtra("pic_abs_path"), false);
    }
}
