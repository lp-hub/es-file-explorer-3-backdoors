package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bu extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    ImageViewTouch f989a;

    /* renamed from: b, reason: collision with root package name */
    View f990b;
    View c;
    final /* synthetic */ ViewImage21 d;
    private com.estrongs.android.b.a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bu(ViewImage21 viewImage21, Context context) {
        super(context);
        this.d = viewImage21;
        View inflate = viewImage21.j.inflate(C0000R.layout.image_view_container, this);
        this.f989a = (ImageViewTouch) inflate.findViewById(C0000R.id.image_view_touch);
        this.f990b = inflate.findViewById(C0000R.id.image_load_progress);
        this.c = inflate.findViewById(C0000R.id.image_load_error);
    }

    private void a(View view, int i) {
        if (view != null) {
            view.setVisibility(i);
        }
    }

    public com.estrongs.android.b.a a() {
        return this.e;
    }

    public void a(com.estrongs.android.b.a aVar) {
        this.e = aVar;
    }

    public void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        if (com.estrongs.android.util.aw.a("load-progress::" + eVar.d(), getTag())) {
            return;
        }
        a(this.f989a, 8);
        a(this.f990b, 0);
        a(this.c, 8);
        TextView textView = (TextView) this.f990b.findViewById(C0000R.id.message);
        if (textView != null) {
            textView.setText(com.estrongs.android.util.ak.bv(eVar.d()));
        }
        setTag("load-progress::" + eVar.d());
    }

    public void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar, al alVar) {
        if (com.estrongs.android.util.aw.a("load-sucess::" + eVar.d(), getTag())) {
        }
        a(this.f989a, 0);
        a(this.f990b, 8);
        a(this.c, 8);
        this.f989a.a(alVar, false);
        setTag("load-sucess::" + eVar.d());
    }

    public void b(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        if (com.estrongs.android.util.aw.a("load-error::" + eVar.d(), getTag())) {
            return;
        }
        a(this.f989a, 8);
        a(this.f990b, 8);
        a(this.c, 0);
        setTag("load-error::" + eVar.d());
    }
}
