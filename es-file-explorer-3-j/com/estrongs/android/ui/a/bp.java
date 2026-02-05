package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShortcutFormat f1534a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f1535b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(s sVar, ShortcutFormat shortcutFormat) {
        this.f1535b = sVar;
        this.f1534a = shortcutFormat;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        FileExplorerActivity fileExplorerActivity7;
        FileExplorerActivity fileExplorerActivity8;
        FileExplorerActivity fileExplorerActivity9;
        FileExplorerActivity fileExplorerActivity10;
        try {
            if (com.estrongs.android.util.ak.aP(this.f1534a.targetLocation)) {
                String A = com.estrongs.android.util.ak.A(this.f1534a.targetLocation);
                fileExplorerActivity7 = this.f1535b.c;
                if (!com.estrongs.fs.d.a(fileExplorerActivity7).h(A)) {
                    fileExplorerActivity8 = this.f1535b.c;
                    fileExplorerActivity8.a((String) null, A);
                } else if (com.estrongs.android.ui.d.e.c() < 8) {
                    fileExplorerActivity10 = this.f1535b.c;
                    fileExplorerActivity10.d(A);
                } else {
                    fileExplorerActivity9 = this.f1535b.c;
                    fileExplorerActivity9.a(C0000R.string.toast_max_window_count);
                }
            } else {
                fileExplorerActivity = this.f1535b.c;
                if (com.estrongs.fs.d.a(fileExplorerActivity).b(this.f1534a.targetLocation)) {
                    fileExplorerActivity3 = this.f1535b.c;
                    if (!com.estrongs.fs.d.a(fileExplorerActivity3).h(this.f1534a.targetLocation) && !com.estrongs.android.util.ak.K(this.f1534a.targetLocation) && !com.estrongs.android.util.ak.L(this.f1534a.targetLocation) && !com.estrongs.android.util.ak.M(this.f1534a.targetLocation) && !com.estrongs.android.util.ak.O(this.f1534a.targetLocation)) {
                        fileExplorerActivity6 = this.f1535b.c;
                        fileExplorerActivity6.a((String) null, this.f1534a.targetLocation);
                    } else if (com.estrongs.android.ui.d.e.c() < 8) {
                        fileExplorerActivity5 = this.f1535b.c;
                        fileExplorerActivity5.d(this.f1534a.targetLocation);
                    } else {
                        fileExplorerActivity4 = this.f1535b.c;
                        fileExplorerActivity4.a(C0000R.string.toast_max_window_count);
                    }
                } else {
                    fileExplorerActivity2 = this.f1535b.c;
                    fileExplorerActivity2.a(C0000R.string.message_invalid_path);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
