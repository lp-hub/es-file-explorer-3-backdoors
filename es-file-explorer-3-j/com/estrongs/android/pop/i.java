package com.estrongs.android.pop;

import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
class i implements FlickrPhotoPrivacyDialog.PrivacyOptionCallback {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f1152a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.f1152a = hVar;
    }

    @Override // com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.PrivacyOptionCallback
    public void setPrivacty(TypedMap typedMap, boolean z) {
        if (z) {
            this.f1152a.f1150a.g = 3;
            this.f1152a.f1151b.sendMessage(5, this.f1152a.f1150a);
        } else {
            ((com.estrongs.a.a.f) this.f1152a.f1150a).f194b = typedMap;
            this.f1152a.f1151b.sendMessage(5, this.f1152a.f1150a);
        }
    }
}
