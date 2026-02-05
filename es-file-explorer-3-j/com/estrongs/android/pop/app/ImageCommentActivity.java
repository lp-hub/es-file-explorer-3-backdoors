package com.estrongs.android.pop.app;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.TypedMap;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class ImageCommentActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    SPFileInfo f355a;
    private String h;
    private View i;
    private ListView j;
    private View m;
    private View n;
    private com.estrongs.android.ui.theme.al o;

    /* renamed from: b, reason: collision with root package name */
    private LinkedList<Object> f356b = new LinkedList<>();
    private LayoutInflater c = null;
    private Object d = new Object();
    private com.estrongs.android.util.n e = null;
    private com.estrongs.android.util.n f = null;
    private com.estrongs.android.util.n g = null;
    private BaseAdapter k = null;
    private TypedMap l = new TypedMap();
    private Comparator<com.gmail.yuyang226.flickr.a.a.a> p = new bl(this);

    /* JADX INFO: Access modifiers changed from: private */
    public SPFileInfo a(String str) {
        SPFileInfo sPFileInfo = new SPFileInfo();
        Intent intent = getIntent();
        sPFileInfo.ownerId = intent.getStringExtra("ownerId");
        sPFileInfo.ownerUsername = intent.getStringExtra("ownerName");
        sPFileInfo.name = intent.getStringExtra("name");
        sPFileInfo.description = intent.getStringExtra("desc");
        long time = new Date().getTime();
        sPFileInfo.lastModifiedTime = intent.getLongExtra("createdTime", time);
        if (sPFileInfo.ownerId != null && sPFileInfo.ownerUsername != null && ((sPFileInfo.name != null || sPFileInfo.description != null) && sPFileInfo.lastModifiedTime != time)) {
            return sPFileInfo;
        }
        try {
            return PhotoInfoManager.getPhotoInfo(this.h);
        } catch (PhotoInfoException e) {
            e.printStackTrace();
            return sPFileInfo;
        }
    }

    private void a() {
        this.i = this.c.inflate(C0000R.layout.more_item, (ViewGroup) null);
        this.i.setOnClickListener(new bm(this));
        findViewById(C0000R.id.comment_page).setBackgroundDrawable(this.o.g());
        this.j = (ListView) findViewById(C0000R.id.comment_list);
        this.j.setCacheColorHint(0);
        this.j.setFastScrollEnabled(true);
        TextView textView = (TextView) findViewById(C0000R.id.path);
        ((TextView) findViewById(C0000R.id.title)).setText(C0000R.string.detail_page_title);
        textView.setText(getString(C0000R.string.category_picture) + ">" + Uri.parse(this.h).getHost());
        findViewById(C0000R.id.btn_return).setOnClickListener(new bn(this));
        this.m = findViewById(C0000R.id.btn_refresh);
        this.m.setOnClickListener(new bo(this));
        this.n = findViewById(C0000R.id.refresh_progress);
        ((View) ((ImageView) findViewById(C0000R.id.write_comment)).getParent()).setOnClickListener(new bp(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.e == null || !this.e.isAlive()) {
            this.i.findViewById(C0000R.id.progress).setVisibility(0);
            this.e = new bt(this, "Comment Loader", z);
            this.e.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.g == null || !this.g.isAlive()) {
            this.m.setVisibility(8);
            this.n.setVisibility(0);
            this.g = new bq(this, "Comment Refresher");
            this.g.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return "Facebook".equals(com.estrongs.android.util.ak.af(this.h));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] d() {
        String string = getString(C0000R.string.time_ago);
        return new String[]{getString(C0000R.string.time_seconds) + " " + string, getString(C0000R.string.time_minutes) + " " + string, getString(C0000R.string.time_hours) + " " + string, getString(C0000R.string.time_days) + " " + string, getString(C0000R.string.time_weeks) + " " + string, getString(C0000R.string.time_months) + " " + string};
    }

    private BaseAdapter e() {
        return new bw(this);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        if (this.e != null) {
            this.e.a();
            this.e = null;
        }
        if (this.f != null) {
            this.f.a();
            this.f = null;
        }
        if (this.g != null) {
            this.g.a();
            this.g = null;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            a(true);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.o = com.estrongs.android.ui.theme.al.a(this);
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.pic_comments, (ViewGroup) null);
        inflate.setBackgroundDrawable(this.o.g());
        setContentView(inflate);
        this.h = getIntent().getStringExtra("pic_path");
        this.c = com.estrongs.android.pop.esclasses.e.a(this);
        a();
        this.f356b.add(this.d);
        this.k = e();
        this.j.setAdapter((ListAdapter) this.k);
        this.j.setSelector(new ColorDrawable(0));
        this.l.put(INetFileSystem.LIST_LIMIT, 10);
        this.l.put(INetFileSystem.LIST_OFFSET, 0);
        a(false);
    }
}
