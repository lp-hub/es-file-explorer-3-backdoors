package com.estrongs.android.ui.preference;

import android.os.Parcel;
import android.os.Parcelable;
import com.estrongs.android.ui.preference.ListPreference;

/* loaded from: classes.dex */
final class r implements Parcelable.Creator<ListPreference.SavedState> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ListPreference.SavedState createFromParcel(Parcel parcel) {
        return new ListPreference.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ListPreference.SavedState[] newArray(int i) {
        return new ListPreference.SavedState[i];
    }
}
