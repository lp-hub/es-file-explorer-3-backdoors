package com.estrongs.android.ui.view;

import android.view.KeyEvent;
import android.view.View;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ IndicatorView f2602a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(IndicatorView indicatorView) {
        this.f2602a = indicatorView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        int i2;
        List list;
        int i3;
        List list2;
        if (this.f2602a.isFocused() && keyEvent.getAction() == 0) {
            if (i == 21) {
                i3 = this.f2602a.f;
                int i4 = i3 - 1;
                if (i4 >= 0) {
                    list2 = this.f2602a.d;
                    if (i4 < list2.size()) {
                        this.f2602a.f = i4;
                    }
                }
                this.f2602a.invalidate();
                return true;
            }
            if (i == 22) {
                i2 = this.f2602a.f;
                int i5 = i2 + 1;
                if (i5 >= 0) {
                    list = this.f2602a.d;
                    if (i5 < list.size()) {
                        this.f2602a.f = i5;
                    }
                }
                this.f2602a.invalidate();
                return true;
            }
        }
        return false;
    }
}
