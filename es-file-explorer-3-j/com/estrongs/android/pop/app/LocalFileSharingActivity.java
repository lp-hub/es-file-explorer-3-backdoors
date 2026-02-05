package com.estrongs.android.pop.app;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class LocalFileSharingActivity extends ESActivity implements AdapterView.OnItemClickListener, com.estrongs.a.a.h, com.estrongs.a.a.k {
    private static LocalFileSharingActivity j;

    /* renamed from: a, reason: collision with root package name */
    TextView f360a;

    /* renamed from: b, reason: collision with root package name */
    private NotificationManager f361b;
    private ListView d;
    private cs[] e;
    private BaseAdapter g;
    private com.estrongs.fs.b.ae h;
    private Handler i;
    private com.estrongs.android.ui.theme.al k;
    private com.estrongs.android.ui.view.az l;
    private TextView m;
    private boolean n;
    private com.estrongs.android.ui.b.ag o;
    private com.estrongs.android.ui.e.bq p;
    private FrameLayout s;
    private FrameLayout t;
    private boolean c = false;
    private List<com.estrongs.fs.g> f = new ArrayList();
    private ProgressBar q = null;
    private TextView r = null;

    public static void a() {
        if (j == null) {
            return;
        }
        j.i();
        j.g.notifyDataSetChanged();
    }

    public static void a(ESActivity eSActivity, ArrayList<String> arrayList, boolean z) {
        Intent intent = new Intent();
        intent.putExtra("play", z);
        intent.putStringArrayListExtra("files_selected", arrayList);
        intent.setClass(eSActivity, LocalFileSharingActivity.class);
        eSActivity.startActivity(intent);
    }

    public static void a(ESActivity eSActivity, List<com.estrongs.fs.g> list) {
        a(eSActivity, list, false);
    }

    public static void a(ESActivity eSActivity, List<com.estrongs.fs.g> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(list.get(i).getAbsolutePath());
        }
        if (com.estrongs.fs.b.ae.a(eSActivity) == null) {
            EsNetworkActivity.a(eSActivity, (ArrayList<String>) arrayList, z);
        } else if (arrayList.size() == 1 && com.estrongs.android.util.ak.aP((String) arrayList.get(0))) {
            String str = com.estrongs.android.pop.a.c + "/" + com.estrongs.android.util.ak.d((String) arrayList.get(0));
            AppRunner.a((Activity) eSActivity, (String) arrayList.get(0), str, (Runnable) new ck(arrayList, str, eSActivity, z), false);
        } else {
            a(eSActivity, (ArrayList<String>) arrayList, z);
        }
    }

    private void a(boolean z) {
        this.s.removeAllViews();
        this.s.addView(com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.file_sharing, (ViewGroup) null));
        FrameLayout frameLayout = (FrameLayout) findViewById(C0000R.id.body_container);
        frameLayout.setBackgroundDrawable(this.k.g());
        if (this.t == null) {
            this.t = (FrameLayout) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.content_file_sharing, (ViewGroup) null);
            frameLayout.addView(this.t);
            this.d = (ListView) this.t.findViewById(C0000R.id.list_devices);
            this.f360a = (TextView) this.t.findViewById(C0000R.id.empty);
            this.d.setEmptyView(this.f360a);
            this.d.setAdapter((ListAdapter) k());
            this.d.setOnItemClickListener(this);
            this.q = (ProgressBar) this.t.findViewById(C0000R.id.finding_progress);
            this.r = (TextView) this.t.findViewById(C0000R.id.ip_info);
            this.p = new com.estrongs.android.ui.e.bq(this, this.n);
            synchronized (this.e) {
                if (this.e.length == 0) {
                    if (this.h == null && z) {
                        this.h = com.estrongs.fs.b.ae.a(this, this, this, true);
                    }
                    this.f360a.setText("");
                } else if (this.h != null) {
                }
            }
        } else {
            frameLayout.removeAllViews();
            frameLayout.addView(this.t);
        }
        this.m = (TextView) findViewById(C0000R.id.label);
        this.m.setText(C0000R.string.es_net_choose_target);
        this.l = new com.estrongs.android.ui.view.az(this, (RelativeLayout) findViewById(C0000R.id.toolbar_bottom), 1);
        if (this.c) {
            this.p.a(2, C0000R.string.action_play_to, C0000R.drawable.toolbar_playto);
        }
        this.l.a("normal_mode", this.p);
        this.l.a("normal_mode", (Boolean) false);
        j();
    }

    private void h() {
        FrameLayout frameLayout = (FrameLayout) findViewById(C0000R.id.body_container);
        if (frameLayout != null) {
            frameLayout.removeView(this.t);
        }
        this.t = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        synchronized (this.e) {
            cs[] a2 = cs.a(com.estrongs.fs.b.ae.b(this));
            for (int i = 0; i < a2.length; i++) {
                for (int i2 = 0; i2 < this.e.length; i2++) {
                    if (this.e[i2].f638b.equals(a2[i].f638b)) {
                        a2[i].c = this.e[i2].c;
                    }
                }
            }
            this.e = a2;
            l();
        }
    }

    private void j() {
        ImageView imageView = (ImageView) findViewById(C0000R.id.tool_return);
        ((LinearLayout) imageView.getParent()).setOnClickListener(new cl(this, imageView));
        imageView.setOnClickListener(new cm(this));
    }

    private BaseAdapter k() {
        this.g = new cj(this);
        return this.g;
    }

    private void l() {
        if (this.p == null) {
            return;
        }
        int i = 0;
        while (i < this.e.length && this.e[i].c) {
            i++;
        }
        if (i == this.e.length) {
            this.p.a(1, C0000R.string.action_select_none, C0000R.drawable.toolbar_edit_selectnone);
        } else {
            this.p.a(1, C0000R.string.action_select_all, C0000R.drawable.toolbar_edit_selectall);
        }
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 4 || i2 == 5) {
            Message obtain = Message.obtain(this.i, 1, null);
            if (obtain != null && this.i != null) {
                this.i.sendMessage(obtain);
            }
            this.h = null;
        }
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        Message obtain = Message.obtain(this.i, 0, iVar.f196a);
        if (obtain == null || this.i == null) {
            return;
        }
        this.i.sendMessage(obtain);
    }

    public void b() {
        try {
            this.m.setText(C0000R.string.progress_transferring);
            synchronized (this.e) {
                boolean z = false;
                for (int i = 0; i < this.e.length; i++) {
                    if (this.e[i].c) {
                        if (this.c) {
                            Notification notification = new Notification();
                            notification.tickerText = getString(C0000R.string.action_share);
                            notification.when = System.currentTimeMillis();
                            notification.icon = C0000R.drawable.toolbar_playto;
                            notification.flags |= 2;
                            com.estrongs.fs.b.ag.a(this, this.f.get(0), this.e[i].f638b);
                            Intent intent = new Intent(this, (Class<?>) FileSharingNotificationActivity.class);
                            StringBuilder sb = new StringBuilder();
                            int size = this.f.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                sb.append(this.f.get(i2).getName());
                                if (i2 < size - 1) {
                                    sb.append(",");
                                }
                            }
                            intent.putExtra("file_name", sb.toString());
                            notification.setLatestEventInfo(this, getString(C0000R.string.action_share), null, PendingIntent.getActivity(this, 0, intent, 0));
                            this.f361b.notify(1, notification);
                            z = true;
                        } else {
                            com.estrongs.fs.b.at.a(this, this.f, this.e[i].f638b, true);
                            z = true;
                        }
                    }
                }
                if (z) {
                    finish();
                } else {
                    com.estrongs.android.ui.view.z.a(this, C0000R.string.select_device, 1).show();
                }
            }
        } catch (Exception e) {
        }
    }

    public void c() {
        if (((String) this.p.a(0).getTitle()).equals(getString(C0000R.string.action_refresh))) {
            if (this.h != null) {
                this.h.requestStop();
            }
            this.h = com.estrongs.fs.b.ae.a(this, this, this, true);
            this.f360a.setText("");
            return;
        }
        this.h.requestStop();
        this.p.a(0, C0000R.string.action_refresh, C0000R.drawable.toolbar_refresh);
        this.q.setVisibility(8);
        this.r.setVisibility(8);
        this.f360a.setText(C0000R.string.es_net_target_scanning);
    }

    public void d() {
        synchronized (this.e) {
            for (int i = 0; i < this.e.length; i++) {
                this.e[i].c = true;
            }
        }
        l();
        this.g.notifyDataSetChanged();
    }

    public void e() {
        synchronized (this.e) {
            for (int i = 0; i < this.e.length; i++) {
                this.e[i].c = false;
            }
        }
        l();
        this.g.notifyDataSetChanged();
    }

    public void f() {
        if (this.o != null) {
            this.o.show();
            return;
        }
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.dialog_file_sharing, (ViewGroup) null);
        ((Button) inflate.findViewById(C0000R.id.button)).setOnClickListener(new cn(this));
        com.estrongs.android.ui.b.aq a2 = new com.estrongs.android.ui.b.aq(this).a(C0000R.string.message_hint).a(inflate);
        if (com.estrongs.android.pop.m.x) {
            a2.b(C0000R.string.confirm_cancel, new ci(this)).c(C0000R.string.message_retry, new cr(this));
        } else {
            a2.d(C0000R.string.confirm_cancel, new cq(this)).e(C0000R.string.message_retry, new cp(this)).f(C0000R.string.wifi_join_es_network, new co(this));
        }
        this.o = a2.b();
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.n = getResources().getConfiguration().orientation == 1;
        h();
        a(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x01cb, code lost:
    
        finish();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01ce, code lost:
    
        if (r1 == null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01d0, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x014f  */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCreate(Bundle bundle) {
        Cursor cursor;
        Cursor cursor2;
        int i = 0;
        Cursor cursor3 = null;
        super.onCreate(bundle);
        setContentView(C0000R.layout.main);
        this.s = (FrameLayout) findViewById(C0000R.id.container_body);
        this.f361b = (NotificationManager) getSystemService("notification");
        this.k = com.estrongs.android.ui.theme.al.a(this);
        this.n = getResources().getConfiguration().orientation == 1;
        this.e = cs.a(com.estrongs.fs.b.ae.b(this));
        this.c = getIntent().getBooleanExtra("play", false);
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra("files_selected");
        if (stringArrayListExtra != null) {
            while (i < stringArrayListExtra.size()) {
                this.f.add(com.estrongs.fs.d.a(this).j(stringArrayListExtra.get(i)));
                i++;
            }
        } else {
            String action = getIntent().getAction();
            System.out.println("*****************" + action);
            if (action != null && action.equals("android.intent.action.SEND")) {
                Uri uri = (Uri) getIntent().getParcelableExtra("android.intent.extra.STREAM");
                if (uri == null) {
                    finish();
                    return;
                }
                String path = uri.getPath();
                com.estrongs.fs.d a2 = com.estrongs.fs.d.a(this);
                String scheme = uri.getScheme();
                if (scheme != null && scheme.startsWith("content")) {
                    String host = uri.getHost();
                    if (!host.equals("media") && !"com.estrongs.files".equals(host)) {
                        Toast.makeText(this, C0000R.string.operation_not_supported_message, 1).show();
                        finish();
                        return;
                    }
                    try {
                        cursor = getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                    } catch (Exception e) {
                        cursor2 = null;
                    } catch (Throwable th) {
                        th = th;
                        cursor = null;
                    }
                    try {
                        if (cursor == null) {
                            finish();
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                        cursor.moveToNext();
                        path = cursor.getString(cursor.getColumnIndexOrThrow("_data"));
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Exception e2) {
                        cursor2 = cursor;
                        try {
                            finish();
                            if (cursor2 != null) {
                                cursor2.close();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            cursor = cursor2;
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                }
                this.f.add(a2.j(path));
                if (com.estrongs.fs.b.ae.a(this) == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(uri.getPath());
                    EsNetworkActivity.a(this, (ArrayList<String>) arrayList, this.c);
                    finish();
                    return;
                }
            } else if (action != null && action.equals("android.intent.action.SEND_MULTIPLE")) {
                new ArrayList();
                ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("android.intent.extra.STREAM");
                if (parcelableArrayListExtra != null) {
                    while (true) {
                        int i2 = i;
                        if (i2 >= parcelableArrayListExtra.size()) {
                            break;
                        }
                        Uri uri2 = (Uri) parcelableArrayListExtra.get(i2);
                        String path2 = uri2.getPath();
                        com.estrongs.fs.d a3 = com.estrongs.fs.d.a(this);
                        String scheme2 = uri2.getScheme();
                        if (scheme2 != null && scheme2.startsWith("content")) {
                            String host2 = uri2.getHost();
                            if (!host2.equals("media") && !"com.estrongs.files".equals(host2)) {
                                Toast.makeText(this, C0000R.string.operation_not_supported_message, 1).show();
                                finish();
                                return;
                            }
                            try {
                                try {
                                    Cursor query = getContentResolver().query(uri2, new String[]{"_data"}, null, null, null);
                                    if (query == null) {
                                        break;
                                    }
                                    try {
                                        query.moveToNext();
                                        path2 = query.getString(query.getColumnIndexOrThrow("_data"));
                                        if (query != null) {
                                            query.close();
                                        }
                                    } catch (Exception e3) {
                                        cursor3 = query;
                                        finish();
                                        if (cursor3 != null) {
                                            cursor3.close();
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        cursor3 = query;
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                        throw th;
                                    }
                                } catch (Exception e4) {
                                }
                            } catch (Throwable th5) {
                                th = th5;
                            }
                        }
                        this.f.add(a3.j(path2));
                        i = i2 + 1;
                    }
                } else {
                    finish();
                    return;
                }
            } else {
                finish();
                return;
            }
        }
        a(true);
        j = this;
        this.i = new ch(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.h != null) {
            this.h.removeTaskStatusChangeListener(this);
        }
        j = null;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j2) {
        synchronized (this.e) {
            if (this.e.length != 0) {
                cs csVar = this.e[i];
                csVar.c = !csVar.c;
                l();
                this.g.notifyDataSetChanged();
            }
        }
    }
}
