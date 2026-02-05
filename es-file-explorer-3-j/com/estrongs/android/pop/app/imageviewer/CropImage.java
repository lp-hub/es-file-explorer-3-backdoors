package com.estrongs.android.pop.app.imageviewer;

import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class CropImage extends MonitoredActivity {

    /* renamed from: a, reason: collision with root package name */
    boolean f913a;

    /* renamed from: b, reason: collision with root package name */
    boolean f914b;
    HighlightView c;
    private int h;
    private int i;
    private int m;
    private int n;
    private boolean o;
    private CropImageView q;
    private ContentResolver r;
    private Bitmap s;
    private com.estrongs.android.pop.app.imageviewer.gallery.e t;
    private Bitmap.CompressFormat e = Bitmap.CompressFormat.JPEG;
    private Uri f = null;
    private boolean g = false;
    private boolean j = true;
    private boolean k = false;
    private final Handler l = new Handler();
    private boolean p = true;
    Runnable d = new k(this);

    private void a() {
        if (isFinishing()) {
            return;
        }
        this.q.a(this.s, true);
        am.a(this, (String) null, getResources().getString(C0000R.string.wait_loading_file), new g(this), this.l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bitmap bitmap) {
        int i;
        OutputStream outputStream = null;
        int i2 = 0;
        if (this.f != null) {
            try {
                outputStream = this.r.openOutputStream(this.f);
                if (outputStream != null) {
                    bitmap.compress(this.e, 75, outputStream);
                }
            } catch (IOException e) {
                Log.e("CropImage", "Cannot open file: " + this.f, e);
            } finally {
                am.a(outputStream);
            }
            setResult(-1, new Intent(this.f.toString()).putExtras(new Bundle()));
        } else if (this.g) {
            try {
                setWallpaper(bitmap);
                setResult(-1);
            } catch (Exception e2) {
                Log.e("CropImage", "Failed to set wallpaper.", e2);
                setResult(0);
            }
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("rect", this.c.b().toString());
            File file = new File(this.t.d());
            File file2 = new File(file.getParent());
            String name = file.getName();
            String substring = name.substring(0, name.lastIndexOf("."));
            while (true) {
                i = i2 + 1;
                if (!new File(file2.toString() + "/" + substring + "-" + i + ".jpg").exists()) {
                    break;
                } else {
                    i2 = i;
                }
            }
            try {
                setResult(-1, new Intent().setAction(ImageManager.a(this.r, this.t.h(), this.t.n(), null, file2.toString(), substring + "-" + i + ".jpg", bitmap, null, new int[1]).toString()).putExtras(bundle));
            } catch (Exception e3) {
                Log.e("CropImage", "store image fail, continue anyway", e3);
            }
        }
        this.l.post(new j(this, bitmap));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Bitmap createBitmap;
        if (this.c == null || this.f914b) {
            return;
        }
        this.f914b = true;
        if (this.m == 0 || this.n == 0 || this.o) {
            Rect b2 = this.c.b();
            int width = b2.width();
            int height = b2.height();
            createBitmap = Bitmap.createBitmap(width, height, this.k ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            new Canvas(createBitmap).drawBitmap(this.s, b2, new Rect(0, 0, width, height), (Paint) null);
            this.q.b();
            this.s.recycle();
            if (this.k) {
                Canvas canvas = new Canvas(createBitmap);
                Path path = new Path();
                path.addCircle(width / 2.0f, height / 2.0f, width / 2.0f, Path.Direction.CW);
                try {
                    canvas.clipPath(path, Region.Op.DIFFERENCE);
                } catch (UnsupportedOperationException e) {
                }
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            }
            if (this.m != 0 && this.n != 0 && this.o) {
                createBitmap = am.a(new Matrix(), createBitmap, this.m, this.n, this.p, true);
            }
        } else {
            createBitmap = Bitmap.createBitmap(this.m, this.n, Bitmap.Config.RGB_565);
            Canvas canvas2 = new Canvas(createBitmap);
            Rect b3 = this.c.b();
            Rect rect = new Rect(0, 0, this.m, this.n);
            int width2 = (b3.width() - rect.width()) / 2;
            int height2 = (b3.height() - rect.height()) / 2;
            b3.inset(Math.max(0, width2), Math.max(0, height2));
            rect.inset(Math.max(0, -width2), Math.max(0, -height2));
            canvas2.drawBitmap(this.s, b3, rect, (Paint) null);
            this.q.b();
            this.s.recycle();
        }
        this.q.a(createBitmap, true);
        this.q.a(true, true);
        this.q.f915a.clear();
        Bundle extras = getIntent().getExtras();
        String string = extras.getString("customSave");
        if (extras != null && (extras.getParcelable("data") != null || extras.getBoolean("return-data"))) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", createBitmap);
            setResult(-1, new Intent().setAction("inline-data").putExtras(bundle));
            finish();
            return;
        }
        if (string == null) {
            am.a(this, (String) null, this.g ? getResources().getString(C0000R.string.msg_setting_wallpaper) : getResources().getString(C0000R.string.action_save) + "...", new i(this, createBitmap), this.l);
            return;
        }
        try {
            createBitmap.compress(Bitmap.CompressFormat.PNG, 90, new FileOutputStream(string));
            setResult(-1, null);
        } catch (Exception e2) {
            e2.printStackTrace();
            setResult(0, null);
        }
        finish();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.MonitoredActivity, com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        this.r = getContentResolver();
        requestWindowFeature(1);
        setContentView(C0000R.layout.image_crop);
        this.q = (CropImageView) findViewById(C0000R.id.image);
        ac.a(this);
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            if (extras.getString("circleCrop") != null) {
                this.k = true;
                this.h = 1;
                this.i = 1;
            }
            this.g = extras.getBoolean("setWallpaper", false);
            this.g |= extras.getBoolean("set_wallpaper", false);
            this.g |= extras.getBoolean("show_drm_settable", false);
            if (!this.g) {
                this.f = (Uri) extras.getParcelable("output");
                if (this.f != null && (string = extras.getString("outputFormat")) != null) {
                    this.e = Bitmap.CompressFormat.valueOf(string);
                }
            }
            this.s = (Bitmap) extras.getParcelable("data");
            this.h = extras.getInt("aspectX");
            this.i = extras.getInt("aspectY");
            this.m = extras.getInt("outputX");
            this.n = extras.getInt("outputY");
            this.o = extras.getBoolean("scale", true);
            this.p = extras.getBoolean("scaleUpIfNeeded", true);
            this.j = extras.containsKey("noFaceDetection") ? !extras.getBoolean("noFaceDetection") : true;
        }
        if (this.s == null) {
            Uri data = intent.getData();
            if ("content".equalsIgnoreCase(data.getScheme())) {
                this.t = new com.estrongs.android.pop.app.imageviewer.gallery.j(null, this.r, data);
            } else {
                this.t = new com.estrongs.android.pop.app.imageviewer.gallery.c((com.estrongs.android.pop.app.imageviewer.gallery.f) null, com.estrongs.fs.d.a(this), Uri.decode(data.toString()));
            }
            if (this.t != null) {
                this.s = this.t.a(true);
            }
        }
        if (this.s == null) {
            finish();
            return;
        }
        getWindow().addFlags(1024);
        findViewById(C0000R.id.discard).setOnClickListener(new e(this));
        findViewById(C0000R.id.save).setOnClickListener(new f(this));
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.imageviewer.MonitoredActivity, com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }
}
