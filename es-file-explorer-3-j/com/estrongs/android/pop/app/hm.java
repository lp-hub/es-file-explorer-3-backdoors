package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

/* loaded from: classes.dex */
class hm implements DownloadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommAcitivity f876a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm(RecommAcitivity recommAcitivity) {
        this.f876a = recommAcitivity;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        Uri parse = Uri.parse(str);
        Intent intent = new Intent(this.f876a, (Class<?>) DownloaderActivity.class);
        intent.setData(parse);
        this.f876a.startActivity(intent);
    }
}
