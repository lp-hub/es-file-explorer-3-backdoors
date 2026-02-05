package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

/* loaded from: classes.dex */
class bh implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HideListActivity f527a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(HideListActivity hideListActivity) {
        this.f527a = hideListActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.pop.utils.af[] afVarArr;
        com.estrongs.android.pop.utils.af afVar;
        com.estrongs.android.pop.utils.af afVar2;
        int intValue = ((Integer) view.getTag()).intValue();
        if (intValue == -1) {
            return;
        }
        HideListActivity hideListActivity = this.f527a;
        afVarArr = this.f527a.d;
        hideListActivity.f = afVarArr[intValue];
        afVar = this.f527a.f;
        String e = com.estrongs.android.pop.utils.aa.e(afVar.f1180b);
        if (e != null) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("path", e);
            afVar2 = this.f527a.f;
            bundle.putBoolean("isDir", afVar2.f1179a);
            intent.putExtras(bundle);
            this.f527a.setResult(-1, intent);
        }
        this.f527a.finish();
    }
}
