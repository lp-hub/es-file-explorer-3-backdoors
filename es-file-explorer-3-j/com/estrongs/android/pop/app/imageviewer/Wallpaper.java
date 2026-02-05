package com.estrongs.android.pop.app.imageviewer;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

/* loaded from: classes.dex */
public class Wallpaper extends NoSearchActivity {
    protected void a(Intent intent) {
        int wallpaperDesiredMinimumWidth = getWallpaperDesiredMinimumWidth();
        int wallpaperDesiredMinimumHeight = getWallpaperDesiredMinimumHeight();
        intent.putExtra("outputX", wallpaperDesiredMinimumWidth);
        intent.putExtra("outputY", wallpaperDesiredMinimumHeight);
        intent.putExtra("aspectX", wallpaperDesiredMinimumWidth);
        intent.putExtra("aspectY", wallpaperDesiredMinimumHeight);
        intent.putExtra("scale", true);
        intent.putExtra("noFaceDetection", true);
        intent.putExtra("setWallpaper", true);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 || i == 2) {
            setResult(i2);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Uri data = getIntent().getData();
        if (data != null) {
            Intent intent = new Intent();
            intent.setClass(this, CropImage.class);
            intent.setData(data);
            a(intent);
            startActivityForResult(intent, 2);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.GET_CONTENT", (Uri) null);
        intent2.setType("image/*");
        intent2.putExtra("crop", "true");
        a(intent2);
        startActivityForResult(intent2, 1);
    }
}
