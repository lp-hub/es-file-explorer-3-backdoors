package com.estrongs.android.pop.app.network;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.estrongs.android.f.j;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ EsNetworkActivity f1071a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(EsNetworkActivity esNetworkActivity) {
        this.f1071a = esNetworkActivity;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        com.estrongs.android.f.h hVar;
        hVar = this.f1071a.n;
        return hVar.e();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View a2;
        com.estrongs.android.f.h hVar;
        com.estrongs.android.f.h hVar2;
        i iVar = new i(this.f1071a, null);
        a2 = this.f1071a.a(view, iVar);
        hVar = this.f1071a.n;
        String[] a3 = hVar.a(i);
        iVar.f1075b.setText(a3[0]);
        if (a3[1] != null) {
            iVar.c.setText(a3[1]);
            if (this.f1071a.getString(C0000R.string.progress_connected).equals(a3[1])) {
                iVar.f1074a.setBackgroundResource(C0000R.drawable.esnet_join_blue);
            } else {
                iVar.f1074a.setBackgroundResource(C0000R.drawable.esnet_join);
            }
        }
        hVar2 = this.f1071a.n;
        j b2 = hVar2.b(i);
        if (b2.e() == 1) {
            iVar.f1074a.setBackgroundResource(C0000R.drawable.esnet_02);
        } else if (b2.e() == 2) {
            iVar.f1074a.setBackgroundResource(C0000R.drawable.esnet_03);
        } else if (b2.e() == 3) {
            iVar.f1074a.setBackgroundResource(C0000R.drawable.esnet_04);
        } else {
            iVar.f1074a.setBackgroundResource(C0000R.drawable.esnet_01);
        }
        return a2;
    }
}
