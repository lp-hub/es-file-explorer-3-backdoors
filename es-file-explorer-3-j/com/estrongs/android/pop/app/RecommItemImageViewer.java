package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.widget.RealViewSwitcher;

/* loaded from: classes.dex */
public class RecommItemImageViewer extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    protected RealViewSwitcher f377a;
    private com.estrongs.android.pop.view.utils.v c;
    private int d;
    private int e;
    private Handler f;
    private int i;
    private SparseArray<ImageView> g = new SparseArray<>();
    private SparseArray<ImageView> h = new SparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    protected ViewGroup.LayoutParams f378b = new ViewGroup.LayoutParams(-1, -1);
    private Handler j = new hw(this);

    private void a() {
        for (int i = 0; i < this.c.n.length; i++) {
            if (this.c.n[i] != null) {
                this.c.n[i].recycle();
                this.c.n[i] = null;
            }
        }
    }

    public void a(Object obj) {
        Integer num = (Integer) ((com.estrongs.android.util.x) obj).e;
        this.g.get(num.intValue()).setImageBitmap(com.estrongs.android.pop.view.utils.n.b().d(this.c, num.intValue()));
        this.c.o[num.intValue()] = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.d = getIntent().getIntExtra("position", -1);
        this.e = getIntent().getIntExtra("index", -1);
        this.c = com.estrongs.android.pop.view.utils.n.b().d()[this.d];
        this.i = this.e;
        setContentView(C0000R.layout.recomm_item_image_viewer);
        this.f = com.estrongs.android.pop.view.utils.n.b().a(this.j);
        LinearLayout linearLayout = (LinearLayout) findViewById(C0000R.id.indicator_container);
        for (int i = 0; i < this.c.n.length; i++) {
            ImageView eSImageView = new ESImageView(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(15, 15);
            if (i >= 1) {
                layoutParams.leftMargin = 6;
            }
            eSImageView.setLayoutParams(layoutParams);
            if (i == this.i) {
                eSImageView.setImageResource(C0000R.drawable.dot_selected);
            } else {
                eSImageView.setImageResource(C0000R.drawable.dot_unselected);
            }
            this.h.put(i, eSImageView);
            linearLayout.addView(eSImageView);
        }
        this.f377a = (RealViewSwitcher) findViewById(C0000R.id.viewswitcher);
        this.f377a.c(true);
        this.f377a.a(new hv(this));
        for (int i2 = 0; i2 < this.c.n.length; i2++) {
            Bitmap d = com.estrongs.android.pop.view.utils.n.b().d(this.c, i2);
            ESImageView eSImageView2 = new ESImageView(this);
            eSImageView2.setLayoutParams(this.f378b);
            if (d == null) {
                eSImageView2.setImageResource(C0000R.drawable.recommendation_pic_placeholder);
            } else {
                eSImageView2.setImageBitmap(d);
            }
            this.g.put(i2, eSImageView2);
            this.f377a.addView(eSImageView2);
        }
        this.f377a.a(this.i);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            a();
            this.f377a.removeAllViews();
            com.estrongs.android.pop.view.utils.n.b().a(this.f);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        try {
            super.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }
}
