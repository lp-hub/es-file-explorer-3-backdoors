package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bx extends com.estrongs.android.util.n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ TextView f548a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ TextView f549b;
    final /* synthetic */ TextView c;
    final /* synthetic */ com.estrongs.android.pop.app.imageviewer.gallery.c d;
    final /* synthetic */ View e;
    final /* synthetic */ bw f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bx(bw bwVar, String str, TextView textView, TextView textView2, TextView textView3, com.estrongs.android.pop.app.imageviewer.gallery.c cVar, View view) {
        super(str);
        this.f = bwVar;
        this.f548a = textView;
        this.f549b = textView2;
        this.c = textView3;
        this.d = cVar;
        this.e = view;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        String str2;
        SPFileInfo a2;
        String str3 = null;
        try {
            ImageCommentActivity imageCommentActivity = this.f.f546a;
            ImageCommentActivity imageCommentActivity2 = this.f.f546a;
            str2 = this.f.f546a.h;
            a2 = imageCommentActivity2.a(str2);
            imageCommentActivity.f355a = a2;
            str3 = this.f.f546a.f355a.ownerId;
            if (this.f.f546a.f355a != null) {
                this.f.f546a.a(new by(this));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            str = this.f.f546a.h;
            URLConnection openConnection = new URL(PhotoInfoManager.getBuddyIcon(str, str3)).openConnection();
            openConnection.setReadTimeout(20000);
            openConnection.setConnectTimeout(60000);
            Bitmap decodeStream = BitmapFactory.decodeStream(openConnection.getInputStream());
            if (decodeStream != null) {
                this.f.f546a.a(new bz(this, decodeStream));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f.f547b = this.d.a(-1, 230400);
        if (this.g) {
            return;
        }
        this.f.f546a.a(new ca(this));
    }
}
