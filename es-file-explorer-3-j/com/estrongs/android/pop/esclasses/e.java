package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class e extends LayoutInflater {

    /* renamed from: a, reason: collision with root package name */
    private LayoutInflater f1134a;

    public e(LayoutInflater layoutInflater, Context context) {
        super(layoutInflater, context);
        this.f1134a = layoutInflater;
    }

    public static LayoutInflater a(Context context) {
        return new e(LayoutInflater.from(context), context);
    }

    @Override // android.view.LayoutInflater
    public LayoutInflater cloneInContext(Context context) {
        return new e(this, context);
    }

    @Override // android.view.LayoutInflater
    public View inflate(int i, ViewGroup viewGroup, boolean z) {
        View inflate = this.f1134a.inflate(i, viewGroup, z);
        if (getContext() instanceof ESActivity) {
            new f((ESActivity) getContext()).a(i, inflate);
        } else if (getContext() instanceof ESPreferenceActivity) {
            new f((ESPreferenceActivity) getContext()).a(i, inflate);
        }
        return inflate;
    }
}
