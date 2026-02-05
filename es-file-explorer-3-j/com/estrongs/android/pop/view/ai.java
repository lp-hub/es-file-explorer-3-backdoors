package com.estrongs.android.pop.view;

import android.view.View;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai extends com.estrongs.android.widget.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f1303a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1304b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(FileExplorerActivity fileExplorerActivity, View view) {
        this.f1304b = fileExplorerActivity;
        this.f1303a = view;
    }

    @Override // com.estrongs.android.widget.a, android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        EditText editText;
        super.onAnimationEnd(animation);
        ((EditText) this.f1303a.findViewById(C0000R.id.edittext_search_bar)).requestFocus();
        editText = this.f1304b.aw;
        editText.performClick();
        ((InputMethodManager) this.f1304b.getSystemService("input_method")).toggleSoftInput(0, 2);
    }
}
