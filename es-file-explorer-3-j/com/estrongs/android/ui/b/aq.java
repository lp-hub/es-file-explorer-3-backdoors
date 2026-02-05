package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class aq {

    /* renamed from: a, reason: collision with root package name */
    private ag f1634a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1635b;

    public aq(Context context) {
        this.f1635b = context;
        this.f1634a = new ag(this.f1635b);
    }

    public ag a() {
        return this.f1634a;
    }

    public aq a(int i) {
        this.f1634a.setTitle(i);
        return this;
    }

    public aq a(int i, int i2, DialogInterface.OnClickListener onClickListener) {
        return a(this.f1635b.getResources().getStringArray(i), i2, onClickListener);
    }

    public aq a(int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setSingleButton(this.f1635b.getResources().getString(i), onClickListener);
        return this;
    }

    public aq a(DialogInterface.OnCancelListener onCancelListener) {
        this.f1634a.setOnCancelListener(onCancelListener);
        return this;
    }

    public aq a(DialogInterface.OnDismissListener onDismissListener) {
        this.f1634a.setOnDismissListener(onDismissListener);
        return this;
    }

    public aq a(DialogInterface.OnKeyListener onKeyListener) {
        this.f1634a.setOnKeyListener(onKeyListener);
        return this;
    }

    public aq a(View view) {
        this.f1634a.setContentView(view);
        return this;
    }

    public aq a(View view, FrameLayout.LayoutParams layoutParams) {
        this.f1634a.setContentView(view, layoutParams);
        return this;
    }

    public aq a(CharSequence charSequence) {
        this.f1634a.setTitle(charSequence);
        return this;
    }

    public aq a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setSingleButton(charSequence, onClickListener);
        return this;
    }

    public aq a(boolean z) {
        this.f1634a.setItemsEnable(z);
        return this;
    }

    public aq a(Drawable[] drawableArr, CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setItems(drawableArr, charSequenceArr, i, onClickListener);
        return this;
    }

    public aq a(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setItems(charSequenceArr, i, onClickListener);
        return this;
    }

    public ag b() {
        this.f1634a.show();
        return this.f1634a;
    }

    public aq b(int i) {
        this.f1634a.setMessage(this.f1635b.getString(i));
        return this;
    }

    public aq b(int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setConfirmButton(this.f1635b.getResources().getString(i), onClickListener);
        return this;
    }

    public aq b(CharSequence charSequence) {
        this.f1634a.setMessage(charSequence);
        return this;
    }

    public aq b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setConfirmButton(charSequence, onClickListener);
        return this;
    }

    public aq b(boolean z) {
        this.f1634a.setCancelable(z);
        return this;
    }

    public aq c(int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setCancelButton(this.f1635b.getResources().getString(i), onClickListener);
        return this;
    }

    public aq c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setCancelButton(charSequence, onClickListener);
        return this;
    }

    public aq c(boolean z) {
        this.f1634a.setSelectable(z);
        return this;
    }

    public aq d(int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setLeftButton(this.f1635b.getResources().getString(i), onClickListener);
        return this;
    }

    public aq e(int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setMiddleButton(this.f1635b.getResources().getString(i), onClickListener);
        return this;
    }

    public aq f(int i, DialogInterface.OnClickListener onClickListener) {
        this.f1634a.setRightButton(this.f1635b.getResources().getString(i), onClickListener);
        return this;
    }
}
