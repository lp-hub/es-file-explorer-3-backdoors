package com.estrongs.android.ui.b;

import android.content.Context;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class av {

    /* renamed from: a, reason: collision with root package name */
    private ag f1642a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1643b;
    private List<String> c;
    private List<String> d = new ArrayList();
    private final int e = 3;

    public av(Context context) {
        this.f1643b = context;
        b();
    }

    private void a(String str, String str2) {
        this.c.add(3, str);
        this.d.add(3, str2);
    }

    private String b(String str, String str2) {
        File file = new File(str, str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    private void b() {
        c();
        this.c.toArray(new String[this.c.size()]);
        ListView listView = new ListView(this.f1643b);
        listView.setCacheColorHint(0);
        listView.setDivider(this.f1643b.getResources().getDrawable(C0000R.drawable.toolbar_search_sp));
        listView.setSelector(C0000R.drawable.popupbox_listview_selector);
        az azVar = new az(this, true);
        listView.setAdapter((ListAdapter) azVar);
        listView.setOnItemClickListener(new aw(this, azVar));
        this.f1642a = new aq(this.f1643b).a(C0000R.string.open_default_window).a(listView).b(C0000R.string.confirm_ok, new ay(this, azVar)).c(C0000R.string.confirm_cancel, new ax(this)).a();
    }

    private void c() {
        this.c = new ArrayList();
        this.c.add(this.f1643b.getString(C0000R.string.location_home));
        this.c.add(this.f1643b.getString(C0000R.string.location_device_root));
        this.c.add(this.f1643b.getString(C0000R.string.location_sdcard));
        this.c.add(this.f1643b.getString(C0000R.string.category_picture));
        this.c.add(this.f1643b.getString(C0000R.string.category_music));
        this.c.add(this.f1643b.getString(C0000R.string.category_movie));
        this.c.add(this.f1643b.getString(C0000R.string.category_book));
        this.c.add(this.f1643b.getString(C0000R.string.action_download));
        this.c.add(this.f1643b.getString(C0000R.string.location_lan));
        this.c.add(this.f1643b.getString(C0000R.string.location_cloud));
        this.c.add(this.f1643b.getString(C0000R.string.category_pcs));
        this.c.add(this.f1643b.getString(C0000R.string.location_ftp));
        this.c.add(this.f1643b.getString(C0000R.string.location_device));
        this.c.add(this.f1643b.getString(C0000R.string.app_app_manager));
        this.c.add(this.f1643b.getString(C0000R.string.diskusage_title));
        this.c.add(this.f1643b.getString(C0000R.string.fast_access_remote));
        this.c.add(this.f1643b.getString(C0000R.string.app_download_manager));
        String b2 = com.estrongs.android.pop.b.b();
        String c = com.estrongs.android.pop.m.c(b2);
        if (c != null) {
            this.c.remove(2);
            this.c.add(2, c);
        }
        if (com.estrongs.android.pop.m.j) {
            this.c.remove(1);
        }
        if (!com.estrongs.android.pop.m.d) {
            this.c.remove(FexApplication.f325a.getString(C0000R.string.location_device));
        }
        if (!com.estrongs.android.pop.m.f) {
            this.c.remove(FexApplication.f325a.getString(C0000R.string.app_app_manager));
        }
        if (com.estrongs.android.pop.m.O) {
            this.c.remove(FexApplication.f325a.getString(C0000R.string.app_download_manager));
        }
        if (com.estrongs.android.pop.m.P) {
            this.c.remove(FexApplication.f325a.getString(C0000R.string.location_cloud));
        }
        if (!com.estrongs.android.pop.utils.bs.a() || com.estrongs.android.pop.m.R) {
            this.c.remove(FexApplication.f325a.getString(C0000R.string.category_pcs));
        }
        if (com.estrongs.android.pop.m.Z && this.c.contains(FexApplication.a().getString(C0000R.string.fast_access_remote))) {
            this.c.remove(FexApplication.f325a.getString(C0000R.string.fast_access_remote));
        }
        this.d.add("#home#");
        if (!com.estrongs.android.pop.m.j) {
            this.d.add("/");
        }
        this.d.add(b2);
        this.d.add("gallery://local/buckets/");
        this.d.add("music://");
        this.d.add("video://");
        this.d.add("book://");
        if (!b2.endsWith("/")) {
            b2 = b2 + "/";
        }
        this.d.add(b(b2, "Download"));
        this.d.add("smb://");
        if (!com.estrongs.android.pop.m.P) {
            this.d.add("net://");
        }
        if (com.estrongs.android.pop.utils.bs.a() && !com.estrongs.android.pop.m.R) {
            this.d.add("pcs://");
        }
        this.d.add("ftp://");
        if (com.estrongs.android.pop.m.d) {
            this.d.add("bt://");
        }
        if (com.estrongs.android.pop.m.f) {
            this.d.add("app://");
        }
        this.d.add("du://" + b2);
        if (!com.estrongs.android.pop.m.Z) {
            this.d.add("remote://");
        }
        if (!com.estrongs.android.pop.m.O) {
            this.d.add("download://");
        }
        List<String> a2 = com.estrongs.android.util.ak.a();
        a2.remove(com.estrongs.android.pop.b.b());
        Iterator<String> it = a2.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public void a() {
        this.f1642a.show();
    }

    public void a(String str) {
        a(com.estrongs.android.pop.m.b(str), str);
    }
}
