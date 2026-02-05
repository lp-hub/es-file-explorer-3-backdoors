package com.estrongs.android.view;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class cq {
    protected Activity ad;
    protected View ae;
    protected LayoutInflater af;
    protected cr ag;

    public cq(Activity activity) {
        this(activity, null, true);
    }

    public cq(Activity activity, ViewGroup viewGroup, boolean z) {
        this.ad = activity;
        this.af = com.estrongs.android.pop.esclasses.e.a(activity);
        if (z) {
            this.ae = this.af.inflate(a(), viewGroup);
            return;
        }
        this.ae = viewGroup.findViewById(a());
        if (this.ae == null) {
            this.ae = viewGroup;
        }
    }

    protected abstract int a();

    public void a(Intent intent) {
        try {
            this.ad.startActivity(intent);
        } catch (Exception e) {
            com.estrongs.android.ui.view.z.a(this.ad, "Failed to start the activity: " + intent, 1).show();
        }
    }

    public void a(cr crVar) {
        this.ag = crVar;
    }

    public void a(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            b(iArr[i], iArr2[i]);
        }
    }

    public View an() {
        return this.ae;
    }

    public void b(int i, int i2) {
        TextView o = o(i);
        if (o != null) {
            o.setText(m(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View l(int i) {
        return this.ae.findViewById(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String m(int i) {
        return this.ad.getResources().getString(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String n(int i) {
        return this.ad.getText(i).toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TextView o(int i) {
        return (TextView) l(i);
    }
}
