package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
class d<T> implements Parcelable.ClassLoaderCreator<T> {

    /* renamed from: a, reason: collision with root package name */
    private final c<T> f5a;

    public d(c<T> cVar) {
        this.f5a = cVar;
    }

    @Override // android.os.Parcelable.Creator
    public T createFromParcel(Parcel parcel) {
        return this.f5a.a(parcel, null);
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public T createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return this.f5a.a(parcel, classLoader);
    }

    @Override // android.os.Parcelable.Creator
    public T[] newArray(int i) {
        return this.f5a.a(i);
    }
}
