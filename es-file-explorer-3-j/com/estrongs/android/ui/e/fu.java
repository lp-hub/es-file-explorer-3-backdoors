package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;

/* loaded from: classes.dex */
public class fu extends gq {
    public fu(Context context, boolean z) {
        super(context, z);
        this.c = new LinearLayout(this.f1968b);
        ((LinearLayout) this.c).setOrientation(1);
    }

    protected void a(View view, com.estrongs.android.view.a.a aVar, int i) {
        aVar.a(view);
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.item_icon);
        TextView textView = (TextView) view.findViewById(C0000R.id.item_text);
        imageView.setImageDrawable(aVar.getIcon());
        textView.setText(aVar.getTitle());
        textView.setEnabled(false);
        textView.setFocusable(false);
        imageView.setEnabled(false);
        imageView.setFocusable(false);
        if (aVar.d() == null) {
            aVar.a(new fx(this));
        }
    }

    @Override // com.estrongs.android.ui.e.gq
    public void a(com.estrongs.android.view.a.a aVar) {
        a(aVar, false);
    }

    public void a(com.estrongs.android.view.a.a aVar, boolean z) {
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f1968b).inflate(C0000R.layout.menu_list_item, (ViewGroup) null);
        a(linearLayout, aVar, this.f1967a.size());
        this.f1967a.add(aVar);
        if (((LinearLayout) this.c).getChildCount() != 0) {
            ESImageView eSImageView = new ESImageView(this.f1968b);
            eSImageView.setBackgroundResource(C0000R.drawable.toolbar_more_content_sp);
            if (z) {
                ((LinearLayout) this.c).addView(eSImageView, new ViewGroup.LayoutParams(-1, 1));
            } else {
                ((LinearLayout) this.c).addView(eSImageView, 0, new ViewGroup.LayoutParams(-1, 1));
            }
        }
        if (z) {
            ((LinearLayout) this.c).addView(linearLayout);
        } else {
            ((LinearLayout) this.c).addView(linearLayout, 0);
        }
        linearLayout.setOnClickListener(new fv(this, linearLayout, aVar));
        linearLayout.setOnLongClickListener(new fw(this, aVar));
        linearLayout.setFocusable(true);
    }
}
