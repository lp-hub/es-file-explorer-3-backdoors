package com.estrongs.android.ui.g;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.ui.theme.al;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2227a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f2227a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Map map;
        String str;
        Context context;
        Map map2;
        String str2;
        Map map3;
        Map map4;
        String str3;
        Context context2;
        Map map5;
        String str4;
        String str5;
        map = this.f2227a.g;
        str = this.f2227a.e;
        ImageView imageView = (ImageView) map.get(str);
        context = this.f2227a.f2225a;
        al a2 = al.a(context);
        map2 = this.f2227a.h;
        str2 = this.f2227a.e;
        imageView.setImageDrawable(a2.a(((Integer) map2.get(str2)).intValue()));
        f fVar = this.f2227a;
        map3 = this.f2227a.f;
        fVar.e = (String) map3.get(view);
        map4 = this.f2227a.g;
        str3 = this.f2227a.e;
        ImageView imageView2 = (ImageView) map4.get(str3);
        context2 = this.f2227a.f2225a;
        al a3 = al.a(context2);
        map5 = this.f2227a.i;
        str4 = this.f2227a.e;
        imageView2.setImageDrawable(a3.a(((Integer) map5.get(str4)).intValue()));
        this.f2227a.dismiss();
        f fVar2 = this.f2227a;
        str5 = this.f2227a.e;
        fVar2.a(str5);
    }
}
