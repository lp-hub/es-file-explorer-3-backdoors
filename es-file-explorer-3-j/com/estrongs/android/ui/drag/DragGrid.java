package com.estrongs.android.ui.drag;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.aw;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DragGrid extends FrameLayout implements o {

    /* renamed from: a, reason: collision with root package name */
    private d f1936a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1937b;
    private com.estrongs.fs.g c;
    private String d;
    private List<com.estrongs.fs.g> e;
    private boolean f;
    private boolean g;
    private boolean h;
    private ImageView i;

    public DragGrid(Context context) {
        super(context);
        this.f1937b = false;
    }

    public DragGrid(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1937b = false;
    }

    public DragGrid(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1937b = false;
    }

    public void a() {
        if (this.f1936a == null) {
            setVisibility(0);
            return;
        }
        this.e = (List) this.f1936a.d();
        if (this.d != null && this.e != null) {
            Iterator<com.estrongs.fs.g> it = this.e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (this.d.equals(it.next().getAbsolutePath())) {
                    this.f = true;
                    break;
                }
            }
        } else {
            this.f = false;
        }
        if (this.f) {
            setVisibility(4);
        } else {
            setVisibility(0);
        }
    }

    public void a(d dVar) {
        this.f1936a = dVar;
    }

    @Override // com.estrongs.android.ui.drag.o
    public void a(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        Context context = getContext();
        aj.a((Activity) context, (List<com.estrongs.fs.g>) obj, this.c, this.c instanceof com.estrongs.fs.impl.pcs.b, true, (com.estrongs.a.a.k) null, true);
        if (context instanceof FileExplorerActivity) {
            ((FileExplorerActivity) context).l();
        }
    }

    public void a(com.estrongs.fs.g gVar) {
        if (this.i == null) {
            this.i = (ImageView) findViewById(C0000R.id.view);
        }
        if (gVar == null) {
            return;
        }
        this.c = gVar;
        this.d = this.c.getAbsolutePath();
        this.f = false;
        this.g = gVar.getFileType().a();
        if (com.estrongs.android.pop.p.a() >= 16) {
            this.h = gVar.getName().startsWith(".");
        } else {
            this.h = false;
        }
        a();
    }

    @Override // com.estrongs.android.ui.drag.o
    public void b(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        a();
        this.f1937b = !this.f;
        invalidate();
    }

    @Override // com.estrongs.android.ui.drag.o
    public void c(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
    }

    @Override // com.estrongs.android.ui.drag.o
    public void d(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        this.f1937b = false;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"NewApi"})
    protected void dispatchDraw(Canvas canvas) {
        try {
            super.dispatchDraw(canvas);
            if (this.h) {
                if (this.i != null && aw.e()) {
                    this.i.setAlpha(0.5f);
                }
            } else if (this.i != null && aw.e()) {
                this.i.setAlpha(1.0f);
            }
        } catch (Throwable th) {
        }
        if (this.f1937b) {
            boolean z = this.g;
            if (this.c instanceof com.estrongs.fs.impl.pcs.b) {
                z = com.estrongs.android.ui.pcs.aw.a().c();
            }
            int argb = z ? Color.argb(80, 49, 146, 249) : Color.argb(80, 255, 0, 0);
            int save = canvas.save();
            canvas.drawColor(argb);
            canvas.restoreToCount(save);
        }
    }

    @Override // com.estrongs.android.ui.drag.o
    public boolean e(j jVar, int i, int i2, int i3, int i4, k kVar, Object obj) {
        boolean z = this.g;
        if (this.c instanceof com.estrongs.fs.impl.pcs.b) {
            z = com.estrongs.android.ui.pcs.aw.a().c();
        }
        return getVisibility() == 0 && z;
    }
}
