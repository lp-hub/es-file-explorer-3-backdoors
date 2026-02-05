package com.estrongs.android.pop.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class hu extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    int f884a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ RecommItemDetailAcitivity f885b;
    private Context c;

    public hu(RecommItemDetailAcitivity recommItemDetailAcitivity, Context context) {
        this.f885b = recommItemDetailAcitivity;
        this.c = context;
        this.f884a = recommItemDetailAcitivity.obtainStyledAttributes(com.estrongs.android.pop.s.f1167a).getResourceId(0, 0);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        com.estrongs.android.pop.view.utils.v vVar;
        vVar = this.f885b.d;
        return vVar.l.length;
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
        com.estrongs.android.pop.view.utils.v vVar;
        ESImageView eSImageView = new ESImageView(this.c);
        com.estrongs.android.pop.view.utils.n b2 = com.estrongs.android.pop.view.utils.n.b();
        vVar = this.f885b.d;
        Bitmap e = b2.e(vVar, i);
        if (e == null) {
            eSImageView.setImageResource(C0000R.drawable.recommendation_pic_placeholder);
        } else {
            eSImageView.setImageBitmap(e);
        }
        eSImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        eSImageView.setLayoutParams(new Gallery.LayoutParams(FTPReply.FILE_STATUS_OK, 250));
        eSImageView.setBackgroundResource(this.f884a);
        return eSImageView;
    }
}
