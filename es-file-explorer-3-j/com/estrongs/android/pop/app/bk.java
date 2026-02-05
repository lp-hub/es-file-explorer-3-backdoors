package com.estrongs.android.pop.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class bk extends ArrayAdapter<com.estrongs.android.pop.utils.af> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HideListActivity f530a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.pop.utils.af[] f531b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk(HideListActivity hideListActivity, Context context, int i, com.estrongs.android.pop.utils.af[] afVarArr) {
        super(context, i, afVarArr);
        this.f530a = hideListActivity;
        this.f531b = afVarArr;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        com.estrongs.android.pop.utils.af afVar;
        Drawable drawable = null;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(getContext()).inflate(C0000R.layout.hidelist_item, (ViewGroup) null);
            view.setFocusable(false);
        }
        Button button = (Button) view.findViewById(C0000R.id.hidelist_delete);
        button.setText(C0000R.string.action_restore);
        button.setOnClickListener(this.f530a.f353a);
        Button button2 = (Button) view.findViewById(C0000R.id.hidelist_open);
        button2.setText(C0000R.string.action_open);
        button2.setOnClickListener(this.f530a.f354b);
        try {
            afVar = this.f531b[i];
        } catch (Exception e) {
            afVar = null;
        }
        if (afVar != null) {
            ImageView imageView = (ImageView) view.findViewById(C0000R.id.hidelist_item_icon);
            TextView textView = (TextView) view.findViewById(C0000R.id.hidelist_item_name);
            TextView textView2 = (TextView) view.findViewById(C0000R.id.hidelist_item_path);
            if (afVar.f1180b != null) {
                button.setVisibility(0);
                textView2.setVisibility(0);
                imageView.setVisibility(0);
                try {
                    if (afVar.f1179a) {
                        com.estrongs.android.d.d.a(FileExplorerActivity.E());
                        drawable = com.estrongs.android.d.d.a(com.estrongs.fs.l.f3183a.c());
                    } else {
                        com.estrongs.android.d.d.a(FileExplorerActivity.E());
                        drawable = com.estrongs.android.d.d.a(String.valueOf(com.estrongs.android.util.av.a(afVar.f1180b)));
                    }
                } catch (Exception e2) {
                }
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                } else if (afVar.f1179a) {
                    imageView.setImageResource(C0000R.drawable.format_folder);
                } else {
                    imageView.setImageResource(C0000R.drawable.format_unkown);
                }
                String d = com.estrongs.android.util.ak.d(afVar.f1180b);
                if (d == null) {
                    d = "/";
                }
                textView.setText(d);
                textView2.setVisibility(0);
                textView2.setText(com.estrongs.android.util.ak.bv(afVar.c));
                button.setTag(Integer.valueOf(i));
                button2.setTag(Integer.valueOf(i));
            } else {
                button.setVisibility(8);
                button2.setVisibility(8);
                imageView.setVisibility(8);
                textView2.setVisibility(8);
                textView.setText(C0000R.string.hide_list_empty);
                textView.setGravity(17);
                ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
                double d2 = imageView.getLayoutParams().height / 36.0d;
                layoutParams.height = (int) (43.0d * d2);
                textView.setLayoutParams(layoutParams);
                textView.setPadding(0, 0, 0, (int) (d2 * 5.0d));
                button.setTag(-1);
                button2.setTag(-1);
            }
        } else {
            button.setTag(-1);
            button2.setTag(-1);
        }
        view.setBackgroundColor(0);
        return view;
    }
}
