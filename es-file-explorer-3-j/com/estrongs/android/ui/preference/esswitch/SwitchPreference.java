package com.estrongs.android.ui.preference.esswitch;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.s;
import com.estrongs.android.widget.esswitch.Switch;

/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {

    /* renamed from: b */
    private CharSequence f2412b;
    private CharSequence c;
    private final b d;

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0000R.attr.switchPreferenceStyle);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new b(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.e, i, 0);
        c(obtainStyledAttributes.getString(0));
        d(obtainStyledAttributes.getString(1));
        a(obtainStyledAttributes.getString(2));
        b(obtainStyledAttributes.getString(3));
        b(obtainStyledAttributes.getBoolean(4, false));
        obtainStyledAttributes.recycle();
    }

    public void a(CharSequence charSequence) {
        this.f2412b = charSequence;
        notifyChanged();
    }

    public void b(CharSequence charSequence) {
        this.c = charSequence;
        notifyChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.preference.Preference
    protected void onBindView(View view) {
        super.onBindView(view);
        View findViewById = view.findViewById(C0000R.id.switchWidget);
        if (findViewById != 0 && (findViewById instanceof Checkable)) {
            ((Checkable) findViewById).setChecked(this.f2414a);
            a(findViewById);
            if (findViewById instanceof Switch) {
                Switch r1 = (Switch) findViewById;
                r1.a(this.f2412b);
                r1.b(this.c);
                r1.setOnCheckedChangeListener(this.d);
            }
        }
        b(view);
    }
}
