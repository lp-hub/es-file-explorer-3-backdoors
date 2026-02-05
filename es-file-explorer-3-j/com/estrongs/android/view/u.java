package com.estrongs.android.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f2855a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar) {
        this.f2855a = tVar;
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.estrongs.fs.g getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f2855a.af.inflate(C0000R.layout.grid_clipboard, (ViewGroup) null);
        }
        view.setBackgroundResource(C0000R.drawable.background_content_grid);
        ((ImageView) view.findViewById(C0000R.id.view)).setImageResource(C0000R.drawable.multi_files);
        ((TextView) view.findViewById(C0000R.id.message)).setText(this.f2855a.m(C0000R.string.multi_files_title) + "(" + this.f2855a.f2853a.size() + ")");
        view.setOnClickListener(new v(this));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f2855a.d();
    }
}
