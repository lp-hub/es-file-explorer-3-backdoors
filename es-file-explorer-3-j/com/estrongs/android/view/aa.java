package com.estrongs.android.view;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aa extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2724a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(x xVar) {
        this.f2724a = xVar;
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.estrongs.fs.g getItem(int i) {
        return this.f2724a.d.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2724a.d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Drawable drawable;
        if (view == null) {
            view = this.f2724a.af.inflate(C0000R.layout.grid_clipboard, (ViewGroup) null);
        }
        view.setBackgroundResource(C0000R.drawable.background_content_grid);
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.view);
        com.estrongs.fs.g gVar = this.f2724a.d.get(i);
        Drawable d = com.estrongs.android.d.d.d(gVar);
        if (com.estrongs.android.d.d.c(gVar)) {
            if (com.estrongs.android.d.d.a(gVar)) {
                drawable = com.estrongs.android.d.d.e(gVar);
                imageView.setImageDrawable(drawable);
                TextView textView = (TextView) view.findViewById(C0000R.id.message);
                textView.setTextColor(com.estrongs.android.ui.theme.al.a(this.f2724a.ad).d(C0000R.color.clipboard_content_text));
                textView.setText(this.f2724a.d.get(i).getName());
                view.setOnClickListener(new ab(this, i));
                return view;
            }
            if (this.f2724a.f == null) {
                this.f2724a.f();
            }
            this.f2724a.f.a(i, gVar, imageView);
        }
        drawable = d;
        imageView.setImageDrawable(drawable);
        TextView textView2 = (TextView) view.findViewById(C0000R.id.message);
        textView2.setTextColor(com.estrongs.android.ui.theme.al.a(this.f2724a.ad).d(C0000R.color.clipboard_content_text));
        textView2.setText(this.f2724a.d.get(i).getName());
        view.setOnClickListener(new ab(this, i));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f2724a.d();
    }
}
