package com.estrongs.android.ui.a;

import android.content.Context;
import android.gesture.Gesture;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* loaded from: classes.dex */
public class o extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1596a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1597b = true;

    public o(Context context) {
        this.f1596a = context;
        if (com.estrongs.android.ui.guesture.b.c()) {
            return;
        }
        com.estrongs.android.ui.guesture.b.a();
    }

    private Bitmap a(Gesture gesture) {
        int a2 = com.estrongs.android.ui.d.a.a(this.f1596a, 56.0f);
        return com.estrongs.android.ui.guesture.d.a(gesture, a2, a2, com.estrongs.android.ui.d.a.a(this.f1596a, 4.0f), 1493211874);
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String getItem(int i) {
        return com.estrongs.android.ui.guesture.b.b().get(i);
    }

    public void a(boolean z) {
        this.f1597b = z;
        notifyDataSetChanged();
    }

    public boolean a() {
        return this.f1597b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> b2 = com.estrongs.android.ui.guesture.b.b();
        if (b2 == null || !a()) {
            return 0;
        }
        return b2.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1596a).inflate(C0000R.layout.item_gesture_manage, (ViewGroup) null);
        }
        String item = getItem(i);
        ((ImageView) view.findViewById(C0000R.id.thumbnails)).setImageBitmap(a(com.estrongs.android.ui.guesture.b.c(item)));
        ((TextView) view.findViewById(C0000R.id.name)).setText(com.estrongs.android.ui.guesture.d.a(this.f1596a, item));
        ((Button) view.findViewById(C0000R.id.delete)).setOnClickListener(new p(this, i));
        ((Button) view.findViewById(C0000R.id.edit)).setOnClickListener(new q(this, i));
        return view;
    }
}
