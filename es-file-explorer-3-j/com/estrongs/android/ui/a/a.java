package com.estrongs.android.ui.a;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.CompoundButton;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    Drawable f1487a;

    /* renamed from: b, reason: collision with root package name */
    String f1488b;
    public String c;
    public View.OnClickListener d;
    public boolean e;
    public boolean f;
    public CompoundButton.OnCheckedChangeListener g;
    private String h;

    public a(Drawable drawable, String str, View.OnClickListener onClickListener) {
        this(drawable, str, onClickListener, (String) null);
    }

    public a(Drawable drawable, String str, View.OnClickListener onClickListener, String str2) {
        this.e = true;
        this.f = false;
        this.f1487a = drawable;
        this.f1488b = str;
        this.d = onClickListener;
        this.h = str2;
    }

    public a(Drawable drawable, String str, String str2, View.OnClickListener onClickListener) {
        this(drawable, str, onClickListener, (String) null);
        this.c = str2;
    }

    public a a(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.g = onCheckedChangeListener;
        return this;
    }

    public a a(String str) {
        this.h = str;
        return this;
    }

    public a a(boolean z) {
        this.f = z;
        return this;
    }

    public boolean a() {
        return true;
    }

    public String b() {
        return this.h;
    }
}
