package com.estrongs.android.ui.preference.esswitch;

import android.os.Parcel;
import android.os.Parcelable;
import com.estrongs.android.ui.preference.esswitch.TwoStatePreference;

/* loaded from: classes.dex */
final class c implements Parcelable.Creator<TwoStatePreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public TwoStatePreference.SavedState createFromParcel(Parcel parcel) {
        return new TwoStatePreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public TwoStatePreference.SavedState[] newArray(int i) {
        return new TwoStatePreference.SavedState[i];
    }
}
