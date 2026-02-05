package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import java.io.File;

/* loaded from: classes.dex */
class am implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f454a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f455b;
    final /* synthetic */ al c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(al alVar, com.estrongs.a.a aVar, String str) {
        this.c = alVar;
        this.f454a = aVar;
        this.f455b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        com.estrongs.android.a.t.a();
        if (this.f454a.getTaskResult().f229a != 0) {
            this.c.d.a(C0000R.string.copy_remote_file_failed);
            this.c.d.setResult(0, this.c.c);
            this.c.d.finish();
            return;
        }
        Uri fromFile = Uri.fromFile(new File(this.f455b));
        if (!com.estrongs.android.util.av.b(this.f455b)) {
            if (!com.estrongs.android.util.av.e(this.f455b) && (!com.estrongs.android.util.av.f(this.f455b) || com.estrongs.android.util.av.i(this.f455b))) {
                new com.estrongs.android.ui.b.aq(this.c.d).a(C0000R.string.pick_and_return_file_title).a(C0000R.array.pick_and_return_file_entries, -1, new an(this)).a(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null).a().show();
                return;
            }
            this.c.c.setData(FileContentProvider.a(this.f455b));
            this.c.d.setResult(-1, this.c.c);
            this.c.d.finish();
            return;
        }
        z = this.c.d.c;
        if (z) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("setWallpaper", true);
            Intent intent = new Intent();
            intent.setData(fromFile);
            intent.setClass(this.c.d, CropImage.class);
            intent.putExtras(bundle);
            this.c.d.startActivityForResult(intent, 268439577);
            return;
        }
        Bundle extras = this.c.d.getIntent().getExtras();
        String string = extras != null ? extras.getString("crop") : null;
        if (string == null) {
            if (extras == null || !extras.getBoolean("return-data")) {
                this.c.c.setData(Uri.fromFile(new File(this.f455b)));
            } else {
                this.c.c.putExtra("data", com.estrongs.android.d.f.a(this.c.d).a(this.c.d.getIntent().getIntExtra("outputX", 64), this.f455b, null));
            }
            this.c.d.setResult(-1, this.c.c);
            this.c.d.finish();
            return;
        }
        Bundle bundle2 = new Bundle();
        if (string.equals("circle")) {
            bundle2.putString("circleCrop", "true");
        }
        Intent intent2 = new Intent();
        intent2.setData(fromFile);
        intent2.setClass(this.c.d, CropImage.class);
        intent2.putExtras(bundle2);
        intent2.putExtras(extras);
        this.c.d.startActivityForResult(intent2, 268439577);
    }
}
