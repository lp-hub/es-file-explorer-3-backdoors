package com.estrongs.android.pop.app;

import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.util.TypedMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq extends com.estrongs.android.util.n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f537a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bq(ImageCommentActivity imageCommentActivity, String str) {
        super(str);
        this.f537a = imageCommentActivity;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        TypedMap typedMap;
        String str;
        List<com.gmail.yuyang226.flickr.a.a.a> comments;
        TypedMap typedMap2;
        try {
            TypedMap typedMap3 = new TypedMap();
            typedMap = this.f537a.l;
            typedMap3.put(INetFileSystem.LIST_LIMIT, typedMap.get(INetFileSystem.LIST_OFFSET));
            typedMap3.put(INetFileSystem.LIST_OFFSET, 0);
            str = this.f537a.h;
            comments = PhotoInfoManager.getComments(str, typedMap3);
            this.f537a.a(new br(this));
        } catch (PhotoInfoException e) {
            e.printStackTrace();
        }
        if (this.g) {
            return;
        }
        int size = comments.size();
        if (size > 0) {
            typedMap2 = this.f537a.l;
            typedMap2.put(INetFileSystem.LIST_OFFSET, Integer.valueOf(size));
            this.f537a.a(new bs(this, comments));
        }
        this.f537a.g = null;
    }
}
