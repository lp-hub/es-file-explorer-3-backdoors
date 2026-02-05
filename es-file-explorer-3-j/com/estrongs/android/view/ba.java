package com.estrongs.android.view;

import android.view.View;
import com.estrongs.android.util.TypedMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ba implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2760a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(ar arVar) {
        this.f2760a = arVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TypedMap typedMap = new TypedMap();
        typedMap.putAll(this.f2760a.W);
        typedMap.put("fileSystemSearch", true);
        this.f2760a.a(this.f2760a.c(), typedMap);
    }
}
