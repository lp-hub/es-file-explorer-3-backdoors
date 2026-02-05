package com.estrongs.android.pop.app;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.IBinder;
import android.view.KeyEvent;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class AudioPlayerService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public static AudioPlayerService f339b = null;
    public static String j = "http://127.0.0.1:35864/";
    private com.estrongs.android.ui.notification.a o;
    private com.estrongs.android.pop.app.a.ah r;
    private Object k = new Object();
    private final IBinder l = new q(this);
    private boolean m = false;
    private boolean n = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f340a = false;
    private MediaPlayer p = null;
    public com.estrongs.android.c.a c = null;
    private boolean q = false;
    public boolean d = false;
    private final BroadcastReceiver s = new j(this);
    MediaPlayer.OnCompletionListener e = new l(this);
    MediaPlayer.OnErrorListener f = new m(this);
    private final BroadcastReceiver t = new n(this);
    private final BroadcastReceiver u = new o(this);
    private final BroadcastReceiver v = new p(this);
    i g = null;
    public boolean h = false;
    boolean i = false;
    private Object w = new Object();
    private ek x = null;

    /* loaded from: classes.dex */
    public class MediaButtonReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (!"android.intent.action.MEDIA_BUTTON".equals(action) || AudioPlayerService.f339b == null || keyEvent == null) {
                    return;
                }
                boolean k = AudioPlayerService.f339b.k();
                int keyCode = keyEvent.getKeyCode();
                if (keyEvent.getAction() != 1) {
                    return;
                }
                if (87 == keyCode) {
                    AudioPlayerService.f339b.a((MediaPlayer) null);
                }
                if (85 == keyCode) {
                    if (!k) {
                        AudioPlayerService.f339b.s();
                    } else if (AudioPlayerService.f339b.m()) {
                        AudioPlayerService.f339b.E();
                    } else {
                        AudioPlayerService.f339b.u();
                    }
                }
                if (79 == keyCode && k) {
                    if (AudioPlayerService.f339b.m()) {
                        AudioPlayerService.f339b.E();
                    } else {
                        AudioPlayerService.f339b.u();
                    }
                }
                if (88 == keyCode) {
                    AudioPlayerService.f339b.f(AudioPlayerService.f339b.g());
                }
                if (86 == keyCode) {
                    AudioPlayerService.f339b.t();
                }
                if (126 == keyCode) {
                    if (!k) {
                        AudioPlayerService.f339b.s();
                    } else if (AudioPlayerService.f339b.m()) {
                        AudioPlayerService.f339b.E();
                    }
                }
                if (127 == keyCode && k) {
                    AudioPlayerService.f339b.u();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int F() {
        return this.r.b();
    }

    private synchronized void G() {
        if (!"Market".equalsIgnoreCase("Market") && com.estrongs.android.pop.p.a() >= 8) {
            if (this.g == null) {
                this.g = new i(this, this);
            }
            synchronized (this.w) {
                if (!this.i) {
                    this.i = this.g.a();
                }
            }
        }
    }

    private synchronized void H() {
        if (!"Market".equalsIgnoreCase("Market") && com.estrongs.android.pop.p.a() >= 8 && this.g != null && this.i) {
            synchronized (this.w) {
                if (this.i) {
                    this.i = !this.g.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(MediaPlayer mediaPlayer) {
        t();
        if (!this.r.n()) {
            return false;
        }
        new k(this).start();
        return true;
    }

    public void A() {
        if (!this.q || this.r == null || this.r.e() == null) {
            return;
        }
        this.o.a();
    }

    public String B() {
        if (h() == null || this.r.j() == 0) {
            return null;
        }
        String str = this.r.g().e;
        return (str == null || "".equals(str)) ? com.estrongs.android.util.ak.d(this.r.g().f397b) : str;
    }

    public String C() {
        if (h() == null || this.r.j() == 0) {
            return null;
        }
        String str = this.r.g().g;
        return str == null ? FexApplication.a().getString(C0000R.string.audio_player_artist_unknown) : str;
    }

    public Bitmap D() {
        if (h() == null || this.r.j() == 0) {
            return null;
        }
        Bitmap a2 = this.r.g().a(this);
        return a2 == null ? BitmapFactory.decodeResource(getResources(), C0000R.drawable.app_audio_album_default_icon) : a2;
    }

    public void E() {
        if (this.r.i()) {
            return;
        }
        this.n = false;
        if (this.p != null) {
            this.m = true;
            if (this.x != null) {
                this.x.e(this.r.f());
            }
            this.p.start();
            com.estrongs.android.util.m.a();
            if (this.o.h()) {
                A();
            }
        }
    }

    public String a() {
        int b2;
        try {
            String a2 = this.r.e().a();
            return (a2 != null || (b2 = this.r.e().b()) == -1) ? a2 : FexApplication.a().getString(b2);
        } catch (NullPointerException e) {
            return null;
        }
    }

    public void a(int i) {
        this.r.a(i);
    }

    public void a(int i, int i2) {
        this.r.a(i, i2);
    }

    public void a(ek ekVar) {
        this.x = ekVar;
    }

    public void a(List<com.estrongs.android.pop.app.a.af> list) {
        this.r.b(list);
    }

    public void a(boolean z) {
        this.q = z;
        if (this.q) {
            A();
        } else {
            z();
        }
    }

    public boolean a(com.estrongs.android.pop.app.a.ag agVar) {
        return this.r.a(agVar);
    }

    public int b() {
        return this.r.c();
    }

    public void b(int i) {
        this.r.b(i);
    }

    public void b(List<String> list) {
        this.r.a(list);
    }

    public int c() {
        return this.r.d();
    }

    public void c(int i) {
        if (this.p != null) {
            try {
                this.p.seekTo(i);
            } catch (Exception e) {
            }
        }
    }

    public int d() {
        return this.r.m();
    }

    public boolean d(int i) {
        if (this.r.h() && !this.h) {
            this.h = true;
            synchronized (this.k) {
                if (i < 0) {
                    this.r.a();
                }
                this.r.d(i);
                if (this.r.j() == 0) {
                    if (this.x != null) {
                        this.x.a(-1);
                    }
                    this.h = false;
                    return true;
                }
                String str = this.r.g().f397b;
                if (com.estrongs.android.util.ak.aP(str)) {
                    str = com.estrongs.android.util.ak.b(str, 35864);
                } else if (str.startsWith(j)) {
                    str = j + Uri.encode(str.substring(j.length()), "/?:@");
                } else if (str.startsWith(Utils.http)) {
                    str = Utils.http + Uri.encode(str.substring(Utils.http.length()), "/?:@");
                }
                int f = this.r.f();
                try {
                    if (this.x != null) {
                        this.x.a(f);
                    }
                    if (this.p != null) {
                        try {
                            this.p.stop();
                            this.p.release();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    this.p = new MediaPlayer();
                    this.p.setOnCompletionListener(this.e);
                    this.p.setOnErrorListener(this.f);
                    this.p.setDataSource(str);
                    this.p.prepare();
                    this.h = false;
                    A();
                    return true;
                } catch (Exception e2) {
                    if (!(e2 instanceof IllegalStateException) && !(e2 instanceof NullPointerException)) {
                        this.r.a(f, false);
                    }
                    this.h = false;
                    e(f);
                    if (this.x != null) {
                        this.x.g(f);
                    } else if (!a(this.p)) {
                        return true;
                    }
                    e2.printStackTrace();
                    return false;
                }
            }
        }
        return false;
    }

    public int e() {
        return this.r.k();
    }

    public void e(int i) {
        if (this.r.f() == i) {
            t();
        } else if (this.x != null) {
            this.x.b(i);
        }
    }

    public int f() {
        return this.r.l();
    }

    public boolean f(int i) {
        if (!this.r.c(i)) {
            return false;
        }
        t();
        if (d(i)) {
            return r();
        }
        return false;
    }

    public int g() {
        return this.r.o();
    }

    public com.estrongs.android.pop.app.a.ag h() {
        return this.r.e();
    }

    public int i() {
        return this.r.f();
    }

    public int j() {
        if (this.p != null) {
            try {
                return this.p.getDuration();
            } catch (Exception e) {
            }
        }
        return 0;
    }

    public boolean k() {
        return this.m;
    }

    public boolean l() {
        return (this.r.c(this.r.f()) && this.m) ? false : true;
    }

    public boolean m() {
        return this.n;
    }

    public boolean n() {
        return this.h;
    }

    public void o() {
        t();
        stopSelf();
        com.estrongs.android.util.m.b();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        a(false);
        return this.l;
    }

    @Override // android.app.Service
    public void onCreate() {
        try {
            super.onCreate();
            try {
                com.estrongs.android.pop.esclasses.c.a(this);
            } catch (Exception e) {
            }
            f339b = this;
            this.c = new com.estrongs.android.c.a("/sdcard/", 35864);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.estrongs.action.audio.control.preview");
            intentFilter.addAction("com.estrongs.action.audio.control.play");
            intentFilter.addAction("com.estrongs.action.audio.control.next");
            intentFilter.addAction("com.estrongs.action.audio.control.close");
            registerReceiver(this.s, intentFilter);
            registerReceiver(this.t, new IntentFilter("android.intent.action.HEADSET_PLUG"));
            try {
                registerReceiver(this.v, new IntentFilter("android.intent.action.PHONE_STATE"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            try {
                if (com.estrongs.android.pop.p.a() >= 8) {
                    AudioManager audioManager = (AudioManager) getSystemService("audio");
                    ComponentName componentName = new ComponentName(getPackageName(), MediaButtonReceiver.class.getName());
                    if (audioManager != null) {
                        new com.estrongs.android.util.aj(audioManager).a("registerMediaButtonEventReceiver", componentName);
                    }
                }
            } catch (Exception e3) {
            }
            if (!"Market".equalsIgnoreCase("Market")) {
                try {
                    registerReceiver(this.u, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
                } catch (Exception e4) {
                }
            }
        } catch (Exception e5) {
            this.c = null;
        }
        this.o = new com.estrongs.android.ui.notification.a(this);
        this.r = new com.estrongs.android.pop.app.a.ah();
    }

    @Override // android.app.Service
    public void onDestroy() {
        t();
        if (this.x != null) {
            this.x.a();
        }
        if (this.c != null) {
            this.c.i();
        }
        try {
            unregisterReceiver(this.s);
            unregisterReceiver(this.t);
            try {
                unregisterReceiver(this.v);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                if (com.estrongs.android.pop.p.a() >= 8) {
                    AudioManager audioManager = (AudioManager) getSystemService("audio");
                    ComponentName componentName = new ComponentName(getPackageName(), MediaButtonReceiver.class.getName());
                    if (audioManager != null) {
                        new com.estrongs.android.util.aj(audioManager).a("unregisterMediaButtonEventReceiver", componentName);
                    }
                }
            } catch (Exception e2) {
            }
            if (!"Market".equalsIgnoreCase("Market")) {
                try {
                    unregisterReceiver(this.u);
                } catch (Exception e3) {
                }
            }
        } catch (IllegalArgumentException e4) {
        }
        f339b = null;
        com.estrongs.android.pop.app.a.aj.k();
        PopAudioPlayer.a((String[]) null);
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
        a(false);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent.getBooleanExtra("isadd", false)) {
            String[] w = intent.getBooleanExtra("hasplaylist", false) ? PopAudioPlayer.w() : null;
            if (this.r.e() == null) {
                a(com.estrongs.android.pop.app.a.aj.a().b());
            }
            com.estrongs.android.pop.app.a.ag e = this.r.e();
            if (e.f()) {
                boolean isEmpty = e.c().isEmpty();
                LinkedList linkedList = new LinkedList();
                for (String str : w) {
                    linkedList.add(str);
                }
                b(linkedList);
                if (isEmpty) {
                    d(0);
                }
                com.estrongs.android.ui.view.z.a(this, FexApplication.a().getText(C0000R.string.audio_player_song_added), 0).show();
            } else {
                com.estrongs.android.ui.view.z.a(this, FexApplication.a().getText(C0000R.string.audio_player_song_added_editable_error), 0).show();
            }
        }
        return 0;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        a(true);
        return true;
    }

    public int p() {
        if (this.p != null) {
            try {
                return this.p.getCurrentPosition();
            } catch (Exception e) {
            }
        }
        return 0;
    }

    public com.estrongs.android.pop.app.a.af q() {
        return this.r.g();
    }

    public boolean r() {
        if (this.h || this.r.i()) {
            return false;
        }
        int f = this.r.f();
        try {
            if (this.p == null && !d(f)) {
                return false;
            }
            this.p.start();
            this.m = true;
            this.n = false;
            if (this.x != null) {
                this.x.c(f);
            }
            A();
            synchronized (this.k) {
                this.r.a(f, true);
            }
            G();
            com.estrongs.android.util.m.a();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            if (!(e instanceof IllegalStateException) && !(e instanceof NullPointerException)) {
                this.r.a(f, false);
            }
            this.h = false;
            e(f);
            if (this.x == null) {
                return !a(this.p);
            }
            this.x.g(f);
            return false;
        }
    }

    public boolean s() {
        return d(this.r.f()) && r();
    }

    public void t() {
        int f = this.r.f();
        this.m = false;
        if (this.p != null) {
            try {
                this.p.stop();
                this.p.release();
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.p = null;
        }
        if (this.x != null) {
            this.x.b(f);
        }
        if (this.o.h()) {
            A();
        }
        H();
        com.estrongs.android.util.m.b();
    }

    public void u() {
        if (this.p == null || !this.m) {
            return;
        }
        this.n = true;
        try {
            this.p.pause();
            com.estrongs.android.util.m.b();
            if (this.x != null) {
                this.x.d(this.r.f());
            }
            if (this.o.h()) {
                A();
            }
        } catch (Exception e) {
            e.printStackTrace();
            t();
        }
    }

    public void v() {
        if (h() == null) {
            return;
        }
        boolean k = k();
        boolean m = m();
        boolean z = false;
        if (k && !m && p() > 5000) {
            w();
            z = true;
        }
        if (z) {
            return;
        }
        int f = f();
        t();
        if (d(f) && k && !m) {
            r();
        }
    }

    public void w() {
        c(0);
    }

    public void x() {
        if (h() == null) {
            return;
        }
        f(e());
    }

    public void y() {
        if (h() == null) {
            return;
        }
        if (k() && !m()) {
            u();
            return;
        }
        if (m()) {
            E();
            return;
        }
        int d = d();
        if (d != -1) {
            f(d);
        } else {
            f(0);
        }
    }

    public void z() {
        this.o.i();
    }
}
