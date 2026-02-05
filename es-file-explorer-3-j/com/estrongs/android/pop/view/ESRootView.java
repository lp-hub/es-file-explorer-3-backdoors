package com.estrongs.android.pop.view;

import android.content.Context;
import android.gesture.Gesture;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import com.estrongs.android.ui.guesture.ESGestureCtrl;

/* loaded from: classes.dex */
public class ESRootView extends ESGestureCtrl {
    public ESRootView(Context context) {
        super(context);
    }

    public ESRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ESRootView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.estrongs.android.ui.guesture.ESGestureCtrl
    public void a(Gesture gesture) {
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().a(gesture);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        try {
            super.draw(canvas);
        } catch (Throwable th) {
            th.printStackTrace();
            Log.w("ESRootView", "ESRootView.draw() catchs " + th.getMessage());
        }
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().V();
        }
    }
}
