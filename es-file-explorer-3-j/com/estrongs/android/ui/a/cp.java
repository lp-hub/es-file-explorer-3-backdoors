package com.estrongs.android.ui.a;

import android.os.Handler;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.e.gq;
import com.estrongs.android.ui.view.PopMultiWindowGrid;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class cp {

    /* renamed from: a, reason: collision with root package name */
    private View f1569a;

    /* renamed from: b, reason: collision with root package name */
    private List<PopMultiWindowGrid> f1570b;
    private boolean c;
    private FileExplorerActivity d;
    private Handler e;
    private boolean f = false;

    public cp(FileExplorerActivity fileExplorerActivity, View view, Handler handler) {
        this.d = fileExplorerActivity;
        this.f1569a = view;
        this.e = handler;
        this.c = fileExplorerActivity.getResources().getConfiguration().orientation == 1;
        this.f1570b = new ArrayList();
        if (this.f1569a != null) {
            this.f1569a.setOnClickListener(new cq(this));
        }
        try {
            d();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void a(PopMultiWindowGrid popMultiWindowGrid, int i) {
        if (popMultiWindowGrid == null) {
            return;
        }
        this.f1570b.add(popMultiWindowGrid);
        popMultiWindowGrid.a(i);
    }

    private void d() {
        int i = 0;
        if (this.c) {
            LinearLayout[] linearLayoutArr = {(LinearLayout) this.f1569a.findViewById(C0000R.id.row1), (LinearLayout) this.f1569a.findViewById(C0000R.id.row2), (LinearLayout) this.f1569a.findViewById(C0000R.id.row3), (LinearLayout) this.f1569a.findViewById(C0000R.id.row4)};
            while (i < linearLayoutArr.length) {
                a((PopMultiWindowGrid) linearLayoutArr[i].findViewById(C0000R.id.grid1), (i * 2) + 0);
                a((PopMultiWindowGrid) linearLayoutArr[i].findViewById(C0000R.id.grid2), (i * 2) + 1);
                i++;
            }
        } else {
            LinearLayout[] linearLayoutArr2 = {(LinearLayout) this.f1569a.findViewById(C0000R.id.row1), (LinearLayout) this.f1569a.findViewById(C0000R.id.row2)};
            while (i < linearLayoutArr2.length) {
                a((PopMultiWindowGrid) linearLayoutArr2[i].findViewById(C0000R.id.grid1), (i * 4) + 0);
                a((PopMultiWindowGrid) linearLayoutArr2[i].findViewById(C0000R.id.grid2), (i * 4) + 1);
                a((PopMultiWindowGrid) linearLayoutArr2[i].findViewById(C0000R.id.grid3), (i * 4) + 2);
                a((PopMultiWindowGrid) linearLayoutArr2[i].findViewById(C0000R.id.grid4), (i * 4) + 3);
                i++;
            }
        }
        cr crVar = new cr(this);
        Iterator<PopMultiWindowGrid> it = this.f1570b.iterator();
        while (it.hasNext()) {
            it.next().a(crVar);
        }
        e();
    }

    private void e() {
        gq gqVar = new gq(this.d, this.c);
        ((LinearLayout) this.f1569a.findViewById(C0000R.id.container_buttons)).addView(gqVar.a(), new LinearLayout.LayoutParams(-1, -1));
        gqVar.a(C0000R.string.action_default, C0000R.drawable.toolbar_defaultwindow, new cs(this));
        gqVar.a(C0000R.string.new_navi_close, C0000R.drawable.toolbar_close, new ct(this));
    }

    public void a(boolean z) {
        this.f1569a.setVisibility(0);
        this.f = true;
        if (z) {
            TranslateAnimation translateAnimation = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
            translateAnimation.setDuration(250L);
            this.f1569a.setAnimation(translateAnimation);
            translateAnimation.start();
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.5f, 1.0f, 1.5f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(250L);
        this.f1569a.setAnimation(scaleAnimation);
        scaleAnimation.start();
    }

    public boolean a() {
        return this.f;
    }

    public void b() {
        try {
            int c = com.estrongs.android.ui.d.e.c();
            int a2 = com.estrongs.android.ui.d.e.a();
            for (int i = 0; i < c; i++) {
                PopMultiWindowGrid popMultiWindowGrid = this.f1570b.get(i);
                popMultiWindowGrid.setVisibility(0);
                popMultiWindowGrid.b(a2);
            }
            while (c < this.f1570b.size()) {
                this.f1570b.get(c).setVisibility(4);
                c++;
            }
        } catch (IndexOutOfBoundsException e) {
            e.printStackTrace();
        }
    }

    public void c() {
        this.f1569a.setVisibility(8);
        this.f = false;
    }
}
