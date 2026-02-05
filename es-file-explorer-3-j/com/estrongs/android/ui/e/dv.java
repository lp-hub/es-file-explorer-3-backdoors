package com.estrongs.android.ui.e;

import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog;
import com.estrongs.android.pop.spfs.task.FlickrEditTask;
import com.estrongs.android.util.TypedMap;

/* loaded from: classes.dex */
class dv implements FlickrPhotoPrivacyDialog.PrivacyOptionCallback {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f2081a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dt f2082b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dv(dt dtVar, com.estrongs.fs.g gVar) {
        this.f2082b = dtVar;
        this.f2081a = gVar;
    }

    @Override // com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.PrivacyOptionCallback
    public void setPrivacty(TypedMap typedMap, boolean z) {
        if (z) {
            return;
        }
        FlickrEditTask flickrEditTask = new FlickrEditTask((SPFileObject) this.f2081a, typedMap);
        flickrEditTask.addTaskStatusChangeListener(new dw(this));
        flickrEditTask.execute(true);
    }
}
