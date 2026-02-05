package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes.dex */
public class ReaderTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private int f718a;

    /* renamed from: b, reason: collision with root package name */
    private al f719b;
    private ak c;
    private float d;
    private float e;
    private boolean f;

    public ReaderTextView(Context context) {
        super(context);
        this.f718a = -1;
        this.f719b = null;
        this.c = null;
        this.d = 1.0f;
        this.e = 0.0f;
        this.f = true;
    }

    public ReaderTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f718a = -1;
        this.f719b = null;
        this.c = null;
        this.d = 1.0f;
        this.e = 0.0f;
        this.f = true;
    }

    public ReaderTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f718a = -1;
        this.f719b = null;
        this.c = null;
        this.d = 1.0f;
        this.e = 0.0f;
        this.f = true;
    }

    public void a() {
        this.f718a = 0;
    }

    public void a(ak akVar) {
        this.c = akVar;
    }

    public float b() {
        return this.e;
    }

    public float c() {
        return this.d;
    }

    @Override // android.widget.TextView
    public boolean getIncludeFontPadding() {
        return this.f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f718a != getBottom()) {
            this.f718a = getBottom();
            if (this.c != null) {
                this.c.a(this.f718a);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView
    public void setIncludeFontPadding(boolean z) {
        this.f = z;
        super.setIncludeFontPadding(z);
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        this.e = f;
        this.d = f2;
        super.setLineSpacing(f, f2);
    }
}
