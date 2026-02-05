package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ay extends ArrayAdapter<com.estrongs.android.pop.view.utils.v> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommendListView f2622a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.pop.view.utils.v[] f2623b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ay(RecommendListView recommendListView, Context context, int i, com.estrongs.android.pop.view.utils.v[] vVarArr) {
        super(context, i, vVarArr);
        this.f2622a = recommendListView;
        this.f2623b = vVarArr;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        SparseArray sparseArray;
        View.OnClickListener onClickListener;
        boolean z;
        Context context;
        if (view == null) {
            context = this.f2622a.f2586a;
            view = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.recomm_list_item, (ViewGroup) null);
        }
        com.estrongs.android.pop.view.utils.v vVar = this.f2623b[i];
        if (vVar != null) {
            TextView textView = (TextView) view.findViewById(C0000R.id.recomm_item_long_desc);
            TextView textView2 = (TextView) view.findViewById(C0000R.id.recomm_item_install_stop);
            textView2.setTag(Integer.valueOf(i));
            onClickListener = this.f2622a.i;
            textView2.setOnClickListener(onClickListener);
            Bitmap d = com.estrongs.android.pop.view.utils.n.b().d(vVar);
            ImageView imageView = (ImageView) view.findViewById(C0000R.id.recomm_item_icon);
            if (d == null) {
                imageView.setImageResource(C0000R.drawable.format_apk);
            } else {
                imageView.setImageBitmap(d);
            }
            this.f2622a.a(view, vVar);
            z = this.f2622a.f2587b;
            if (z) {
                ((LinearLayout) view.findViewById(C0000R.id.recomm_item_bk)).setBackgroundResource(C0000R.drawable.blank);
            }
            textView.setVisibility(8);
        }
        sparseArray = this.f2622a.j;
        sparseArray.put(i, view);
        return view;
    }
}
