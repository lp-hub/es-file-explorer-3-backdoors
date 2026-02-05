package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;

/* loaded from: classes.dex */
public class o extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    r f1022a;
    private Context d;
    private com.estrongs.android.pop.app.imageviewer.gallery.f e;
    private int f;
    private Drawable g;
    private Bitmap h;
    private int i = 0;
    private com.estrongs.android.pop.app.imageviewer.gallery.g<com.estrongs.android.pop.app.imageviewer.gallery.e, ImageView> j = new com.estrongs.android.pop.app.imageviewer.gallery.g<>();

    /* renamed from: b, reason: collision with root package name */
    n f1023b = null;
    int c = 100;

    public o(Context context, com.estrongs.android.pop.app.imageviewer.gallery.f fVar) {
        this.d = context;
        this.e = fVar;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(com.estrongs.android.pop.s.f1167a);
        this.f = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        this.g = context.getResources().getDrawable(C0000R.drawable.format_picture);
        this.h = BitmapFactory.decodeResource(context.getResources(), C0000R.drawable.format_picture_broken);
    }

    private void a(int i, com.estrongs.android.pop.app.imageviewer.gallery.e eVar, ImageView imageView) {
        this.f1022a.a(this.e.a(i), new p(this, i, imageView), i);
    }

    public void a() {
        if (this.h != null && !this.h.isRecycled()) {
            this.h.recycle();
            this.h = null;
        }
        if (this.j != null) {
            this.j.a();
        }
        if (this.f1022a != null) {
            this.f1022a.a();
            this.f1022a.b();
            this.f1022a = null;
        }
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(int i, int i2) {
        if (this.f1022a == null) {
            this.f1022a = new r();
        }
        if (i < 0) {
            i = 0;
        }
        if (i2 > this.e.b()) {
            i2 = this.e.b();
        }
        while (i < i2) {
            com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.e.a(i);
            ImageView a3 = this.j.a(a2);
            if (a3 != null && a3.getDrawable() == this.g) {
                a(i, a2, a3);
            }
            i++;
        }
    }

    public void a(n nVar) {
        this.f1023b = nVar;
    }

    public void b(int i) {
        this.c = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.e.b();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.e.a(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        this.i = i;
        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.e.a(i);
        ImageView a3 = this.j.a(a2);
        if (a3 != null && a3.getDrawable() != this.g) {
            return a3;
        }
        ESImageView eSImageView = new ESImageView(this.d);
        eSImageView.setDrawingCacheEnabled(true);
        eSImageView.setLayoutParams(new Gallery.LayoutParams(this.c, this.c));
        eSImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        eSImageView.setBackgroundResource(this.f);
        eSImageView.setImageDrawable(this.g);
        this.j.a(a2, eSImageView);
        return eSImageView;
    }
}
