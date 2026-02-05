package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class PopMultiWindowGrid extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private Context f2584a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f2585b;
    private TextView c;
    private ImageView d;
    private Handler e;
    private int f;

    public PopMultiWindowGrid(Context context) {
        super(context);
        this.f2584a = context;
        a();
    }

    public PopMultiWindowGrid(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2584a = context;
        a();
    }

    @SuppressLint({"NewApi"})
    public PopMultiWindowGrid(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2584a = context;
        a();
    }

    private void a() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2584a).inflate(C0000R.layout.grid_muti_window, (ViewGroup) null);
        addView(inflate);
        this.f2585b = (ImageView) inflate.findViewById(C0000R.id.image_grid_muti_window);
        this.c = (TextView) inflate.findViewById(C0000R.id.text_grid_muti_window);
        this.d = (ImageView) inflate.findViewById(C0000R.id.grid_remove_muti_window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        Message message = new Message();
        message.what = i;
        message.arg1 = i2;
        if (this.e != null) {
            this.e.sendMessage(message);
        }
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(Handler handler) {
        this.e = handler;
    }

    public void b(int i) {
        FileExplorerActivity E = FileExplorerActivity.E();
        if (this.f >= com.estrongs.android.ui.d.e.c()) {
            return;
        }
        com.estrongs.android.ui.d.d c = com.estrongs.android.ui.d.e.c(this.f);
        if (E != null) {
            System.currentTimeMillis();
            Bitmap h = E.h(this.f);
            if (h != null) {
                this.f2585b.setImageBitmap(h);
            }
        }
        this.c.setText(c.b(this.f2584a));
        int a2 = com.estrongs.android.ui.d.a.a(this.f2584a, 4.0f);
        if (this.f != com.estrongs.android.ui.d.e.a()) {
            this.f2585b.setBackgroundResource(C0000R.drawable.blank);
            this.f2585b.setPadding(a2, a2, a2, a2);
        } else {
            this.f2585b.setBackgroundResource(C0000R.drawable.multiwindow_current_bg);
            this.f2585b.setPadding(a2, a2, a2, a2);
        }
        this.f2585b.setOnClickListener(new at(this));
        this.f2585b.setOnTouchListener(new au(this));
        if (com.estrongs.android.ui.d.e.c() <= 1) {
            this.d.setVisibility(4);
        } else {
            this.d.setVisibility(0);
            this.d.setOnClickListener(new av(this));
        }
    }
}
