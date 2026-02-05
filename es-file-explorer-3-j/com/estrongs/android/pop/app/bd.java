package com.estrongs.android.pop.app;

import android.widget.CompoundButton;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bd implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.a.a f522a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.a.a f523b;
    final /* synthetic */ GestureManageActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(GestureManageActivity gestureManageActivity, com.estrongs.android.view.a.a aVar, com.estrongs.android.view.a.a aVar2) {
        this.c = gestureManageActivity;
        this.f522a = aVar;
        this.f523b = aVar2;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        TextView textView;
        com.estrongs.android.ui.a.o oVar;
        com.estrongs.android.pop.q qVar;
        TextView textView2;
        if (z) {
            textView2 = this.c.d;
            textView2.setText(C0000R.string.gesture_manage_empty);
        } else {
            textView = this.c.d;
            textView.setText(C0000R.string.gesture_disable_empty_text);
        }
        this.f522a.setEnabled(z);
        this.f523b.setEnabled(z);
        oVar = this.c.f350b;
        oVar.a(z);
        qVar = this.c.c;
        qVar.n(z);
        com.estrongs.android.ui.guesture.b.f2234a = z;
        try {
            FileExplorerActivity.E().I.postInvalidate();
        } catch (Exception e) {
        }
    }
}
