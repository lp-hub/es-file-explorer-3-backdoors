package com.estrongs.android.pop.app.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.ui.b.df;
import com.estrongs.android.ui.e.fi;
import com.estrongs.android.ui.e.gc;
import com.estrongs.android.ui.e.gq;
import com.estrongs.android.ui.pcs.cl;
import java.io.File;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    private gc f385a;

    /* renamed from: b, reason: collision with root package name */
    x f386b;
    private fi c;
    private com.estrongs.android.view.a.a d;
    private com.estrongs.android.view.a.a e;
    private com.estrongs.android.view.a.a f;
    private com.estrongs.android.view.a.a g;
    private com.estrongs.android.view.a.a h;
    private com.estrongs.android.view.a.a i;
    private com.estrongs.android.view.a.a j;
    private com.estrongs.android.view.a.a k;
    private com.estrongs.android.view.a.a l;
    private com.estrongs.android.view.a.a m;
    private com.estrongs.android.view.a.a n;
    private com.estrongs.android.view.a.a o;
    private PopAudioPlayer p;

    public a(PopAudioPlayer popAudioPlayer) {
        this.p = popAudioPlayer;
        e();
    }

    private Uri a(String str, String str2, int i, long j) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            str = str.substring(0, lastIndexOf);
        }
        String bo = com.estrongs.android.util.ak.bo(str2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", bo);
        contentValues.put("title", str);
        contentValues.put("_size", Long.valueOf(j));
        contentValues.put(NetFileInfo.MIME_TYPE, "audio/*");
        contentValues.put("is_ringtone", Boolean.valueOf(i == 1));
        contentValues.put("is_notification", Boolean.valueOf(i == 2));
        contentValues.put("is_alarm", Boolean.valueOf(i == 4));
        contentValues.put("is_music", (Boolean) true);
        try {
            return this.p.getContentResolver().insert(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(af afVar, ag agVar) {
        agVar.b(afVar.f397b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.estrongs.fs.g gVar) {
        if (gVar == null) {
            com.estrongs.android.ui.view.z.a(this.p, C0000R.string.access_failed, 1).show();
        } else {
            new df(this.p, gVar).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, int i) {
        new g(this, str, i).start();
    }

    private String c(String str, int i) {
        Cursor cursor = null;
        String bo = com.estrongs.android.util.ak.bo(str);
        String str2 = i == 1 ? "is_ringtone" : i == 2 ? "is_notification" : "is_alarm";
        String uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString();
        try {
            Cursor query = this.p.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", str2}, "_data=?", new String[]{bo}, null);
            if (query != null) {
                try {
                    if (query.getCount() != 0) {
                        query.moveToFirst();
                        int i2 = query.getInt(0);
                        int i3 = query.getInt(1);
                        Uri.parse(uri + "/" + i2);
                        if (i3 == 0) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put(str2, (Boolean) true);
                            try {
                                this.p.getContentResolver().update(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues, "_id=" + i2, null);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        String str3 = uri + "/" + i2;
                        if (query == null) {
                            return str3;
                        }
                        query.close();
                        return str3;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void e() {
        this.f385a = new gc(this.p, true, true);
        this.c = new fi(this.p, true);
        this.f385a.a(this.c);
        this.f385a.a(this.c.c());
        this.f385a.a(new b(this));
        this.d = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_edit_addto), this.p.getString(C0000R.string.audio_add_to_list)).setOnMenuItemClickListener(new j(this));
        this.e = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_moveout), this.p.getString(C0000R.string.toolbar_moveout_audio)).setOnMenuItemClickListener(new m(this));
        this.f = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_edit_delete), this.p.getString(C0000R.string.audio_delete_file)).setOnMenuItemClickListener(new n(this));
        this.m = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_edit_delete), this.p.getString(C0000R.string.audio_delete_list)).setOnMenuItemClickListener(new p(this));
        this.l = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_edit_rename), this.p.getString(C0000R.string.audio_rename_list)).setOnMenuItemClickListener(new q(this));
        this.k = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_save), this.p.getString(C0000R.string.audio_save_list)).setOnMenuItemClickListener(new s(this));
        this.g = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_setnotification), this.p.getString(C0000R.string.menu_set_ringtone)).setOnMenuItemClickListener(new u(this));
        this.h = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_edit_share), this.p.getString(C0000R.string.action_share)).setOnMenuItemClickListener(new w(this));
        this.i = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_backedup_files), this.p.getString(C0000R.string.edit_tool_pcs_backup)).setOnMenuItemClickListener(new c(this));
        this.j = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_edit_property), this.p.getString(C0000R.string.context_menu_property)).setOnMenuItemClickListener(new d(this));
        this.n = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_setting), this.p.getString(C0000R.string.input_setting)).setOnMenuItemClickListener(new e(this));
        this.o = new com.estrongs.android.view.a.a(this.p.getResources().getDrawable(C0000R.drawable.toolbar_exit), this.p.getString(C0000R.string.action_exit)).setOnMenuItemClickListener(new f(this));
    }

    public abstract void a();

    public boolean a(String str, int i) {
        Uri a2;
        String str2;
        boolean z;
        if (com.estrongs.android.util.ak.aP(str)) {
            if (i == 1) {
                str2 = com.estrongs.android.pop.b.b() + "/media/ringtones";
            } else if (i == 2) {
                str2 = com.estrongs.android.pop.b.b() + "/media/notifications";
            } else {
                if (i != 4) {
                    return false;
                }
                str2 = com.estrongs.android.pop.b.b() + "/media/alarms";
            }
            File file = new File(str2);
            if (!file.exists() && !file.mkdirs()) {
                Log.e("ES", "can't create ringtone folder");
                return false;
            }
            String d = com.estrongs.android.util.ak.d(str);
            String str3 = str2 + "/" + d;
            File file2 = new File(str3);
            if (file2.exists()) {
                z = true;
            } else {
                com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(this.p), com.estrongs.fs.d.a(this.p).j(str), new com.estrongs.fs.impl.local.b(new File(str3)));
                iVar.execute(false);
                if (iVar.getTaskResult().f229a != 0) {
                    return false;
                }
                z = false;
            }
            String c = z ? c(str3, i) : null;
            a2 = c == null ? a(d, str3, i, file2.length()) : Uri.parse(c);
        } else {
            String c2 = c(str, i);
            a2 = c2 == null ? a(com.estrongs.android.util.ak.d(str), str, i, new File(str).length()) : Uri.parse(c2);
        }
        if (a2 == null) {
            return false;
        }
        RingtoneManager.setActualDefaultRingtoneUri(this.p, i, a2);
        return true;
    }

    public boolean b() {
        return this.f385a != null && this.f385a.b();
    }

    public void c() {
        if (this.p.n() == null) {
            return;
        }
        gq b2 = this.c.b();
        b2.j();
        b2.a(this.o);
        if (this.p.f() == 0) {
            try {
                af t = this.p.t();
                if (t == null) {
                    return;
                }
                b2.a(this.j);
                String str = t.f397b;
                String be = !com.estrongs.android.util.ak.aO(str) ? com.estrongs.android.util.ak.be(str) : str;
                if (!com.estrongs.android.util.ak.aq(be) && cl.a(this.p)) {
                    b2.a(this.i);
                }
                b2.a(this.h);
                if (com.estrongs.android.util.ak.aO(be)) {
                    b2.a(this.g);
                }
                boolean z = true;
                if (be.startsWith(Utils.http) && !be.startsWith("http://127.0.0.1:")) {
                    z = false;
                }
                if (z) {
                    b2.a(this.f);
                }
                if (this.p.n().f()) {
                    b2.a(this.e);
                }
                b2.a(this.d);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (this.p.n().f()) {
                b2.a(this.m);
            }
            if (this.p.n().f398a < 0) {
                b2.a(this.k);
            } else if (this.p.n().f()) {
                b2.a(this.l);
            }
            if (this.p.n() == aj.a().e()) {
                b2.a(this.n);
            }
        }
        if (this.f385a != null) {
            this.f385a.c();
        }
    }

    public void d() {
        if (this.f385a == null || !this.f385a.b()) {
            return;
        }
        this.f385a.d();
    }
}
