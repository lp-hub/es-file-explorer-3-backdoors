package com.estrongs.android.ui.a;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae extends a {
    final /* synthetic */ s h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(s sVar, Drawable drawable, String str, View.OnClickListener onClickListener) {
        super(drawable, str, onClickListener);
        this.h = sVar;
    }

    @Override // com.estrongs.android.ui.a.a
    public String b() {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.h.c;
        return com.estrongs.android.pop.q.a(fileExplorerActivity).C();
    }
}
