package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.ImageView;

/* loaded from: classes.dex */
class gj implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopRemoteImageBrowser f844a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gj(PopRemoteImageBrowser popRemoteImageBrowser) {
        this.f844a = popRemoteImageBrowser;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String[] strArr;
        String[] strArr2;
        ImageView imageView;
        int i;
        String[] strArr3;
        int i2;
        String[] strArr4;
        String[] strArr5;
        strArr = this.f844a.c;
        if (strArr != null) {
            strArr2 = this.f844a.c;
            if (strArr2.length == 0) {
                return;
            }
            imageView = this.f844a.i;
            if (view == imageView) {
                PopRemoteImageBrowser popRemoteImageBrowser = this.f844a;
                i2 = this.f844a.e;
                strArr4 = this.f844a.c;
                int length = (i2 - 1) + strArr4.length;
                strArr5 = this.f844a.c;
                popRemoteImageBrowser.e = length % strArr5.length;
            } else {
                PopRemoteImageBrowser popRemoteImageBrowser2 = this.f844a;
                i = this.f844a.e;
                strArr3 = this.f844a.c;
                popRemoteImageBrowser2.e = (i + 1) % strArr3.length;
            }
            this.f844a.c();
        }
    }
}
