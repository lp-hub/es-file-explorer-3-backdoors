package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.EditText;

/* loaded from: classes.dex */
class cc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentPostActivity f556a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(ImageCommentPostActivity imageCommentPostActivity) {
        this.f556a = imageCommentPostActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        editText = this.f556a.f358b;
        String obj = editText.getText().toString();
        if (com.estrongs.android.util.aw.a((CharSequence) obj)) {
            return;
        }
        this.f556a.a(obj);
    }
}
