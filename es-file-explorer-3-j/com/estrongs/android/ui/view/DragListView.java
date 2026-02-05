package com.estrongs.android.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.esclasses.AbsDragListView;

/* loaded from: classes.dex */
public class DragListView extends AbsDragListView {
    private PopAudioPlayer c;

    public DragListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = (PopAudioPlayer) context;
    }

    @Override // com.estrongs.android.pop.esclasses.AbsDragListView
    public void a() {
        super.a();
        ((v) getAdapter()).b(-1);
        ((v) getAdapter()).notifyDataSetChanged();
    }

    @Override // com.estrongs.android.pop.esclasses.AbsDragListView
    public void a(int i) {
        super.a(i);
        b(i);
        this.f1117a = this.f1118b;
        ((v) getAdapter()).b(this.f1117a);
    }

    @Override // com.estrongs.android.pop.esclasses.AbsDragListView
    public void a(int i, int i2) {
        this.c.b(i, i2);
    }

    @Override // com.estrongs.android.pop.esclasses.AbsDragListView
    public void a(Bitmap bitmap, int i) {
        super.a(bitmap, i);
        ((v) getAdapter()).b(b());
        ((v) getAdapter()).notifyDataSetChanged();
    }

    @Override // com.estrongs.android.pop.esclasses.AbsDragListView
    public int c() {
        return C0000R.id.drag_list_item_image;
    }

    @Override // com.estrongs.android.pop.esclasses.AbsDragListView
    public boolean d() {
        return !((v) getAdapter()).b();
    }
}
