package com.estrongs.android.pop.app;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cf extends com.estrongs.android.util.n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f559a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ImageCommentPostActivity f560b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf(ImageCommentPostActivity imageCommentPostActivity, String str, String str2) {
        super(str);
        this.f560b = imageCommentPostActivity;
        this.f559a = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z;
        String string;
        String str;
        String str2 = null;
        try {
            str = this.f560b.c;
            PhotoInfoManager.addComment(str, this.f559a);
        } catch (PhotoInfoException e) {
            e.printStackTrace();
            str2 = this.f560b.getString(C0000R.string.comment_posted_failure_message) + ": " + e.getMessage();
        }
        if (this.g) {
            return;
        }
        if (str2 != null) {
            string = str2;
            z = false;
        } else {
            z = true;
            string = this.f560b.getString(C0000R.string.comment_posted_success_message);
        }
        this.f560b.a(new cg(this, z, string));
    }
}
