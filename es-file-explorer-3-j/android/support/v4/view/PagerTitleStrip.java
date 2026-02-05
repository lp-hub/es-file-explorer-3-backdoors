package android.support.v4.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;

/* loaded from: classes.dex */
public class PagerTitleStrip extends ViewGroup implements be {
    private static final int[] m = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};
    private static final int[] n = {R.attr.textAllCaps};
    private static final ac p;

    /* renamed from: a, reason: collision with root package name */
    ViewPager f48a;

    /* renamed from: b, reason: collision with root package name */
    TextView f49b;
    TextView c;
    TextView d;
    int e;
    private int f;
    private float g;
    private int h;
    private int i;
    private boolean j;
    private boolean k;
    private final ab l;
    private int o;

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            p = new ae();
        } else {
            p = new ad();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerTitleStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = false;
        this.f = -1;
        this.g = -1.0f;
        this.l = new ab(this);
        TextView textView = new TextView(context);
        this.f49b = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.c = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.d = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            this.f49b.setTextAppearance(context, resourceId);
            this.c.setTextAppearance(context, resourceId);
            this.d.setTextAppearance(context, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            a(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.f49b.setTextColor(color);
            this.c.setTextColor(color);
            this.d.setTextColor(color);
        }
        this.i = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.e = this.c.getTextColors().getDefaultColor();
        a(0.6f);
        this.f49b.setEllipsize(TextUtils.TruncateAt.END);
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.d.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, n);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            a(this.f49b);
            a(this.c);
            a(this.d);
        } else {
            this.f49b.setSingleLine();
            this.c.setSingleLine();
            this.d.setSingleLine();
        }
        this.h = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    private static void a(TextView textView) {
        p.a(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public void a(float f) {
        this.o = ((int) (255.0f * f)) & 255;
        int i = (this.o << 24) | (this.e & 16777215);
        this.f49b.setTextColor(i);
        this.d.setTextColor(i);
    }

    public void a(int i) {
        this.h = i;
        requestLayout();
    }

    public void a(int i, float f) {
        this.f49b.setTextSize(i, f);
        this.c.setTextSize(i, f);
        this.d.setTextSize(i, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        if (i != this.f) {
            a(i, this.f48a.b());
        } else if (!z && f == this.g) {
            return;
        }
        this.k = true;
        int measuredWidth = this.f49b.getMeasuredWidth();
        int measuredWidth2 = this.c.getMeasuredWidth();
        int measuredWidth3 = this.d.getMeasuredWidth();
        int i5 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i6 = paddingRight + i5;
        int i7 = (width - (paddingLeft + i5)) - i6;
        float f2 = 0.5f + f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i8 = ((width - i6) - ((int) (f2 * i7))) - (measuredWidth2 / 2);
        int i9 = i8 + measuredWidth2;
        int baseline = this.f49b.getBaseline();
        int baseline2 = this.c.getBaseline();
        int baseline3 = this.d.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i10 = max - baseline;
        int i11 = max - baseline2;
        int i12 = max - baseline3;
        int max2 = Math.max(Math.max(this.f49b.getMeasuredHeight() + i10, this.c.getMeasuredHeight() + i11), this.d.getMeasuredHeight() + i12);
        switch (this.i & 112) {
            case 16:
                int i13 = (((height - paddingTop) - paddingBottom) - max2) / 2;
                i2 = i13 + i10;
                i3 = i11 + i13;
                i4 = i13 + i12;
                break;
            case 80:
                int i14 = (height - paddingBottom) - max2;
                i2 = i14 + i10;
                i3 = i11 + i14;
                i4 = i14 + i12;
                break;
            default:
                i2 = paddingTop + i10;
                i3 = i11 + paddingTop;
                i4 = paddingTop + i12;
                break;
        }
        this.c.layout(i8, i3, i9, this.c.getMeasuredHeight() + i3);
        int min = Math.min(paddingLeft, (i8 - this.h) - measuredWidth);
        this.f49b.layout(min, i2, measuredWidth + min, this.f49b.getMeasuredHeight() + i2);
        int max3 = Math.max((width - paddingRight) - measuredWidth3, this.h + i9);
        this.d.layout(max3, i4, max3 + measuredWidth3, this.d.getMeasuredHeight() + i4);
        this.g = f;
        this.k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, x xVar) {
        CharSequence charSequence = null;
        int a2 = xVar != null ? xVar.a() : 0;
        this.j = true;
        this.f49b.setText((i < 1 || xVar == null) ? null : xVar.a(i - 1));
        this.c.setText((xVar == null || i >= a2) ? null : xVar.a(i));
        if (i + 1 < a2 && xVar != null) {
            charSequence = xVar.a(i + 1);
        }
        this.d.setText(charSequence);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (width * 0.8f), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE);
        this.f49b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.d.measure(makeMeasureSpec, makeMeasureSpec2);
        this.f = i;
        if (!this.k) {
            a(i, this.g, false);
        }
        this.j = false;
    }

    void a(x xVar, x xVar2) {
        if (xVar != null) {
            xVar.b(this.l);
        }
        if (xVar2 != null) {
            xVar2.a(this.l);
        }
        if (this.f48a != null) {
            this.f = -1;
            this.g = -1.0f;
            a(this.f48a.c(), xVar2);
            requestLayout();
        }
    }

    public int b() {
        return this.h;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        x b2 = viewPager.b();
        viewPager.a((bi) this.l);
        viewPager.a((bh) this.l);
        this.f48a = viewPager;
        a((x) null, b2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f48a != null) {
            a(this.f48a.b(), (x) null);
            this.f48a.a((bi) null);
            this.f48a.a((bh) null);
            this.f48a = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f48a != null) {
            a(this.f48a.c(), this.g >= 0.0f ? this.g : 0.0f, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int a2 = a();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (size * 0.8f), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - paddingTop, Integer.MIN_VALUE);
        this.f49b.measure(makeMeasureSpec, makeMeasureSpec2);
        this.c.measure(makeMeasureSpec, makeMeasureSpec2);
        this.d.measure(makeMeasureSpec, makeMeasureSpec2);
        if (mode2 == 1073741824) {
            setMeasuredDimension(size, size2);
        } else {
            setMeasuredDimension(size, Math.max(a2, this.c.getMeasuredHeight() + paddingTop));
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.j) {
            return;
        }
        super.requestLayout();
    }
}
