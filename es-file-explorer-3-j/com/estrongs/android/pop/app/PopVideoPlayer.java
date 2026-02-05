package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.TextView;
import android.widget.VideoView;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.net.URL;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class PopVideoPlayer extends ESActivity implements com.estrongs.android.ui.e.gh {
    private com.estrongs.android.ui.e.fi A;
    private com.estrongs.android.view.a.a B;
    private com.estrongs.android.view.a.a C;
    private com.estrongs.android.view.a.a D;
    private Rect E;
    protected ImageView c;
    private VideoView k;
    private MediaController l;
    private View p;
    private TextView q;
    private com.estrongs.android.ui.e.gc z;
    private com.estrongs.fs.d j = com.estrongs.fs.d.a(this);
    private int m = 0;
    private Uri n = null;

    /* renamed from: a, reason: collision with root package name */
    boolean f370a = true;
    private com.estrongs.android.util.a o = null;
    private Handler r = new gp(this);
    private final BroadcastReceiver s = new gy(this);

    /* renamed from: b, reason: collision with root package name */
    boolean f371b = false;
    private final BroadcastReceiver t = new gz(this);
    private final BroadcastReceiver u = new ha(this);
    private boolean v = false;
    private final int w = 0;
    private final int x = 1;
    boolean d = false;
    boolean e = false;
    boolean f = false;
    i g = null;
    Boolean h = false;
    private Object y = new Object();
    boolean i = true;

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Uri uri) {
        if (uri == null) {
            return null;
        }
        if (uri.getScheme().equals("file")) {
            return uri.getPath();
        }
        if ("http".equals(uri.getScheme()) && "127.0.0.1".equals(uri.getHost())) {
            return com.estrongs.android.util.ak.be(Uri.decode(uri.toString()));
        }
        Cursor query = getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("_data");
            if (query == null || !query.moveToFirst()) {
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            }
            String string = query.getString(columnIndexOrThrow);
            if (query == null) {
                return string;
            }
            query.close();
            return string;
        } catch (Exception e) {
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        } catch (Throwable th) {
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        FileExplorerActivity E = FileExplorerActivity.E();
        if (E == null || E.t() == null) {
            return;
        }
        E.t().a(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        String substring;
        int indexOf;
        try {
            String decode = Uri.decode(this.n.toString());
            if (!decode.startsWith(Utils.http) || (indexOf = (substring = decode.substring(Utils.http.length())).indexOf("/")) <= 0 || !substring.substring(0, indexOf).startsWith("127.0.0.1")) {
                return false;
            }
            String be = com.estrongs.android.util.ak.be(substring.substring(indexOf));
            Intent intent = new Intent(this, (Class<?>) StreamingMediaPlayer.class);
            intent.addFlags(67108864);
            intent.setData(Uri.parse(be));
            startActivity(intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private synchronized void c() {
        try {
            if (!"Market".equalsIgnoreCase("Market") && com.estrongs.android.pop.p.a() >= 8) {
                if (this.g == null) {
                    this.g = new i(this, null);
                }
                synchronized (this.y) {
                    if (!this.h.booleanValue()) {
                        this.h = Boolean.valueOf(this.g.a());
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    private synchronized void d() {
        try {
            if (!"Market".equalsIgnoreCase("Market") && com.estrongs.android.pop.p.a() >= 8 && this.g != null && this.h.booleanValue()) {
                synchronized (this.y) {
                    if (this.h.booleanValue()) {
                        this.h = Boolean.valueOf(!this.g.b());
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    private void e() {
        Uri data = getIntent().getData();
        try {
            if (data.toString().startsWith("smb://")) {
                this.k.setVideoURI(data);
                new URL(data.toString()).openStream().close();
            } else {
                this.k.requestFocus();
                Message obtainMessage = this.r.obtainMessage(2, this.m, this.f ? 1 : 0);
                this.f = false;
                this.r.sendMessageDelayed(obtainMessage, 500L);
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.z != null && this.z.b();
    }

    public void a() {
        if (this.z == null) {
            this.z = new gq(this, this, true, true);
            this.A = new com.estrongs.android.ui.e.fi(this, true);
            this.z.a(this.A);
            this.z.a(this.A.c());
            this.z.a(new gr(this));
            this.B = new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_play), getString(C0000R.string.video_player_play)).setOnMenuItemClickListener(new gs(this));
            this.C = new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_delete), getString(C0000R.string.action_delete)).setOnMenuItemClickListener(new gt(this));
            this.D = new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_share), getString(C0000R.string.action_share)).setOnMenuItemClickListener(new gx(this));
            com.estrongs.android.ui.e.gq b2 = this.A.b();
            b2.j();
            String a2 = a(this.n);
            if (a2 != null && !"http".equals(this.n.getScheme())) {
                b2.a(this.D);
            }
            if (!"Market".equals("Sharp") && a2 != null) {
                b2.a(this.C);
            }
            b2.a(this.B);
        }
        if (this.z.b()) {
            this.z.d();
        } else {
            this.z.c();
            this.c.setImageResource(C0000R.drawable.toolbar_menu_expand);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.l.hide();
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDefaultKeyMode(2);
        requestWindowFeature(1);
        getWindow().setFlags(2000, 1024);
        setContentView(C0000R.layout.pop_video_player);
        this.l = new hb(this, this);
        this.k = (VideoView) findViewById(C0000R.id.video);
        this.k.setMediaController(this.l);
        this.l.requestFocus();
        this.k.setOnCompletionListener(new hc(this));
        this.k.setOnErrorListener(new hd(this));
        this.n = getIntent().getData();
        if (com.estrongs.android.pop.p.a() < 8 && b()) {
            finish();
            return;
        }
        this.m = 0;
        this.f = false;
        if ("Market".startsWith("Spreadtrum")) {
            try {
                registerReceiver(this.s, new IntentFilter("android.intent.action.SCREEN_OFF"));
                registerReceiver(this.t, new IntentFilter("android.intent.action.USER_PRESENT"));
                registerReceiver(this.u, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
            } catch (Exception e) {
            }
        }
        c();
        e();
        this.o = com.estrongs.android.util.a.a(this, false, "PopVideoPlayer");
        this.p = findViewById(C0000R.id.video_title_bar);
        this.q = (TextView) this.p.findViewById(C0000R.id.video_name);
        String a2 = a(getIntent().getData());
        if (a2 != null) {
            this.q.setText(com.estrongs.android.util.ak.d(a2));
        }
        this.p.setVisibility(this.l.isShown() ? 0 : 4);
        ColorDrawable colorDrawable = new ColorDrawable(-16777216);
        colorDrawable.setAlpha(FTPReply.FILE_STATUS_OK);
        this.p.setBackgroundDrawable(colorDrawable);
        this.c = (ImageView) this.p.findViewById(C0000R.id.menuButton);
        this.c.setOnClickListener(new hf(this));
        if (!this.l.isShown()) {
            this.l.show();
        }
        new hg(this).start();
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        return null;
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        d();
        if ("Market".startsWith("Spreadtrum")) {
            try {
                unregisterReceiver(this.s);
                unregisterReceiver(this.t);
                unregisterReceiver(this.u);
            } catch (Exception e) {
            }
        }
        super.onDestroy();
        com.estrongs.android.util.m.b();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0001. Please report as an issue. */
    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                this.v = true;
                return super.onKeyDown(i, keyEvent);
            case 82:
                if (!this.l.isShown()) {
                    this.l.show();
                }
                a();
                return true;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        try {
            if (this.k.isPlaying()) {
                this.k.pause();
                this.e = true;
                this.f = false;
            } else {
                this.f = true;
            }
            this.m = this.k.getCurrentPosition();
        } catch (Exception e) {
        }
        super.onPause();
        this.o.c();
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        this.m = bundle.getInt("playback_position", 0);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.o.b();
        if (this.d) {
            if (!this.d || this.m <= 0) {
                return;
            }
            e();
            this.m = 0;
            this.d = false;
            return;
        }
        if (!this.e) {
            if (this.f) {
                this.m = 0;
                this.f = false;
                return;
            }
            return;
        }
        if (com.estrongs.android.pop.p.a() >= 8) {
            new com.estrongs.android.util.aj(this.k).a("resume");
            if (com.estrongs.android.pop.p.a() >= 14) {
                this.k.seekTo(this.m);
            }
            if ("Market".startsWith("Spreadtrum")) {
                if (this.i) {
                    this.k.start();
                } else {
                    this.f371b = true;
                }
            }
        } else {
            this.k.start();
        }
        this.e = false;
        this.m = 0;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("playback_position", this.m);
    }

    @Override // android.app.Activity
    public void onStop() {
        try {
            com.estrongs.android.util.m.b();
            this.k.stopPlayback();
            this.d = true;
        } catch (Exception e) {
        }
        super.onStop();
    }

    @Override // com.estrongs.android.ui.e.gh
    public Rect q() {
        if (this.E == null) {
            this.E = new Rect();
            int[] iArr = new int[2];
            View findViewById = findViewById(C0000R.id.menu_layout);
            findViewById.getLocationInWindow(iArr);
            this.E = new Rect(iArr[0], iArr[1], iArr[0] + findViewById.getMeasuredWidth(), iArr[1] + findViewById.getMeasuredHeight());
        }
        return this.E;
    }
}
