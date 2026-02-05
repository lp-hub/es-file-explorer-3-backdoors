package com.estrongs.android.pop.app;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cj extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f565a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(LocalFileSharingActivity localFileSharingActivity) {
        this.f565a = localFileSharingActivity;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        cs[] csVarArr;
        cs[] csVarArr2;
        int length;
        csVarArr = this.f565a.e;
        synchronized (csVarArr) {
            csVarArr2 = this.f565a.e;
            length = csVarArr2.length;
        }
        return length;
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
        cs[] csVarArr;
        View inflate;
        cs[] csVarArr2;
        com.estrongs.android.ui.theme.al alVar;
        csVarArr = this.f565a.e;
        synchronized (csVarArr) {
            inflate = view == null ? com.estrongs.android.pop.esclasses.e.a(this.f565a).inflate(C0000R.layout.item_esnet_target, (ViewGroup) null) : view;
            try {
                View findViewById = inflate.findViewById(C0000R.id.frame_choose);
                View findViewById2 = inflate.findViewById(C0000R.id.frame_waiting);
                csVarArr2 = this.f565a.e;
                cs csVar = csVarArr2[i];
                findViewById.setVisibility(0);
                findViewById2.setVisibility(4);
                TextView textView = (TextView) findViewById.findViewById(C0000R.id.choose_message);
                alVar = this.f565a.k;
                textView.setTextColor(alVar.h());
                textView.setText(csVar.f637a + "(" + csVar.f638b + ")");
                ((CheckBox) findViewById.findViewById(C0000R.id.choose_checkbox)).setChecked(csVar.c);
            } catch (Exception e) {
                return inflate;
            }
        }
        return inflate;
    }
}
