package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new n();

    /* renamed from: a, reason: collision with root package name */
    FragmentState[] f11a;

    /* renamed from: b, reason: collision with root package name */
    int[] f12b;
    BackStackState[] c;

    public FragmentManagerState() {
    }

    public FragmentManagerState(Parcel parcel) {
        this.f11a = (FragmentState[]) parcel.createTypedArray(FragmentState.CREATOR);
        this.f12b = parcel.createIntArray();
        this.c = (BackStackState[]) parcel.createTypedArray(BackStackState.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.f11a, i);
        parcel.writeIntArray(this.f12b);
        parcel.writeTypedArray(this.c, i);
    }
}
