package com.estrongs.android.pop.app;

import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.util.TypedMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bt extends com.estrongs.android.util.n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f541a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f542b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bt(ImageCommentActivity imageCommentActivity, String str, boolean z) {
        super(str);
        this.f542b = imageCommentActivity;
        this.f541a = z;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        TypedMap typedMap;
        List<com.gmail.yuyang226.flickr.a.a.a> comments;
        TypedMap typedMap2;
        TypedMap typedMap3;
        try {
            str = this.f542b.h;
            typedMap = this.f542b.l;
            comments = PhotoInfoManager.getComments(str, typedMap);
        } catch (PhotoInfoException e) {
            e.printStackTrace();
        }
        if (comments == null) {
            return;
        }
        int size = comments.size();
        if (size == 0 && this.f541a) {
            this.f542b.a(new bu(this));
            return;
        }
        typedMap2 = this.f542b.l;
        typedMap3 = this.f542b.l;
        typedMap2.put(INetFileSystem.LIST_OFFSET, Integer.valueOf(size + typedMap3.getInt(INetFileSystem.LIST_OFFSET)));
        this.f542b.a(new bv(this, comments));
        if (this.g) {
            return;
        }
        this.f542b.e = null;
    }
}
