package com.estrongs.android.pop.app.imageviewer;

import android.R;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.widget.RealViewSwitcher;
import com.estrongs.fs.FileSystemException;
import java.util.Iterator;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class ViewImage21 extends NoSearchActivity implements View.OnClickListener {
    private TextView A;
    private View B;
    private String D;
    private a G;
    private o K;
    GestureDetector f;
    protected ImageViewTouch g;
    protected ImageView h;
    protected RealViewSwitcher i;
    protected LayoutInflater j;
    protected DisplayMetrics k;
    ESScrollMenuView m;
    Animation n;
    Animation o;
    private r r;
    private Uri s;
    private boolean v;
    private SharedPreferences w;
    private ESGallery y;
    private TextView z;

    /* renamed from: a, reason: collision with root package name */
    boolean f929a = true;
    private boolean t = true;

    /* renamed from: b, reason: collision with root package name */
    final n f930b = new n();
    private int u = 1;
    protected int c = -1;
    protected boolean d = true;
    com.estrongs.android.pop.app.imageviewer.gallery.f e = new x();
    private com.estrongs.fs.b x = null;
    private boolean C = false;
    private String E = null;
    private final Runnable F = new aq(this);
    protected Runnable l = new bn(this);
    private final Runnable H = new bi(this);
    private final Runnable I = new bj(this);
    private int J = 800;
    protected long p = 3000;
    protected ViewGroup.LayoutParams q = new ViewGroup.LayoutParams(-1, -1);

    private ImageViewTouch a(ViewGroup viewGroup) {
        if (viewGroup.getChildCount() <= 0 || !(viewGroup.getChildAt(0) instanceof ImageViewTouch)) {
            return null;
        }
        return (ImageViewTouch) viewGroup.getChildAt(0);
    }

    private com.estrongs.android.pop.app.imageviewer.gallery.f a(Uri uri) {
        if ("content".equalsIgnoreCase(uri.getScheme())) {
            return ImageManager.a(getContentResolver(), uri, 1);
        }
        com.estrongs.fs.c.a.a p = com.estrongs.android.pop.q.a(this).p(uri.toString());
        if (p == null) {
            p = new com.estrongs.fs.c.a.d(true);
        }
        String uri2 = uri.toString();
        if (com.estrongs.android.util.ak.aC(this.s.toString())) {
            uri2 = this.E;
        }
        return ImageManager.a(com.estrongs.fs.d.a(this), uri.toString(), uri2, this.x, p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(Uri uri) {
        return uri.equals(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    }

    private al e(int i) {
        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.e.a(i);
        al a3 = this.G.a(a2);
        if (a3 != null && !a3.g()) {
            return a3;
        }
        this.G.b(a2);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (h()) {
            k();
        }
        this.t = false;
        this.y.setVisibility(4);
        this.B.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f929a) {
            return;
        }
        this.t = true;
        if (!this.C && this.u == 1) {
            this.y.setVisibility(0);
        }
        this.B.setVisibility(0);
    }

    private void f(int i) {
        if (this.z == null || this.e == null) {
            return;
        }
        this.z.setText(com.estrongs.android.util.ak.bv(this.D) + " (" + (i + 1) + "/" + this.e.b() + ")");
        this.A.setText(this.e.a(i).h());
    }

    private void g() {
        this.m = (ESScrollMenuView) findViewById(C0000R.id.extra_edit_scroll);
        this.m.a();
        boolean z = false;
        try {
            z = ac.a(this.e.a(this.c).e());
        } catch (Exception e) {
        }
        if (!this.C && z) {
            this.m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_delete), getString(C0000R.string.action_delete)), new ax(this));
        }
        this.m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_turnright), getString(C0000R.string.turn_right)), new ay(this));
        this.m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_setbg), getString(C0000R.string.menu_setbk)), new az(this));
        if (!this.C) {
            this.m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_slides), getString(C0000R.string.lbl_slide_show)), new ba(this));
            if (z) {
                this.m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_share), getString(C0000R.string.action_share)), new bb(this));
            }
        }
        this.m.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_property), getString(C0000R.string.context_menu_property)), new bc(this));
    }

    private void g(int i) {
        int i2 = this.c + i;
        if (i2 < 0 || i2 >= this.e.b()) {
            return;
        }
        a(i2, true);
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return this.m != null && this.m.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        if (h()) {
            k();
            return false;
        }
        j();
        return true;
    }

    private void j() {
        if (this.m == null) {
            g();
        }
        if (this.o == null) {
            this.o = new AlphaAnimation(0.1f, 1.0f);
            this.o.setDuration(150L);
            this.o.setInterpolator(new DecelerateInterpolator());
            this.o.setAnimationListener(new be(this));
        }
        this.o.start();
        this.m.setAnimation(this.o);
        this.m.setVisibility(0);
        this.h.setImageResource(C0000R.drawable.toolbar_menu_expand);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (this.n == null) {
            this.n = new AlphaAnimation(1.0f, 0.1f);
            this.n.setDuration(150L);
            this.n.setInterpolator(new AccelerateInterpolator());
            this.n.setAnimationListener(new bf(this));
        }
        this.n.start();
        this.m.setAnimation(this.n);
        this.m.setVisibility(4);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        int i = 0;
        CharSequence[] textArray = getResources().getTextArray(C0000R.array.image_slide_interval_values);
        if (textArray != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= textArray.length) {
                    break;
                }
                if (String.valueOf(this.p).equals(textArray[i2])) {
                    i = i2;
                    break;
                }
                i2++;
            }
        }
        new AlertDialog.Builder(this).setIcon(R.drawable.ic_dialog_info).setTitle(C0000R.string.lbl_slide_show).setSingleChoiceItems(C0000R.array.image_slide_interval, i, new bh(this, textArray)).setPositiveButton(C0000R.string.action_start, new bg(this)).setNegativeButton(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.estrongs.android.pop.app.imageviewer.gallery.e m() {
        com.estrongs.android.pop.app.imageviewer.gallery.e a2;
        if (this.s == null) {
            return null;
        }
        this.e = a(this.s);
        if (!b(this.s) || this.e.b() <= 0) {
            a2 = this.e.a(this.s);
            if (a2 == null && this.E != null) {
                a2 = this.e.a(Uri.parse(this.E));
            }
        } else {
            a2 = this.e.a(0);
        }
        this.G = new a(this.e, 10);
        return a2;
    }

    String a(String str) {
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf > 0) {
            str = str.substring(0, lastIndexOf);
        }
        int lastIndexOf2 = str.lastIndexOf("/");
        return lastIndexOf2 > 0 ? str.substring(lastIndexOf2 + 1) : str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f930b.removeCallbacks(this.F);
        if (h()) {
            return;
        }
        this.f930b.postDelayed(this.F, 3000L);
    }

    protected void a(int i) {
        bu buVar;
        if (i < 0 || i > this.e.b() - 1 || (buVar = (bu) this.i.getChildAt(i % 3)) == null) {
            return;
        }
        if (buVar.a() != null) {
            buVar.a().stop();
            buVar.a((com.estrongs.android.b.a) null);
        }
        String d = this.e.a(i).d();
        if ((com.estrongs.android.util.aw.a(new StringBuilder().append("load-sucess::").append(d).toString(), buVar.getTag()) || com.estrongs.android.util.aw.a(new StringBuilder().append("load-error::").append(d).toString(), buVar.getTag())) ? false : true) {
            a(i, buVar);
            return;
        }
        ImageViewTouch a2 = a((ViewGroup) buVar);
        if (a2 == null || a2.getDrawable() != null) {
            return;
        }
        a(i, buVar);
    }

    protected void a(int i, bu buVar) {
        a(i, buVar, null);
    }

    protected void a(int i, bu buVar, Runnable runnable) {
        if (i < 0 || i > this.e.b() - 1) {
            return;
        }
        al e = e(i);
        if (e != null) {
            if (buVar != null) {
                buVar.a(this.e.a(i), e);
            }
        } else {
            if (buVar != null) {
                buVar.a(this.e.a(i));
            }
            if (this.r != null) {
                this.r.a(this.e.a(i), new bp(this, i, buVar, runnable), i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, boolean z) {
        int b2 = this.e.b();
        int i2 = i > b2 + (-1) ? b2 - 2 : i;
        int i3 = i2 < 0 ? 0 : i2;
        this.c = i3;
        if (!this.C) {
            this.K.a(i3);
            if (i3 > this.c) {
                this.K.a(i3 - 6, i3 + 10);
            } else {
                this.K.a(i3 - 10, i3 + 6);
            }
        }
        if (this.g != null && this.g.h() > 0.0f && this.g.c() - this.g.h() > 0.0f) {
            this.g.a(this.g.h());
        }
        this.f930b.removeCallbacks(this.F);
        f(i3);
        if (b2 == 1) {
            this.i.e(false);
            this.i.d(false);
        } else if (i3 == 0) {
            this.i.e(false);
            this.i.d(true);
        } else if (i3 == b2 - 1) {
            this.i.e(true);
            this.i.d(false);
        } else {
            this.i.e(true);
            this.i.d(true);
        }
        int i4 = i3 % 3;
        bu buVar = (bu) this.i.getChildAt(i4);
        if (buVar == null) {
            return;
        }
        this.g = buVar.f989a;
        String d = this.e.a(i3).d();
        boolean z2 = (com.estrongs.android.util.aw.a(new StringBuilder().append("load-sucess::").append(d).toString(), buVar.getTag()) || com.estrongs.android.util.aw.a(new StringBuilder().append("load-error::").append(d).toString(), buVar.getTag())) ? false : true;
        if (com.estrongs.android.util.av.a(d) == 65555 && !this.C) {
            this.g.h.a(0);
            bo boVar = new bo(this, d, buVar, i3);
            if (buVar.a() != null) {
                try {
                    buVar.a().stop();
                    buVar.a((com.estrongs.android.b.a) null);
                } catch (Exception e) {
                }
            }
            buVar.a(boVar);
            boVar.start();
        } else if (z2) {
            a(i3, buVar);
        } else if (this.g != null && this.g.getDrawable() == null) {
            a(i3, buVar);
        }
        if (z) {
            f();
        }
        a();
        if (this.i.h() != i4) {
            this.i.a(i4);
        }
        a(i3 - 1);
        a(i3 + 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(MotionEvent motionEvent) {
    }

    protected void a(View view) {
        this.f = new GestureDetector(this, new bv(this));
        view.setOnTouchListener(new bl(this, new bd(this)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        if (z && !this.f929a) {
            a();
            this.f930b.removeCallbacks(this.I);
            this.f930b.postDelayed(this.I, this.p + this.J);
        } else {
            f();
            this.f930b.removeCallbacks(this.F);
            this.f930b.removeCallbacks(this.H);
            this.f930b.removeCallbacks(this.I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.u = i;
        Window window = getWindow();
        if (i != 1) {
            window.addFlags(128);
            return;
        }
        window.clearFlags(128);
        if (this.v) {
            window.addFlags(1024);
        } else {
            window.clearFlags(1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        String action = getIntent().getAction();
        return "android.intent.action.PICK".equals(action) || "android.intent.action.GET_CONTENT".equals(action);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        if (this.c == this.e.b() - 1) {
            f();
            a();
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(this.J);
        alphaAnimation2.setDuration(this.J);
        this.i.setInAnimation(alphaAnimation);
        this.i.setOutAnimation(alphaAnimation2);
        this.i.setAnimateFirstView(true);
        e();
        b(2);
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        this.i.setInAnimation(null);
        this.i.setOutAnimation(null);
        this.i.setAnimateFirstView(false);
        b(1);
        a(false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f929a) {
            return true;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception e) {
            return true;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case 490:
                if (i2 == -1) {
                    this.s = Uri.parse(intent.getAction());
                    if (this.e != null) {
                        com.estrongs.android.pop.app.imageviewer.gallery.e a2 = this.e.a(this.s);
                        if (a2 == null) {
                            finish();
                            return;
                        } else {
                            this.c = this.e.a(a2);
                            a(this.c, false);
                            return;
                        }
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case C0000R.id.prev_image /* 2131231286 */:
                g(-1);
                return;
            case C0000R.id.next_image /* 2131231287 */:
                g(1);
                return;
            default:
                return;
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.k == null) {
            this.k = new DisplayMetrics();
        }
        getWindowManager().getDefaultDisplay().getMetrics(this.k);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        this.v = true;
        this.w = PreferenceManager.getDefaultSharedPreferences(this);
        try {
            this.p = this.w.getLong("slide_setting_interval", 3000L);
        } catch (Exception e) {
            this.p = 3000L;
            e.printStackTrace();
        }
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        setContentView(C0000R.layout.image_view);
        ColorDrawable colorDrawable = new ColorDrawable(-16777216);
        colorDrawable.setAlpha(FTPReply.FILE_STATUS_OK);
        Uri data = getIntent().getData();
        if ("file".equalsIgnoreCase(data.getScheme())) {
            this.E = data.getPath();
        } else {
            this.E = getIntent().getStringExtra("ABSOLUTE_FILE_PATH");
        }
        if (com.estrongs.android.util.aw.a((CharSequence) this.E)) {
            this.E = data.toString();
        }
        String stringExtra = getIntent().getStringExtra("FILE_PATH");
        if (com.estrongs.android.util.aw.a((CharSequence) stringExtra)) {
            stringExtra = getIntent().getStringExtra("ABSOLUTE_FILE_PATH");
        }
        if (com.estrongs.android.util.aw.a((CharSequence) stringExtra)) {
            this.s = Uri.parse(this.E);
        } else {
            this.s = Uri.parse(stringExtra);
        }
        if (this.s == null) {
            this.s = Uri.parse("pic://");
        }
        if ("file".equalsIgnoreCase(this.s.getScheme())) {
            stringExtra = this.s.getPath();
        }
        if (com.estrongs.android.util.ak.aC(stringExtra) || com.estrongs.android.util.ak.aO(stringExtra)) {
            String e2 = com.estrongs.android.util.ak.e(this.E);
            if (!e2.endsWith("/")) {
                e2 = e2 + "/";
            }
            this.x = new com.estrongs.fs.b(null);
            int i = Integer.MAX_VALUE;
            try {
                i = FileExplorerActivity.E().t().hashCode();
            } catch (Exception e3) {
            }
            if (!getIntent().getBooleanExtra("show_hidelist_file", false)) {
                this.x.a(new com.estrongs.android.view.ae(e2, i));
            }
        }
        if (!com.estrongs.android.util.av.b(stringExtra)) {
            com.estrongs.fs.d a2 = com.estrongs.fs.d.a(this);
            try {
                if (com.estrongs.android.util.ak.L(stringExtra)) {
                    this.s = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else {
                    com.estrongs.android.pop.utils.bv bvVar = new com.estrongs.android.pop.utils.bv();
                    bvVar.a();
                    if (a2.h(stringExtra)) {
                        Iterator<com.estrongs.fs.g> it = a2.a(stringExtra).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            com.estrongs.fs.g next = it.next();
                            if (!next.getFileType().a() && com.estrongs.android.util.av.b(next.getAbsolutePath())) {
                                this.s = Uri.parse(next.getAbsolutePath());
                                z = true;
                                break;
                            }
                        }
                        if (!z) {
                            com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.msg_picture_not_found) + ": " + this.s.getPath(), 1).show();
                            finish();
                            return;
                        }
                    }
                    bvVar.b();
                }
            } catch (FileSystemException e4) {
                e4.printStackTrace();
            }
        }
        this.y = (ESGallery) findViewById(C0000R.id.gallery);
        if (com.estrongs.android.util.ak.aP(com.estrongs.android.util.aw.a(this.s))) {
            this.D = a(com.estrongs.android.util.ak.bv(com.estrongs.android.util.aw.a(this.s)));
            this.C = true;
        } else if (com.estrongs.android.util.ak.aK(com.estrongs.android.util.aw.a(this.s))) {
            this.D = getString(C0000R.string.action_search);
            this.C = com.estrongs.android.util.ak.aP(this.E);
        } else if (com.estrongs.android.util.ak.aC(com.estrongs.android.util.aw.a(this.s))) {
            this.D = a(this.E);
            this.C = false;
        } else {
            this.D = a(com.estrongs.android.util.aw.a(this.s));
            this.C = false;
        }
        this.y.a(new br(this));
        this.y.setBackgroundDrawable(colorDrawable);
        this.y.setCallbackDuringFling(false);
        this.y.setUnselectedAlpha(0.5f);
        this.y.setOnItemSelectedListener(new bs(this));
        this.y.setOnTouchListener(new bt(this));
        this.i = (RealViewSwitcher) findViewById(C0000R.id.viewswitcher);
        this.i.c(true);
        this.i.b(false);
        this.i.a(new ar(this));
        a((View) this.i);
        this.z = (TextView) findViewById(C0000R.id.image_dir);
        this.B = findViewById(C0000R.id.image_title_bar);
        this.B.setBackgroundDrawable(colorDrawable);
        this.A = (TextView) findViewById(C0000R.id.image_name);
        this.h = (ImageView) findViewById(C0000R.id.menuButton);
        this.h.setOnClickListener(new as(this));
        this.j = com.estrongs.android.pop.esclasses.e.a(this);
        if (this.C) {
            this.y.setVisibility(4);
        }
        for (int i2 = 0; i2 < 3; i2++) {
            bu buVar = new bu(this, this);
            buVar.setLayoutParams(this.q);
            this.i.addView(buVar);
        }
        if (this.r == null) {
            this.r = new at(this, "Image Loader - Full Size ");
        }
        new au(this, "ImageListBuilder").start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        this.f930b.a();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.i.getChildCount()) {
                break;
            }
            bu buVar = (bu) this.i.getChildAt(i2);
            if (buVar != null && buVar.a() != null) {
                try {
                    buVar.a().stop();
                    buVar.a((com.estrongs.android.b.a) null);
                } catch (Exception e) {
                }
            }
            i = i2 + 1;
        }
        if (this.e != null) {
            this.e.a();
        }
        if (this.K != null) {
            this.K.a();
        }
        if (this.r != null) {
            this.r.a();
            this.r.b();
            this.r = null;
        }
        if (this.g != null) {
            this.g.b();
        }
        if (this.G != null) {
            this.G.a();
        }
        super.onDestroy();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0001. Please report as an issue. */
    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                if (h()) {
                    k();
                    return true;
                }
                return super.onKeyDown(i, keyEvent);
            case 82:
                if (this.u == 2) {
                    return true;
                }
                if (!this.t) {
                    f();
                }
                i();
                return super.onKeyDown(i, keyEvent);
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        bu buVar = (bu) this.i.getChildAt(this.c % 3);
        if (buVar != null && buVar.a() != null) {
            buVar.a().stop();
        }
        this.f929a = true;
        if (this.u == 2) {
            a(false);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (getIntent().getBooleanExtra("slide_mode", false)) {
            new Handler().postDelayed(new bk(this), 500L);
        }
        this.f929a = false;
        if (this.u == 2) {
            a(true);
        }
        bu buVar = (bu) this.i.getChildAt(this.c % 3);
        if (buVar == null || buVar.a() == null) {
            return;
        }
        buVar.a().start();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            bundle.putParcelable("uri", this.e.a(this.c).e());
            bundle.putBoolean("slideshow", this.u == 2);
        } catch (Exception e) {
        }
    }
}
