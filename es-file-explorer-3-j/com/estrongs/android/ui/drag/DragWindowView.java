package com.estrongs.android.ui.drag;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ak;
import java.util.List;

/* loaded from: classes.dex */
public class DragWindowView extends LinearLayout implements o {

    /* renamed from: a, reason: collision with root package name */
    private Context f1941a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f1942b;
    private ImageView c;
    private TextView d;
    private FileExplorerActivity e;
    private int f;

    public DragWindowView(Context context) {
        this(context, null);
    }

    public DragWindowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public DragWindowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f1941a = context;
        b();
    }

    private boolean a(com.estrongs.android.ui.d.d dVar) {
        String b2 = dVar.b();
        if (b2 == null) {
            return false;
        }
        return ak.aO(b2) || (ak.aP(b2) && !ak.aU(b2)) || (ak.aq(b2) && ak.aa(b2) != null);
    }

    private void b() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1941a).inflate(C0000R.layout.drag_window_grid, (ViewGroup) null);
        addView(inflate);
        this.f1942b = (TextView) inflate.findViewById(C0000R.id.drag_copy_flag);
        this.f1942b.setText(C0000R.string.action_copy);
        this.c = (ImageView) inflate.findViewById(C0000R.id.drag_image);
        this.d = (TextView) inflate.findViewById(C0000R.id.drag_path);
    }

    public void a() {
        Bitmap h;
        if (this.f >= com.estrongs.android.ui.d.e.c()) {
            return;
        }
        com.estrongs.android.ui.d.d c = com.estrongs.android.ui.d.e.c(this.f);
        this.f1942b.setVisibility(4);
        if (this.e != null && (h = this.e.h(this.f)) != null) {
            this.c.setImageBitmap(h);
        }
        int paddingTop = this.c.getPaddingTop();
        int paddingBottom = this.c.getPaddingBottom();
        int paddingLeft = this.c.getPaddingLeft();
        int paddingRight = this.c.getPaddingRight();
        this.c.setBackgroundDrawable(null);
        this.c.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
        this.d.setText(c.a(this.f1941a));
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(FileExplorerActivity fileExplorerActivity) {
        this.e = fileExplorerActivity;
    }

    @Override // com.estrongs.android.ui.drag.o
    public void a(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        String b2 = com.estrongs.android.ui.d.e.b().b();
        if (b2 == null) {
            return;
        }
        com.estrongs.android.ui.d.d c = com.estrongs.android.ui.d.e.c(this.f);
        String b3 = c.b();
        if (b2.equals(c.b())) {
            return;
        }
        aj.a((Activity) getContext(), (List<com.estrongs.fs.g>) obj, com.estrongs.fs.d.m(c.b()), true, true, (com.estrongs.a.a.k) new m(this, b3), true);
    }

    @Override // com.estrongs.android.ui.drag.o
    public void b(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        com.estrongs.android.ui.d.d c = com.estrongs.android.ui.d.e.c(this.f);
        int paddingTop = this.c.getPaddingTop();
        int paddingBottom = this.c.getPaddingBottom();
        int paddingLeft = this.c.getPaddingLeft();
        int paddingRight = this.c.getPaddingRight();
        if (!a(c)) {
            this.c.setBackgroundResource(C0000R.drawable.drag_multiwindow_unavailable_bg);
            this.c.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
            return;
        }
        this.c.setBackgroundResource(C0000R.drawable.multiwindow_current_bg);
        this.c.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
        String b2 = com.estrongs.android.ui.d.e.b().b();
        if (b2 == null || b2.equals(c.b())) {
            return;
        }
        this.f1942b.setVisibility(0);
    }

    @Override // com.estrongs.android.ui.drag.o
    public void c(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
    }

    @Override // com.estrongs.android.ui.drag.o
    public void d(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        int paddingTop = this.c.getPaddingTop();
        int paddingBottom = this.c.getPaddingBottom();
        int paddingLeft = this.c.getPaddingLeft();
        int paddingRight = this.c.getPaddingRight();
        this.c.setBackgroundDrawable(null);
        this.c.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
        this.f1942b.setVisibility(4);
    }

    @Override // com.estrongs.android.ui.drag.o
    public boolean e(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        return a(com.estrongs.android.ui.d.e.c(this.f));
    }
}
