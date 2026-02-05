package com.estrongs.android.ui.e;

import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dl implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2070a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dl(bz bzVar) {
        this.f2070a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        com.estrongs.a.a a2;
        l = this.f2070a.l();
        int size = l.size();
        Iterator it = l.iterator();
        int i = 0;
        while (it.hasNext()) {
            a2 = this.f2070a.a((com.estrongs.fs.g) it.next());
            if (a2 != null && a2.getTaskStatus() == 2) {
                i++;
            }
            i = i;
        }
        fileExplorerActivity = this.f2070a.l;
        String string = fileExplorerActivity.getString(C0000R.string.download_clear_confirm_message, new Object[]{Integer.valueOf(size), Integer.valueOf(i)});
        fileExplorerActivity2 = this.f2070a.l;
        View inflate = com.estrongs.android.pop.esclasses.e.a(fileExplorerActivity2).inflate(C0000R.layout.task_clear_confirm, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.message)).setText(string);
        CheckBox checkBox = (CheckBox) inflate.findViewById(C0000R.id.clear_file_also);
        fileExplorerActivity3 = this.f2070a.l;
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(fileExplorerActivity3);
        aqVar.a(C0000R.string.download_clear_title);
        aqVar.a(inflate);
        aqVar.b(C0000R.string.confirm_ok, new dm(this, l, checkBox));
        aqVar.c(C0000R.string.confirm_cancel, new dn(this));
        aqVar.a().show();
        return false;
    }
}
