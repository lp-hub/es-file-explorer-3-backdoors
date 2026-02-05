package com.estrongs.android.pop.view;

import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class an extends com.estrongs.android.widget.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f1313a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1314b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(FileExplorerActivity fileExplorerActivity, View view) {
        this.f1314b = fileExplorerActivity;
        this.f1313a = view;
    }

    @Override // com.estrongs.android.widget.a, android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        super.onAnimationEnd(animation);
        this.f1314b.q = false;
        ((InputMethodManager) this.f1314b.getSystemService("input_method")).hideSoftInputFromWindow(((EditText) this.f1313a.findViewById(C0000R.id.edittext_search_bar)).getWindowToken(), 0);
    }
}
