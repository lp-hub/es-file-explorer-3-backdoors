package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

/* loaded from: classes.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new o();

    /* renamed from: a, reason: collision with root package name */
    final String f13a;

    /* renamed from: b, reason: collision with root package name */
    final int f14b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    Bundle j;
    Fragment k;

    public FragmentState(Parcel parcel) {
        this.f13a = parcel.readString();
        this.f14b = parcel.readInt();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readBundle();
        this.j = parcel.readBundle();
    }

    public FragmentState(Fragment fragment) {
        this.f13a = fragment.getClass().getName();
        this.f14b = fragment.mIndex;
        this.c = fragment.mFromLayout;
        this.d = fragment.mFragmentId;
        this.e = fragment.mContainerId;
        this.f = fragment.mTag;
        this.g = fragment.mRetainInstance;
        this.h = fragment.mDetached;
        this.i = fragment.mArguments;
    }

    public Fragment a(FragmentActivity fragmentActivity) {
        if (this.k != null) {
            return this.k;
        }
        if (this.i != null) {
            this.i.setClassLoader(fragmentActivity.getClassLoader());
        }
        this.k = Fragment.instantiate(fragmentActivity, this.f13a, this.i);
        if (this.j != null) {
            this.j.setClassLoader(fragmentActivity.getClassLoader());
            this.k.mSavedFragmentState = this.j;
        }
        this.k.setIndex(this.f14b);
        this.k.mFromLayout = this.c;
        this.k.mRestored = true;
        this.k.mFragmentId = this.d;
        this.k.mContainerId = this.e;
        this.k.mTag = this.f;
        this.k.mRetainInstance = this.g;
        this.k.mDetached = this.h;
        this.k.mFragmentManager = fragmentActivity.f10b;
        if (k.f23a) {
            Log.v("FragmentManager", "Instantiated fragment " + this.k);
        }
        return this.k;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f13a);
        parcel.writeInt(this.f14b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeBundle(this.i);
        parcel.writeBundle(this.j);
    }
}
