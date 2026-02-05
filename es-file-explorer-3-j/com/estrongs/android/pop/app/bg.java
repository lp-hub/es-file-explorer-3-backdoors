package com.estrongs.android.pop.app;

import android.os.Parcelable;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class bg implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HideListActivity f526a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(HideListActivity hideListActivity) {
        this.f526a = hideListActivity;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:5|(2:7|(7:9|10|11|12|13|14|16))|21|10|11|12|13|14|16) */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onClick(View view) {
        ListView listView;
        com.estrongs.android.pop.utils.af[] afVarArr;
        com.estrongs.android.pop.utils.af[] afVarArr2;
        ListView listView2;
        bk bkVar;
        bk bkVar2;
        ListView listView3;
        com.estrongs.android.pop.utils.af[] afVarArr3;
        com.estrongs.android.pop.utils.af[] afVarArr4;
        int intValue = ((Integer) view.getTag()).intValue();
        if (intValue == -1) {
            return;
        }
        listView = this.f526a.e;
        Parcelable onSaveInstanceState = listView.onSaveInstanceState();
        afVarArr = this.f526a.d;
        com.estrongs.android.pop.utils.af afVar = afVarArr[intValue];
        this.f526a.g = true;
        com.estrongs.android.pop.utils.aa.b(afVar.f1180b);
        this.f526a.d = com.estrongs.android.pop.utils.aa.c();
        afVarArr2 = this.f526a.d;
        try {
            if (afVarArr2 != null) {
                afVarArr3 = this.f526a.d;
                if (afVarArr3.length != 0) {
                    HideListActivity hideListActivity = this.f526a;
                    HideListActivity hideListActivity2 = this.f526a;
                    HideListActivity hideListActivity3 = this.f526a;
                    afVarArr4 = this.f526a.d;
                    hideListActivity.h = new bk(hideListActivity2, hideListActivity3, C0000R.layout.hidelist_item, afVarArr4);
                    listView2 = this.f526a.e;
                    bkVar = this.f526a.h;
                    listView2.setAdapter((ListAdapter) bkVar);
                    bkVar2 = this.f526a.h;
                    bkVar2.notifyDataSetChanged();
                    listView3 = this.f526a.e;
                    listView3.onRestoreInstanceState(onSaveInstanceState);
                    com.estrongs.android.pop.utils.aa.c("/sdcard/.estrongs/hide2.txt");
                    com.estrongs.android.pop.utils.aa.d = false;
                    return;
                }
            }
            com.estrongs.android.pop.utils.aa.c("/sdcard/.estrongs/hide2.txt");
            com.estrongs.android.pop.utils.aa.d = false;
            return;
        } catch (Exception e) {
            return;
        }
        this.f526a.h = new bk(this.f526a, this.f526a, C0000R.layout.hidelist_item, new com.estrongs.android.pop.utils.af[]{new com.estrongs.android.pop.utils.af(null, false, null)});
        listView2 = this.f526a.e;
        bkVar = this.f526a.h;
        listView2.setAdapter((ListAdapter) bkVar);
        bkVar2 = this.f526a.h;
        bkVar2.notifyDataSetChanged();
        listView3 = this.f526a.e;
        listView3.onRestoreInstanceState(onSaveInstanceState);
    }
}
