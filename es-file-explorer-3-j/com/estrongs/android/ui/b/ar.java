package com.estrongs.android.ui.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1636a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1637b;
    private CharSequence[] c;
    private Drawable[] d;
    private int e;

    public ar(ag agVar, Context context, Drawable[] drawableArr, CharSequence[] charSequenceArr, int i) {
        this.f1636a = agVar;
        this.f1637b = context;
        this.d = drawableArr;
        this.c = charSequenceArr;
        this.e = i;
    }

    public void a(int i) {
        this.e = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.c == null) {
            return 0;
        }
        return this.c.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        boolean z;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1637b).inflate(C0000R.layout.item_common_dialog_choice, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.common_dialog_item_icon);
        if (this.d == null) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
            imageView.setImageDrawable(this.d[i]);
        }
        TextView textView = (TextView) view.findViewById(C0000R.id.common_dialog_item_text);
        textView.setText(this.c[i]);
        RadioButton radioButton = (RadioButton) view.findViewById(C0000R.id.common_dialog_item_radio);
        z = this.f1636a.mSelectable;
        if (!z) {
            radioButton.setVisibility(8);
        }
        radioButton.setChecked(this.e == i);
        if (this.f1636a.itemsEnable) {
            imageView.setAlpha(255);
            textView.setTextColor(com.estrongs.android.ui.theme.al.a(this.f1636a.mContext).d(C0000R.color.popupbox_content_text));
        } else {
            imageView.setAlpha(128);
            textView.setTextColor(-7829368);
        }
        return view;
    }
}
