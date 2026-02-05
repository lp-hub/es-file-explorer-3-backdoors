package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bl implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1527a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1528b;
    final /* synthetic */ a c;
    final /* synthetic */ s d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(s sVar, int i, int i2, a aVar) {
        this.d = sVar;
        this.f1527a = i;
        this.f1528b = i2;
        this.c = aVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        String[] strArr;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        if (this.f1527a != 3 || this.f1528b != 2) {
            fileExplorerActivity = this.d.c;
            com.estrongs.android.ui.b.ag a2 = new com.estrongs.android.ui.b.aq(fileExplorerActivity).a(this.c.f1488b).a();
            fileExplorerActivity2 = this.d.c;
            boolean a3 = FileExplorerActivity.a(fileExplorerActivity2.t(), this.c.b());
            if (a3) {
                fileExplorerActivity4 = this.d.c;
                fileExplorerActivity5 = this.d.c;
                strArr = new String[]{fileExplorerActivity4.getString(C0000R.string.open_in_current_window), fileExplorerActivity5.getString(C0000R.string.open_in_new_window)};
            } else {
                fileExplorerActivity3 = this.d.c;
                strArr = new String[]{fileExplorerActivity3.getString(C0000R.string.open_in_new_window)};
            }
            a2.setItems(strArr, 0, new bm(this, a3));
            a2.setSelectable(false);
            a2.show();
        }
        return true;
    }
}
