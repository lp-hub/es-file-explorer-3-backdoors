package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1522a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1523b;
    final /* synthetic */ int c;
    final /* synthetic */ s d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(s sVar, a aVar, int i, int i2) {
        this.d = sVar;
        this.f1522a = aVar;
        this.f1523b = i;
        this.c = i2;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        boolean z;
        boolean z2;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        FileExplorerActivity fileExplorerActivity6;
        FileExplorerActivity fileExplorerActivity7;
        FileExplorerActivity fileExplorerActivity8;
        FileExplorerActivity fileExplorerActivity9;
        FileExplorerActivity fileExplorerActivity10;
        FileExplorerActivity fileExplorerActivity11;
        String[] strArr;
        fileExplorerActivity = this.d.c;
        boolean a2 = FileExplorerActivity.a(fileExplorerActivity.t(), this.f1522a.b());
        if (this.f1522a.e) {
            z = a2;
            z2 = true;
        } else {
            z2 = false;
            z = false;
        }
        fileExplorerActivity2 = this.d.c;
        com.estrongs.android.ui.b.ag a3 = new com.estrongs.android.ui.b.aq(fileExplorerActivity2).a(this.f1522a.f1488b).a();
        fileExplorerActivity3 = this.d.c;
        fileExplorerActivity4 = this.d.c;
        fileExplorerActivity5 = this.d.c;
        fileExplorerActivity6 = this.d.c;
        fileExplorerActivity7 = this.d.c;
        String[] strArr2 = {fileExplorerActivity3.getString(C0000R.string.open_in_current_window), fileExplorerActivity4.getString(C0000R.string.open_in_new_window), fileExplorerActivity5.getString(C0000R.string.action_rename), fileExplorerActivity6.getString(C0000R.string.property_title), fileExplorerActivity7.getString(C0000R.string.menu_remove_from_list)};
        fileExplorerActivity8 = this.d.c;
        fileExplorerActivity9 = this.d.c;
        fileExplorerActivity10 = this.d.c;
        fileExplorerActivity11 = this.d.c;
        String[] strArr3 = {fileExplorerActivity8.getString(C0000R.string.open_in_current_window), fileExplorerActivity9.getString(C0000R.string.action_rename), fileExplorerActivity10.getString(C0000R.string.property_title), fileExplorerActivity11.getString(C0000R.string.menu_remove_from_list)};
        if (z && z2) {
            strArr = strArr2;
        } else if (!z && z2) {
            String[] strArr4 = new String[strArr2.length - 1];
            for (int i = 1; i < strArr2.length; i++) {
                strArr4[i - 1] = strArr2[i];
            }
            strArr = strArr4;
        } else if (!z || z2) {
            String[] strArr5 = new String[strArr3.length - 1];
            for (int i2 = 1; i2 < strArr3.length; i2++) {
                strArr5[i2 - 1] = strArr3[i2];
            }
            strArr = strArr5;
        } else {
            strArr = strArr3;
        }
        a3.setItems(strArr, 0, new bj(this, z, z2));
        a3.setSelectable(false);
        a3.show();
        return true;
    }
}
