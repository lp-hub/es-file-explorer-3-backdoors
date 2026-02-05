package com.estrongs.android.ui.preference;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.preference.DialogPreference;
import android.preference.Preference;
import android.util.AttributeSet;
import com.estrongs.android.ui.b.ag;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f2397a = {R.attr.entries, R.attr.entryValues};

    /* renamed from: b, reason: collision with root package name */
    private CharSequence[] f2398b;
    private CharSequence[] c;
    private String d;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new r();

        /* renamed from: a, reason: collision with root package name */
        String f2399a;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f2399a = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f2399a);
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2397a, 0, 0);
        this.f2398b = obtainStyledAttributes.getTextArray(0);
        this.c = obtainStyledAttributes.getTextArray(1);
        obtainStyledAttributes.recycle();
    }

    private int b() {
        return b(this.d);
    }

    public String a() {
        return this.d;
    }

    public void a(String str) {
        this.d = str;
        persistString(str);
    }

    public void a(CharSequence[] charSequenceArr) {
        this.f2398b = charSequenceArr;
    }

    public int b(String str) {
        if (str != null && this.c != null) {
            for (int length = this.c.length - 1; length >= 0; length--) {
                if (this.c[length].equals(str)) {
                    return length;
                }
            }
        }
        return -1;
    }

    @Override // android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        super.onDialogClosed(z);
        if (!z || this.e < 0 || this.c == null) {
            return;
        }
        String obj = this.c[this.e].toString();
        if (callChangeListener(obj)) {
            a(obj);
        }
    }

    @Override // android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        a(savedState.f2399a);
    }

    @Override // android.preference.DialogPreference, android.preference.Preference
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        SavedState savedState = new SavedState(onSaveInstanceState);
        savedState.f2399a = a();
        return savedState;
    }

    @Override // android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        a(z ? getPersistedString(this.d) : (String) obj);
    }

    @Override // android.preference.DialogPreference
    protected void showDialog(Bundle bundle) {
        if (this.f2398b == null || this.c == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.e = b();
        ag agVar = new ag(getContext());
        agVar.setTitle(getDialogTitle());
        agVar.setSelectable(true);
        agVar.setItems(this.f2398b, this.e, new q(this));
        agVar.setOnDismissListener(this);
        agVar.show();
    }
}
