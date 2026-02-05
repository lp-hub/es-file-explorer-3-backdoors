package com.estrongs.android.pop.view;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj extends com.estrongs.android.ui.g.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageView f1305a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1306b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aj(FileExplorerActivity fileExplorerActivity, Context context, View view, View view2, String str, ImageView imageView) {
        super(context, view, view2, str);
        this.f1306b = fileExplorerActivity;
        this.f1305a = imageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.g.f
    public void a() {
        this.f1306b.I();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.g.f
    public void a(String str) {
        EditText editText;
        this.f1306b.aY = str;
        this.f1306b.t().k(str);
        this.f1305a.setImageDrawable(this.f1306b.U.c(str));
        if ("all".equals(str)) {
            editText = this.f1306b.aw;
            if (editText.getText().length() == 0) {
                return;
            }
        }
        this.f1306b.b(this.f1306b.v().getAbsolutePath(), str);
    }
}
