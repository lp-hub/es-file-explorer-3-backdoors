package com.estrongs.android.ui.a;

import android.content.Intent;
import android.view.View;
import com.estrongs.android.pop.app.GestureManageActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1516a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(s sVar) {
        this.f1516a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.f1516a.c;
        Intent intent = new Intent(fileExplorerActivity, (Class<?>) GestureManageActivity.class);
        fileExplorerActivity2 = this.f1516a.c;
        fileExplorerActivity2.startActivityForResult(intent, 16781342);
    }
}
