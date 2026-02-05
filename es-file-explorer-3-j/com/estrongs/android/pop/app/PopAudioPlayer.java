package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.view.DragListView;
import com.estrongs.android.widget.RealViewSwitcher;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class PopAudioPlayer extends ESActivity implements com.estrongs.android.ui.e.gh {
    private static String[] L = null;
    private ei A;
    private ImageView C;
    private View Q;
    private TextView R;
    private com.estrongs.android.pop.app.a.a S;
    private Bitmap T;
    private com.estrongs.android.ui.view.v U;
    private Rect Y;
    protected int c;
    protected int d;
    private com.estrongs.android.pop.q h;
    private RealViewSwitcher i;
    private View j;
    private TextView k;
    private TextView l;
    private ImageView m;
    private com.estrongs.android.ui.d.b n;
    private View o;
    private DragListView p;
    private com.estrongs.android.ui.view.az q;
    private com.estrongs.android.ui.e.o r;
    private com.estrongs.android.ui.e.j s;
    private com.estrongs.android.ui.e.er t;
    private View u;
    private View v;
    private View w;
    private Button x;
    private com.estrongs.android.ui.b.de y;
    private boolean z;
    private ek g = new cy(this);
    private AudioPlayerService B = null;
    private boolean D = false;
    private List<String> E = null;
    private String F = null;
    private boolean G = false;
    private String H = null;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;

    /* renamed from: a, reason: collision with root package name */
    int f364a = -1;

    /* renamed from: b, reason: collision with root package name */
    int f365b = -1;
    private final BroadcastReceiver M = new Cdo(this);
    private final BroadcastReceiver N = new dx(this);
    private int O = 0;
    private int P = 0;
    boolean e = false;
    com.estrongs.android.widget.av f = null;
    private int V = -1;
    private Handler W = new ds(this);
    private ServiceConnection X = new dw(this);

    private void A() {
        if (this.Q != null) {
            ((ImageView) this.Q.findViewById(C0000R.id.tool_done)).setOnClickListener(new cz(this));
            ((ImageView) this.Q.findViewById(C0000R.id.tool_select_all)).setOnClickListener(new da(this));
            ((ImageView) this.Q.findViewById(C0000R.id.tool_select_none)).setOnClickListener(new db(this));
            ((ImageView) this.Q.findViewById(C0000R.id.tool_select_interval)).setOnClickListener(new dc(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
    }

    private void C() {
        this.q = new com.estrongs.android.ui.view.az(this, (RelativeLayout) findViewById(C0000R.id.switcher_tools_bottom), 1);
        this.r = new com.estrongs.android.ui.e.o(this, this.z);
        this.q.a("playing", this.r);
        this.q.a("playing", (Boolean) false);
        this.s = new com.estrongs.android.ui.e.j(this, this.z);
        this.q.a("playlist", this.s);
        this.t = new com.estrongs.android.ui.e.er(this, this.z);
        this.q.a("playlist_edit", this.t);
    }

    private void D() {
        LinearLayout linearLayout = (LinearLayout) findViewById(C0000R.id.container_indicators);
        this.n = new dd(this, linearLayout, this, linearLayout);
    }

    private void E() {
        this.w = this.j.findViewById(C0000R.id.v_playlist);
        this.w.setOnClickListener(new dh(this));
        this.x = (Button) this.j.findViewById(C0000R.id.b_playlist);
        a(true);
    }

    private void F() {
        this.j = findViewById(C0000R.id.audio_playing_toolbar_top);
        this.k = (TextView) this.j.findViewById(C0000R.id.title_playing);
        this.l = (TextView) this.j.findViewById(C0000R.id.artist_playing);
        this.u = this.j.findViewById(C0000R.id.tool_playing_container);
        this.v = this.j.findViewById(C0000R.id.tool_playlist_container);
        this.j.findViewById(C0000R.id.tool_return_container).setOnClickListener(new dj(this));
        View findViewById = this.j.findViewById(C0000R.id.tool_menu_container);
        this.C = (ImageView) findViewById.findViewById(C0000R.id.tool_menu);
        findViewById.setOnClickListener(new dk(this));
    }

    private void G() {
        if (this.y == null) {
            this.y = com.estrongs.android.ui.b.de.a(this, getString(C0000R.string.progress_loading), getString(C0000R.string.wait_loading_file), true, true);
        } else {
            this.y.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        if (this.y != null) {
            this.y.dismiss();
        }
    }

    private void I() {
        this.o = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.audio_playing_content, (ViewGroup) null);
        this.m = (ImageView) this.o.findViewById(C0000R.id.album_art);
        this.p = new DragListView(this, null);
        this.p.setOnScrollListener(new dp(this));
        this.p.setCacheColorHint(0);
        this.p.setSelector(C0000R.drawable.content_listview_selector);
        this.U = new com.estrongs.android.ui.view.v(this, this.W);
        this.p.setAdapter((ListAdapter) this.U);
        this.i.addView(this.o);
        this.i.addView(this.p);
        this.f = new dq(this);
        this.i.a(this.f);
        this.p.setOnItemClickListener(this.U);
        this.p.setOnItemLongClickListener(new dr(this));
        this.i.c(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        this.r.b(this.O);
        this.r.c(this.P);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        b(500);
    }

    private void L() {
        this.W.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        Message obtainMessage = this.W.obtainMessage(6);
        this.W.removeMessages(6);
        this.W.sendMessage(obtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (this.D) {
            unbindService(this.X);
            this.D = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        Message obtainMessage = this.W.obtainMessage(8);
        obtainMessage.arg1 = i;
        obtainMessage.obj = Boolean.valueOf(z);
        this.W.removeMessages(8);
        this.W.sendMessageDelayed(obtainMessage, 100L);
    }

    public static void a(String[] strArr) {
        L = strArr;
    }

    private String[] a(Uri uri) {
        String decode = Uri.decode(uri.toString());
        if (decode.startsWith("file://")) {
            decode = decode.substring("file://".length());
        } else if (decode.startsWith("http://127.0.0.1:59777/")) {
            decode = com.estrongs.android.util.ak.be(decode);
        }
        return a(decode);
    }

    private String[] a(String str) {
        if (com.estrongs.android.util.ak.aO(str)) {
            return c(str);
        }
        Exception[] excArr = new Exception[1];
        String[][] strArr = new String[1];
        Thread thread = new Thread(new ec(this, strArr, str, excArr));
        thread.start();
        thread.join();
        if (excArr[0] != null) {
            throw excArr[0];
        }
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        Message obtainMessage = this.W.obtainMessage(1);
        this.W.removeMessages(1);
        this.W.sendMessageDelayed(obtainMessage, i);
    }

    private boolean b(String[] strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (str.endsWith(".m3u")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] c(String str) {
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(com.estrongs.fs.d.a().e(str)));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            arrayList.add(readLine);
        }
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (IOException e) {
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    private void d(int i, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        Message obtainMessage = this.W.obtainMessage(2);
        obtainMessage.arg1 = i;
        this.W.removeMessages(2);
        this.W.sendMessageDelayed(obtainMessage, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i, int i2) {
        if (this.V != -1 && i != 0) {
            d(this.V, 0);
            this.V = -1;
        }
        switch (i) {
            case 0:
                this.r.h();
                this.s.h();
                d(i2, 0);
                if (this.A != null) {
                    this.A.a();
                    break;
                }
                break;
            case 1:
            case 4:
                this.r.j();
                this.s.j();
                d(i2, 1);
                break;
            case 2:
                this.r.i();
                this.s.i();
                d(i2, 2);
                break;
            case 3:
                this.r.h();
                this.s.h();
                d(i2, 3);
                this.A.a();
                this.V = i2;
                d();
                a(this.B.D());
                e();
                break;
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(int i) {
        int i2 = i / LoginCallBack.REQUEST_LOGINPROTECT;
        return String.format("%02d:%02d", Integer.valueOf(i2 / 60), Integer.valueOf(i2 % 60));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i, int i2) {
        a(i, i2);
        this.t.d(i != 0 ? i == 1 ? 2 : 3 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(int i, int i2) {
        Message obtainMessage = this.W.obtainMessage(7);
        obtainMessage.arg1 = i2;
        obtainMessage.arg2 = i;
        this.W.removeMessages(7);
        this.W.sendMessageDelayed(obtainMessage, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i, int i2) {
        Message obtainMessage = this.W.obtainMessage(4);
        obtainMessage.arg1 = i;
        obtainMessage.arg2 = i2;
        this.W.sendMessage(obtainMessage);
    }

    public static String[] w() {
        return L;
    }

    private void y() {
        ed edVar = new ed(this, this);
        edVar.setBackgroundColor(0);
        edVar.addView(com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.audio_player_activity, (ViewGroup) null));
        setContentView(edVar);
        this.i = (RealViewSwitcher) findViewById(C0000R.id.switcher);
        F();
        C();
        D();
    }

    private void z() {
        I();
        this.Q = findViewById(C0000R.id.select_bar_top);
        this.R = (TextView) findViewById(C0000R.id.selected_info);
        A();
        this.W.post(new eg(this));
        E();
    }

    public void a() {
        if (this.Q != null) {
            this.Q.setVisibility(0);
        }
    }

    public void a(int i) {
        this.i.b(i);
    }

    public void a(int i, int i2) {
        if (this.Q != null) {
            if (i == i2) {
                this.Q.findViewById(C0000R.id.tool_select_none).setVisibility(0);
                this.Q.findViewById(C0000R.id.tool_select_all).setVisibility(8);
            } else {
                this.Q.findViewById(C0000R.id.tool_select_none).setVisibility(8);
                this.Q.findViewById(C0000R.id.tool_select_all).setVisibility(0);
            }
            this.R.setText(i + "/" + i2);
            ImageView imageView = (ImageView) this.Q.findViewById(C0000R.id.tool_select_interval);
            boolean c = this.U.c();
            imageView.setEnabled(c);
            if (c) {
                imageView.setColorFilter((ColorFilter) null);
            } else {
                imageView.setColorFilter(new LightingColorFilter(1, -7829368));
            }
        }
    }

    public void a(Bitmap bitmap) {
        if (this.m != null) {
            this.m.setImageBitmap(bitmap);
        }
        if (this.s != null) {
            this.s.a(bitmap);
        }
        if (this.T != null && !this.T.isRecycled() && this.T != bitmap) {
            try {
                this.T.recycle();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.T = bitmap;
    }

    public void a(com.estrongs.android.pop.app.a.af afVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(afVar);
        this.B.a(linkedList);
        if (this.B.h().c().size() == 0) {
            this.B.t();
            a(-1, false);
        } else {
            a(this.B.d(), true);
        }
        a(false);
        e();
    }

    public void a(CharSequence charSequence) {
        this.x.setText(charSequence);
    }

    public void a(List<com.estrongs.android.pop.app.a.af> list) {
        list.toArray(new com.estrongs.android.pop.app.a.af[list.size()]);
        com.estrongs.android.pop.app.a.aj a2 = com.estrongs.android.pop.app.a.aj.a();
        if (!a2.c()) {
            a2.a((com.estrongs.android.pop.app.a.ag) null);
        }
        com.estrongs.android.pop.app.a.ag b2 = a2.b();
        b2.d();
        Iterator<com.estrongs.android.pop.app.a.af> it = list.iterator();
        while (it.hasNext()) {
            b2.b(it.next().f397b);
        }
        this.B.a(b2);
        e(0);
        a(true);
        e();
    }

    public void a(List<com.estrongs.android.pop.app.a.af> list, com.estrongs.android.pop.app.a.ag agVar) {
        if (this.B.h() != agVar) {
            Iterator<com.estrongs.android.pop.app.a.af> it = list.iterator();
            while (it.hasNext()) {
                agVar.b(it.next().f397b);
            }
        } else {
            ArrayList arrayList = new ArrayList();
            Iterator<com.estrongs.android.pop.app.a.af> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().f397b);
            }
            this.B.b(arrayList);
        }
    }

    public void a(boolean z) {
        if (this.B != null) {
            if (z) {
                com.estrongs.android.pop.app.a.ag h = this.B.h();
                this.U.a(h);
                String a2 = h.a();
                if (a2 == null) {
                    this.x.setText(h.b());
                } else {
                    this.x.setText(a2);
                }
            } else {
                com.estrongs.android.pop.app.a.ag a3 = this.U.a();
                String a4 = a3.a();
                if (a4 == null) {
                    this.x.setText(a3.b());
                } else {
                    this.x.setText(a4);
                }
            }
            this.U.notifyDataSetChanged();
        }
    }

    public void b() {
        if (this.Q != null) {
            this.Q.setVisibility(4);
        }
    }

    public void b(int i, int i2) {
        if (this.B.h() == this.U.a()) {
            this.B.a(i, i2);
        } else {
            com.estrongs.android.pop.app.a.ag a2 = this.U.a();
            a2.a(a2.c().get(i), i2);
        }
        b(false);
    }

    public void b(List<com.estrongs.android.pop.app.a.af> list) {
        com.estrongs.android.pop.app.a.ag n = n();
        if (this.B.h() == n) {
            com.estrongs.android.pop.app.a.af t = t();
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).equals(t)) {
                    z = true;
                }
            }
            this.B.a(list);
            if (n.c().size() == 0) {
                this.B.t();
                a(-1, false);
            } else if (z) {
                a(this.B.d(), true);
            }
        } else {
            n.a(list);
        }
        a(false);
        e();
    }

    public void b(boolean z) {
        if (this.U.a() != this.B.h()) {
            this.U.a(-1, false, false);
            this.U.notifyDataSetChanged();
            return;
        }
        int i = this.B.i();
        this.U.a(i, !this.B.k() || this.B.m(), this.B.n());
        this.U.notifyDataSetChanged();
        if (z) {
            if (this.c >= i) {
                this.p.setSelection(i);
            } else if (this.d <= i + 1) {
                this.p.setSelection(((i + this.c) + 2) - this.d);
            }
        }
    }

    public void c() {
        if (this.S == null) {
            this.S = new dl(this, this);
        }
        if (this.S.b()) {
            this.S.d();
        } else {
            this.S.c();
            this.C.setImageResource(C0000R.drawable.toolbar_menu_expand);
        }
    }

    public void d() {
        com.estrongs.android.pop.app.a.af q = this.B.q();
        if (this.k != null) {
            this.k.setText(this.B.B());
        }
        if (this.s != null) {
            this.s.a(this.B.B());
        }
        if (q == null) {
            if (this.l != null) {
                this.l.setText("");
            }
            if (this.s != null) {
                this.s.b("");
            }
        } else if (q.c()) {
            if (this.l != null) {
                this.l.setText(this.B.C());
            }
            if (this.s != null) {
                this.s.b(this.B.C());
            }
        } else {
            new Thread(new dm(this, q)).start();
        }
        e();
    }

    public void e() {
        b(true);
    }

    public int f() {
        return this.i.h();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        this.J = true;
    }

    public void g() {
        boolean z = true;
        if (this.B == null || this.B.h() == null) {
            return;
        }
        boolean z2 = (this.B.k() && !this.B.m()) || this.B.n();
        if (!z2 || this.B.p() <= 5000) {
            z = false;
        } else {
            h();
        }
        if (z) {
            return;
        }
        int f = this.B.f();
        this.B.t();
        a(f, z2);
    }

    public void h() {
        this.B.c(0);
    }

    public void i() {
        this.O = (this.O + 1) % 2;
        this.B.a(this.O);
        J();
    }

    public void j() {
        if (this.B.h() == null) {
            this.r.h();
            this.s.h();
        } else if (this.B.k() && !this.B.m()) {
            this.B.u();
        } else if (this.B.m()) {
            this.B.E();
        } else {
            this.B.r();
        }
    }

    public void k() {
        this.P = (this.P + 1) % 3;
        this.B.b(this.P);
        J();
    }

    public void l() {
        if (this.B != null) {
            int e = this.B.e();
            boolean m = this.B.m();
            this.B.t();
            a(e, !m);
        }
    }

    public void m() {
        if (this.B != null) {
            this.B.t();
        }
    }

    public com.estrongs.android.pop.app.a.ag n() {
        if (this.U != null) {
            return this.U.a();
        }
        return null;
    }

    public void o() {
        com.estrongs.android.pop.app.a.ag a2;
        if (this.B == null || (a2 = this.U.a()) == null) {
            return;
        }
        com.estrongs.android.pop.app.a.aj.a().b(a2);
        if (a2 == this.B.h()) {
            this.B.t();
            u();
        }
        a(true);
        e();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.estrongs.android.ui.pcs.d k = com.estrongs.android.ui.pcs.aw.a().k();
        if (k != null) {
            k.a(i, intent, i2);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.Y = null;
        com.estrongs.android.ui.g.e.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.h = com.estrongs.android.pop.q.a(this);
        try {
            this.z = getResources().getConfiguration().orientation == 1;
        } catch (Exception e) {
            e.printStackTrace();
            this.z = true;
        }
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra("hasplaylist", false);
        String[] strArr = null;
        if (booleanExtra) {
            String[] w = w();
            if (b(w)) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < w.length; i++) {
                    if (w[i].endsWith(".m3u")) {
                        try {
                            String[] a2 = a(w[i]);
                            if (a2 != null) {
                                arrayList.addAll(Arrays.asList(a2));
                            }
                        } catch (Exception e2) {
                        }
                    } else {
                        arrayList.add(w[i]);
                    }
                }
                if (arrayList.size() == 0) {
                    com.estrongs.android.ui.view.z.a(this, C0000R.string.cannot_play_audio, 1).show();
                    finish();
                    return;
                }
                strArr = (String[]) arrayList.toArray(new String[0]);
            } else {
                strArr = w;
            }
        } else if (intent.getData() != null && Uri.decode(intent.getData().toString()).endsWith(".m3u")) {
            try {
                strArr = a(intent.getData());
            } catch (Exception e3) {
                com.estrongs.android.ui.view.z.a(this, C0000R.string.cannot_play_audio, 1).show();
                finish();
                return;
            }
        }
        this.G = intent.getBooleanExtra("showlist", false);
        if (strArr == null && !this.G) {
            Uri data = intent.getData();
            if (data != null) {
                String decode = Uri.decode(data.toString());
                if (decode.startsWith("file://")) {
                    decode = decode.substring("file://".length());
                    this.H = decode;
                } else if (decode.startsWith("http://127.0.0.1:59777/")) {
                    decode = AudioPlayerService.j + decode.substring("http://127.0.0.1:59777/".length());
                }
                this.E = new LinkedList();
                this.E.clear();
                this.E.add(decode);
            }
        } else if (strArr != null) {
            this.E = new LinkedList();
            this.E.clear();
            for (String str : strArr) {
                this.E.add(str);
            }
        }
        y();
        z();
        com.estrongs.android.pop.app.a.aj a3 = com.estrongs.android.pop.app.a.aj.a();
        if (!a3.h()) {
            G();
            a3.a(new dy(this));
            new ea(this, a3).start();
        }
        if (!a3.d()) {
            new eb(this, a3).start();
        }
        ContextWrapper contextWrapper = new ContextWrapper(this);
        Intent intent2 = new Intent(contextWrapper, (Class<?>) AudioPlayerService.class);
        intent.putExtra("hasplaylist", booleanExtra);
        contextWrapper.startService(intent2);
        p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        this.I = true;
        if (this.B != null) {
            this.B.a((ek) null);
            if ((!this.B.k() || this.B.m()) && !this.B.n()) {
                this.B.z();
                this.B.t();
                this.B.o();
            }
            N();
        } else if (!"Market".startsWith("Spreadtrum") && !"Market".equalsIgnoreCase("Huawei")) {
            N();
        } else if (this.K) {
            this.K = false;
            p();
        } else {
            N();
        }
        try {
            if (!"Market".equalsIgnoreCase("Market")) {
                unregisterReceiver(this.M);
                unregisterReceiver(this.N);
            }
        } catch (Exception e) {
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.U.b()) {
                r();
                return true;
            }
            this.J = true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        Uri data;
        String[] strArr = null;
        try {
            if (intent.getBooleanExtra("hasplaylist", false)) {
                strArr = w();
                L = null;
                if (b(strArr)) {
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < strArr.length; i++) {
                        if (strArr[i].endsWith(".m3u")) {
                            try {
                                String[] a2 = a(strArr[i]);
                                if (a2 != null) {
                                    arrayList.addAll(Arrays.asList(a2));
                                }
                            } catch (Exception e) {
                            }
                        } else {
                            arrayList.add(strArr[i]);
                        }
                    }
                    if (arrayList.size() == 0) {
                        com.estrongs.android.ui.view.z.a(this, C0000R.string.cannot_play_audio, 1).show();
                        return;
                    }
                    strArr = (String[]) arrayList.toArray(new String[0]);
                }
            } else if (intent.getData() != null && Uri.decode(intent.getData().toString()).endsWith(".m3u")) {
                try {
                    strArr = a(intent.getData());
                } catch (Exception e2) {
                    com.estrongs.android.ui.view.z.a(this, C0000R.string.cannot_play_audio, 1).show();
                    return;
                }
            }
            if (strArr != null || (data = intent.getData()) == null) {
                return;
            }
            String decode = Uri.decode(data.toString());
            if (decode.startsWith("file://")) {
                decode = decode.substring("file://".length());
                this.H = decode;
            } else if (decode.startsWith("http://127.0.0.1:59777/")) {
                decode = AudioPlayerService.j + decode.substring("http://127.0.0.1:59777/".length());
            }
            this.E = new LinkedList();
            this.E.clear();
            this.E.add(decode);
            N();
            p();
        } catch (Exception e3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        if (this.B != null && this.B.k() && !this.B.m()) {
            this.B.a(true);
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.B == null) {
            if ("Market".startsWith("Spreadtrum") || "Market".equalsIgnoreCase("Huawei")) {
                p();
                return;
            }
            return;
        }
        this.B.a(false);
        if (!this.e) {
            if (this.B.k()) {
                int i = this.B.i();
                if (this.B.m()) {
                    h(2, i);
                    return;
                } else if (this.B.n()) {
                    h(3, i);
                    return;
                } else {
                    h(1, i);
                    return;
                }
            }
            return;
        }
        this.e = false;
        try {
            this.B.t();
            com.estrongs.android.pop.app.a.ag b2 = com.estrongs.android.pop.app.a.aj.a().b();
            b2.d();
            for (int i2 = 0; i2 < this.E.size(); i2++) {
                b2.b(this.E.get(i2));
            }
            this.B.a(b2);
            a(this.B.d(), true);
            J();
            if (this.F != null) {
                a((CharSequence) this.F);
            } else {
                a(getText(C0000R.string.now_playing_title));
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        K();
        if (this.B != null) {
            this.B.f340a = false;
            this.B.a(this.g);
        }
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (this.B != null) {
            this.K = this.B.m();
            if (this.B.k() && !this.K) {
                this.B.A();
            }
        }
        if ("Market".startsWith("Spreadtrum") || "Market".equalsIgnoreCase("Huawei")) {
            N();
        }
        L();
        super.onStop();
    }

    void p() {
        if (this.D) {
            return;
        }
        bindService(new Intent(this, (Class<?>) AudioPlayerService.class), this.X, 1);
        this.D = true;
    }

    @Override // com.estrongs.android.ui.e.gh
    public Rect q() {
        if (this.Y == null) {
            this.Y = new Rect();
            int[] iArr = new int[2];
            this.i.getLocationInWindow(iArr);
            this.Y = new Rect(iArr[0], iArr[1], iArr[0] + this.i.getMeasuredWidth(), iArr[1] + this.i.getMeasuredHeight());
        }
        return this.Y;
    }

    public void r() {
        this.U.a(false);
    }

    public List<com.estrongs.android.pop.app.a.af> s() {
        return this.U.d();
    }

    public com.estrongs.android.pop.app.a.af t() {
        return this.B.q();
    }

    public void u() {
        com.estrongs.android.pop.app.a.aj a2 = com.estrongs.android.pop.app.a.aj.a();
        this.B.a(a2.e());
        this.U.a(a2.e());
        a(0, false);
    }

    public void v() {
        if (this.B.h() == com.estrongs.android.pop.app.a.aj.a().e()) {
            com.estrongs.android.pop.app.a.aj.a().f();
            boolean z = !this.B.m();
            this.B.a(com.estrongs.android.pop.app.a.aj.a().e());
            a(0, z);
        } else {
            com.estrongs.android.pop.app.a.aj.a().f();
        }
        this.U.a(com.estrongs.android.pop.app.a.aj.a().e());
        a(false);
        e();
    }
}
