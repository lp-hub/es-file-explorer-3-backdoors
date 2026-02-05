package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.imageviewer.ViewImage;
import com.estrongs.android.pop.app.imageviewer.ViewImage21;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.fs.FileSystemException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class PopRemoteImageBrowser extends ESActivity {
    private int g;
    private int h;
    private ImageView i;
    private ImageView j;
    private float l;

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.fs.d f368a = null;

    /* renamed from: b, reason: collision with root package name */
    private String f369b = null;
    private String[] c = null;
    private String d = null;
    private int e = -1;
    private ImageView f = null;
    private DisplayMetrics k = new DisplayMetrics();
    private com.estrongs.android.util.a m = null;
    private View.OnClickListener n = new gj(this);
    private final Handler o = new Handler();
    private BitmapDrawable p = null;
    private BitmapDrawable q = null;

    private static int a(BitmapFactory.Options options, int i) {
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        int max = Math.max(i2 / i, i3 / i);
        if (max <= 1) {
            return 1;
        }
        if (max > 1 && i2 > i && i2 / max < i) {
            max--;
        }
        if (max > 1 && i3 > i && i3 / max < i) {
            max--;
        }
        if (max > 1) {
            return max;
        }
        return 1;
    }

    private InputStream a(String str) {
        try {
            return this.f368a.e(str);
        } catch (FileSystemException e) {
            e.printStackTrace();
            return null;
        }
    }

    private void b() {
        gn.a(this);
        new Thread(new gk(this)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        gn.a(this);
        new Thread(new gl(this)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Bitmap a2 = a();
        if (a2 == null) {
            return;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(a2);
        this.p = this.q;
        this.q = bitmapDrawable;
        this.o.post(new gm(this));
    }

    public Bitmap a() {
        InputStream a2;
        int i = this.e;
        if (i != -1 && (a2 = a(this.c[i])) != null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(a2, null, options);
            boolean markSupported = a2.markSupported();
            boolean H = com.estrongs.android.util.ak.H(this.c[i]);
            boolean aJ = com.estrongs.android.util.ak.aJ(this.c[i]);
            if (!markSupported || H || aJ) {
                try {
                    a2.close();
                } catch (IOException e) {
                }
            } else {
                a2.mark(0);
            }
            options.inSampleSize = a(options, this.h);
            if (!markSupported || H || aJ) {
                a2 = a(this.c[i]);
            } else {
                try {
                    a2.reset();
                } catch (IOException e2) {
                }
            }
            options.inJustDecodeBounds = false;
            Bitmap decodeStream = BitmapFactory.decodeStream(a2, null, options);
            try {
                a2.close();
            } catch (IOException e3) {
            }
            return decodeStream;
        }
        return null;
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.g = displayMetrics.widthPixels;
        this.h = displayMetrics.heightPixels - 80;
        d();
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        try {
            if (this.q == null || this.q.getBitmap() == null) {
                return true;
            }
            setWallpaper(this.q.getBitmap());
            return true;
        } catch (IOException e) {
            return true;
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f368a = com.estrongs.fs.d.a(this);
        requestWindowFeature(1);
        getWindowManager().getDefaultDisplay().getMetrics(this.k);
        this.l = this.k.density;
        this.m = com.estrongs.android.util.a.a(this, false, "PopRemoteImageBrowser");
        getWindow().setFlags(2000, 1024);
        setContentView(C0000R.layout.remote_image_browser);
        this.f = (ImageView) findViewById(C0000R.id.switcher);
        Uri data = getIntent().getData();
        if (data == null) {
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                this.d = extras.getString("FILE_PATH");
                if (this.d != null) {
                    data = Uri.parse(this.d);
                }
            }
        } else {
            this.d = data.toString();
        }
        Uri parse = data == null ? Uri.parse("pic://") : data;
        String scheme = parse.getScheme();
        String lowerCase = scheme == null ? "" : scheme.toLowerCase();
        if (com.estrongs.android.util.ak.aP(parse.toString()) || lowerCase.equals("file") || com.estrongs.android.util.ak.aZ(parse.toString()) || lowerCase.equals("pic") || lowerCase.equals("search")) {
            Intent intent = getIntent();
            if (com.estrongs.android.pop.p.a() < 8) {
                intent.setClass(this, ViewImage21.class);
            } else {
                intent.setClass(this, ViewImage.class);
            }
            intent.setData(parse);
            startActivity(intent);
            finish();
            return;
        }
        this.i = (ImageView) findViewById(C0000R.id.prev_image);
        this.j = (ImageView) findViewById(C0000R.id.next_image);
        this.i.setOnClickListener(this.n);
        this.j.setOnClickListener(this.n);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.g = displayMetrics.widthPixels;
        this.h = displayMetrics.heightPixels - 80;
        this.f369b = com.estrongs.android.util.ak.e(this.d) + "/";
        registerForContextMenu(this.f);
        if (!lowerCase.equals("content")) {
            b();
            return;
        }
        try {
            Bitmap a2 = com.estrongs.android.pop.app.imageviewer.am.a(800, 3145728, parse, getContentResolver(), true);
            if (a2 != null) {
                this.f.setImageBitmap(a2);
                this.q = new BitmapDrawable(a2);
            } else {
                this.f.setImageURI(parse);
                if (this.f.getDrawable() == null) {
                    com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.msg_failed_to_load_img), 1).show();
                }
            }
        } catch (Throwable th) {
            com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.msg_failed_to_load_img) + " (" + th.getMessage() + ")", 1).show();
        }
        findViewById(C0000R.id.llNav).setVisibility(8);
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        contextMenu.add(getString(C0000R.string.set_wallpaper));
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.m.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.m.b();
    }
}
