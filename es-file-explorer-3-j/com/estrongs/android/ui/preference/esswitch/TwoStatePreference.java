package com.estrongs.android.ui.preference.esswitch;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import com.estrongs.android.util.i;

/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {

    /* renamed from: b, reason: collision with root package name */
    private static int f2413b;

    /* renamed from: a, reason: collision with root package name */
    boolean f2414a;
    private CharSequence c;
    private CharSequence d;
    private boolean e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new c();

        /* renamed from: a, reason: collision with root package name */
        boolean f2415a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f2415a = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2415a ? 1 : 0);
        }
    }

    static {
        try {
            f2413b = Integer.parseInt(Class.forName("com.android.internal.R$id").getField("summary").get(null).toString());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        try {
            AccessibilityManager accessibilityManager = (AccessibilityManager) i.a(AccessibilityManager.class.getName(), "getInstance", new Class[]{Context.class}, new Object[]{getContext()});
            if (this.e && accessibilityManager.isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(1);
                view.dispatchPopulateAccessibilityEvent(obtain);
                accessibilityManager.sendAccessibilityEvent(obtain);
            }
            this.e = false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(boolean z) {
        if (this.f2414a != z) {
            this.f2414a = z;
            persistBoolean(z);
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public boolean a() {
        return this.f2414a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(View view) {
        boolean z;
        CharSequence summary;
        TextView textView = (TextView) view.findViewById(f2413b);
        if (textView != null) {
            boolean z2 = true;
            if (this.f2414a && this.c != null) {
                textView.setText(this.c);
                z2 = false;
            } else if (!this.f2414a && this.d != null) {
                textView.setText(this.d);
                z2 = false;
            }
            if (!z2 || (summary = getSummary()) == null) {
                z = z2;
            } else {
                textView.setText(summary);
                z = false;
            }
            int i = z ? 8 : 0;
            if (i != textView.getVisibility()) {
                textView.setVisibility(i);
            }
        }
    }

    public void b(boolean z) {
        this.f = z;
    }

    public void c(CharSequence charSequence) {
        this.c = charSequence;
        if (a()) {
            notifyChanged();
        }
    }

    public void d(CharSequence charSequence) {
        this.d = charSequence;
        if (a()) {
            return;
        }
        notifyChanged();
    }

    @Override // android.preference.Preference
    protected void onClick() {
        super.onClick();
        boolean z = !a();
        this.e = true;
        if (callChangeListener(Boolean.valueOf(z))) {
            a(z);
        }
    }

    @Override // android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // android.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        a(savedState.f2415a);
    }

    @Override // android.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.f2415a = a();
        return savedState;
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        a(z ? getPersistedBoolean(this.f2414a) : ((Boolean) obj).booleanValue());
    }

    @Override // android.preference.Preference
    public boolean shouldDisableDependents() {
        return (this.f ? this.f2414a : !this.f2414a) || super.shouldDisableDependents();
    }
}
