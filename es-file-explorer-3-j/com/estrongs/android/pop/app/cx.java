package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class cx extends ArrayAdapter<com.estrongs.android.pop.view.utils.t> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ OpenRecomm f644a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.pop.view.utils.t[] f645b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cx(OpenRecomm openRecomm, Context context, int i, com.estrongs.android.pop.view.utils.t[] tVarArr) {
        super(context, i, tVarArr);
        this.f644a = openRecomm;
        this.f645b = tVarArr;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f644a).inflate(C0000R.layout.openapp_item, (ViewGroup) null);
        }
        com.estrongs.android.pop.view.utils.t tVar = this.f645b[i];
        if (tVar != null) {
            ImageView imageView = (ImageView) view.findViewById(C0000R.id.openapp_item_icon);
            TextView textView = (TextView) view.findViewById(C0000R.id.openapp_item_text);
            if (imageView != null) {
                imageView.setImageDrawable(tVar.f1471a);
            }
            if (textView != null) {
                textView.setText(tVar.f1472b);
            }
        }
        view.setTag(tVar);
        return view;
    }
}
