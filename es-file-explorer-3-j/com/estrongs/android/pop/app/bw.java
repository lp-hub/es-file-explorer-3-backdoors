package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.text.DateFormat;
import java.util.Date;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f546a;

    /* renamed from: b, reason: collision with root package name */
    private Bitmap f547b;
    private com.estrongs.android.util.an c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(ImageCommentActivity imageCommentActivity) {
        String[] d;
        this.f546a = imageCommentActivity;
        DateFormat H = com.estrongs.android.pop.q.a(this.f546a).H();
        d = this.f546a.d();
        this.c = new com.estrongs.android.util.an(H, d);
    }

    private int a() {
        return this.f546a.getResources().getDisplayMetrics().widthPixels - com.estrongs.android.ui.d.a.a(this.f546a, 15.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, Bitmap bitmap) {
        if (bitmap != null) {
            view.findViewById(C0000R.id.image_load_progress).setVisibility(8);
            int min = Math.min(bitmap.getWidth(), a());
            ImageView imageView = (ImageView) view.findViewById(C0000R.id.image);
            imageView.setLayoutParams(new LinearLayout.LayoutParams(min, min));
            imageView.setImageBitmap(bitmap);
            imageView.setVisibility(0);
            imageView.setOnClickListener(new cb(this));
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        LinkedList linkedList;
        linkedList = this.f546a.f356b;
        return linkedList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        LinkedList linkedList;
        linkedList = this.f546a.f356b;
        return linkedList.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View getView(int i, View view, ViewGroup viewGroup) {
        LinkedList linkedList;
        View view2;
        LayoutInflater layoutInflater;
        LayoutInflater layoutInflater2;
        com.estrongs.android.util.n nVar;
        String str;
        com.estrongs.android.util.n nVar2;
        if (i != 0) {
            linkedList = this.f546a.f356b;
            Object obj = linkedList.get(i);
            if (!(obj instanceof com.gmail.yuyang226.flickr.a.a.a)) {
                view2 = this.f546a.i;
                if (obj == view2) {
                    return (View) obj;
                }
                return null;
            }
            com.gmail.yuyang226.flickr.a.a.a aVar = (com.gmail.yuyang226.flickr.a.a.a) obj;
            layoutInflater = this.f546a.c;
            View inflate = layoutInflater.inflate(C0000R.layout.pic_comment_item, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(C0000R.id.author);
            TextView textView2 = (TextView) inflate.findViewById(C0000R.id.date);
            TextView textView3 = (TextView) inflate.findViewById(C0000R.id.comment);
            textView.setText(aVar.a());
            textView2.setText(this.c.a(aVar.b()));
            textView3.setText(aVar.c());
            return inflate;
        }
        layoutInflater2 = this.f546a.c;
        View inflate2 = layoutInflater2.inflate(C0000R.layout.pic_image, (ViewGroup) null);
        if (this.f546a.getIntent().getBooleanExtra("is_dir", false)) {
            ((ImageView) inflate2.findViewById(C0000R.id.image)).setBackgroundResource(C0000R.drawable.app_pic_folder_bg);
        }
        TextView textView4 = (TextView) inflate2.findViewById(C0000R.id.title);
        TextView textView5 = (TextView) inflate2.findViewById(C0000R.id.date);
        TextView textView6 = (TextView) inflate2.findViewById(C0000R.id.desc);
        if (this.f547b == null || this.f547b.isRecycled()) {
            nVar = this.f546a.f;
            if (nVar == null && com.estrongs.a.b.a.a(10).indexOf("makeAndAddView") >= 0) {
                com.estrongs.fs.d a2 = com.estrongs.fs.d.a(this.f546a);
                str = this.f546a.h;
                com.estrongs.android.pop.app.imageviewer.gallery.c cVar = new com.estrongs.android.pop.app.imageviewer.gallery.c((com.estrongs.android.pop.app.imageviewer.gallery.f) null, a2, str);
                this.f546a.f = new bx(this, "PicComment-ImageLoader", textView4, textView5, textView6, cVar, inflate2);
                nVar2 = this.f546a.f;
                nVar2.start();
                if (this.f546a.f355a != null) {
                    return inflate2;
                }
                textView4.setText(this.f546a.f355a.name);
                if (this.f546a.f355a.lastModifiedTime > 0) {
                    long j = this.f546a.f355a.lastModifiedTime;
                    if (j > 0) {
                        textView5.setText(this.c.a(new Date(j)));
                    }
                } else {
                    textView5.setText((CharSequence) null);
                }
                ((TextView) this.f546a.findViewById(C0000R.id.username)).setText(this.f546a.f355a.ownerUsername);
                if (this.f546a.f355a.description == null || "".equals(this.f546a.f355a.description)) {
                    textView6.setVisibility(8);
                    return inflate2;
                }
                textView6.setVisibility(0);
                textView6.setText(this.f546a.f355a.description);
                return inflate2;
            }
        }
        a(inflate2, this.f547b);
        if (this.f546a.f355a != null) {
        }
    }
}
