package com.estrongs.android.pop.app;

import android.view.MenuItem;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HideListActivity f528a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(HideListActivity hideListActivity) {
        this.f528a = hideListActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.pop.utils.af[] afVarArr;
        com.estrongs.android.pop.utils.af[] afVarArr2;
        com.estrongs.android.pop.utils.af[] afVarArr3;
        ListView listView;
        bk bkVar;
        bk bkVar2;
        afVarArr = this.f528a.d;
        if (afVarArr != null) {
            afVarArr2 = this.f528a.d;
            if (afVarArr2.length > 0) {
                this.f528a.g = true;
                com.estrongs.android.pop.utils.aa.b();
                try {
                    com.estrongs.android.pop.utils.aa.c("/sdcard/.estrongs/hide2.txt");
                    com.estrongs.android.pop.utils.aa.d = false;
                    this.f528a.d = com.estrongs.android.pop.utils.aa.c();
                    HideListActivity hideListActivity = this.f528a;
                    HideListActivity hideListActivity2 = this.f528a;
                    HideListActivity hideListActivity3 = this.f528a;
                    afVarArr3 = this.f528a.d;
                    hideListActivity.h = new bk(hideListActivity2, hideListActivity3, C0000R.layout.hidelist_item, afVarArr3);
                    listView = this.f528a.e;
                    bkVar = this.f528a.h;
                    listView.setAdapter((ListAdapter) bkVar);
                    bkVar2 = this.f528a.h;
                    bkVar2.notifyDataSetChanged();
                } catch (Exception e) {
                }
                com.estrongs.android.ui.view.z.a(this.f528a, C0000R.string.hidelist_clean, 1).show();
            }
        }
        return false;
    }
}
