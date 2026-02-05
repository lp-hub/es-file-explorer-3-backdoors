package com.estrongs.android.pop.app.imageviewer;

import android.os.Parcel;
import android.os.Parcelable;
import com.estrongs.android.pop.app.imageviewer.ImageManager;

/* loaded from: classes.dex */
final class y implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ImageManager.ImageListParam createFromParcel(Parcel parcel) {
        return new ImageManager.ImageListParam(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public ImageManager.ImageListParam[] newArray(int i) {
        return new ImageManager.ImageListParam[i];
    }
}
