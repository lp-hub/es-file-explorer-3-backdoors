package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* loaded from: classes.dex */
final class bs implements DialogInterface.OnKeyListener {
    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        dialogInterface.dismiss();
        return false;
    }
}
