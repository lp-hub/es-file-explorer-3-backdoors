package com.estrongs.android.view;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.estrongs.android.pop.app.DownloaderActivity;

/* loaded from: classes.dex */
class cv implements DownloadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cs f2827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(cs csVar) {
        this.f2827a = csVar;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        Uri parse = Uri.parse(str);
        Intent intent = new Intent(this.f2827a.ad, (Class<?>) DownloaderActivity.class);
        intent.setData(parse);
        this.f2827a.a(intent);
    }
}
