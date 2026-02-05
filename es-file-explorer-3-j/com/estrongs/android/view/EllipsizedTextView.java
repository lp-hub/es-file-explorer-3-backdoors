package com.estrongs.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class EllipsizedTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private static final Pattern f2718a = Pattern.compile("[\\.,…;\\:\\s]*$", 32);

    /* renamed from: b, reason: collision with root package name */
    private boolean f2719b;
    private boolean c;
    private boolean d;
    private String e;
    private int f;
    private float g;
    private float h;
    private TextPaint i;

    public EllipsizedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = null;
    }

    public EllipsizedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = null;
    }

    private Layout a(String str) {
        return new StaticLayout(str, getPaint(), (getWidth() - getPaddingLeft()) - getPaddingRight(), Layout.Alignment.ALIGN_NORMAL, this.g, this.h, false);
    }

    private CharSequence b(CharSequence charSequence) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 14) {
            this.c = false;
            return charSequence;
        }
        String obj = charSequence.toString();
        try {
            Layout a2 = a(obj);
            int c = c();
            if (c == 0) {
                return obj;
            }
            if (a2.getLineCount() > c) {
                String trim = obj.substring(0, a2.getLineEnd(c - 1)).trim();
                while (a(trim + "…").getLineCount() > c) {
                    trim = trim.substring(0, trim.length() - 1);
                }
                obj = f2718a.matcher(trim).replaceFirst("") + "…";
                z = true;
            }
            if (z != this.f2719b) {
                this.f2719b = z;
            }
            return obj;
        } catch (Error e) {
            return charSequence;
        } catch (Exception e2) {
            e2.printStackTrace();
            return charSequence;
        }
    }

    private void b() {
        String obj = b(this.e).toString();
        if (!obj.equals(getText())) {
            this.d = true;
            try {
                setText(obj);
            } catch (Error e) {
            } catch (Exception e2) {
                e2.printStackTrace();
            } finally {
                this.d = false;
            }
        }
        this.c = false;
    }

    private int c() {
        if (!a()) {
            return this.f;
        }
        int d = d();
        if (d == -1) {
            return 1;
        }
        return d;
    }

    private int d() {
        return ((getHeight() - getPaddingTop()) - getPaddingBottom()) / a("").getLineBottom(0);
    }

    public void a(CharSequence charSequence) {
        if (com.estrongs.android.pop.m.W && this.i != null && charSequence != null && charSequence.length() > 0) {
            charSequence = b(charSequence);
        }
        super.setText(charSequence);
    }

    public boolean a() {
        return this.f == Integer.MAX_VALUE;
    }

    @Override // android.widget.TextView
    public int getMaxLines() {
        return this.f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (com.estrongs.android.pop.m.W) {
            this.i = getPaint();
            if (this.c) {
                b();
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (com.estrongs.android.pop.m.W && a()) {
            this.c = true;
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (!com.estrongs.android.pop.m.W || this.d) {
            return;
        }
        this.e = charSequence.toString();
        this.c = true;
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (!com.estrongs.android.pop.m.W || Build.VERSION.SDK_INT < 14) {
            return;
        }
        super.setEllipsize(truncateAt);
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        this.h = f;
        this.g = f2;
        super.setLineSpacing(f, f2);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        super.setLines(i);
        this.f = i;
        this.c = true;
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        super.setMaxLines(i);
        this.f = i;
        this.c = true;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (com.estrongs.android.pop.m.W && a()) {
            this.c = true;
        }
    }
}
