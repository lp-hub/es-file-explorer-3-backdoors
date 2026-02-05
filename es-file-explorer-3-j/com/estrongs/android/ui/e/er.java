package com.estrongs.android.ui.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.netfs.NetFileInfo;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class er extends c {
    protected Map<String, com.estrongs.android.view.a.a> j;
    private PopAudioPlayer k;
    private int l;
    private String[] m;
    private String[] n;
    private String[] o;
    private String[] p;
    private boolean q;

    public er(Context context, boolean z) {
        super(context, z);
        this.l = -1;
        this.q = false;
        k();
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
            return this.k.getContentResolver().insert(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, int i) {
        new ff(this, str, i).start();
    }

    private String c(String str, int i) {
        Cursor cursor = null;
        String bo = com.estrongs.android.util.ak.bo(str);
        String str2 = i == 1 ? "is_ringtone" : i == 2 ? "is_notification" : "is_alarm";
        String uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString();
        try {
            Cursor query = this.k.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", str2}, "_data=?", new String[]{bo}, null);
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
                                this.k.getContentResolver().update(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, contentValues, "_id=" + i2, null);
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

    private void l() {
        this.m = new String[]{"play", "add_to", "ringtone", "share", "property", "delete", "backup_pcs"};
        this.n = new String[]{"play", "add_to"};
        this.o = new String[]{"play", "moveout", "ringtone", "share", "property", "delete", "backup_pcs"};
        this.p = new String[]{"play", "moveout"};
        if (com.estrongs.android.ui.pcs.cl.a(this.f1968b)) {
            return;
        }
        this.m = a(this.m, "backup_pcs");
        this.o = a(this.o, "backup_pcs");
    }

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
                com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(this.k), com.estrongs.fs.d.a(this.k).j(str), new com.estrongs.fs.impl.local.b(new File(str3)));
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
        RingtoneManager.setActualDefaultRingtoneUri(this.k, i, a2);
        return true;
    }

    public void d(int i) {
        this.l = i;
        boolean z = this.k.n() == com.estrongs.android.pop.app.a.aj.a().e();
        switch (this.l) {
            case 1:
                a(z ? this.m : this.o);
                String[] strArr = z ? this.m : this.o;
                if (strArr.length > 5) {
                    strArr = new String[]{strArr[0], strArr[1], strArr[2], strArr[3], "extra"};
                }
                b(strArr);
                return;
            case 2:
                List<com.estrongs.android.pop.app.a.af> s = this.k.s();
                if (s.size() > 0) {
                    String str = s.get(0).f397b;
                    String be = !com.estrongs.android.util.ak.aO(str) ? com.estrongs.android.util.ak.be(str) : str;
                    String[] strArr2 = z ? this.m : this.o;
                    if (com.estrongs.android.util.ak.aq(be) && com.estrongs.android.ui.pcs.cl.a(this.f1968b)) {
                        strArr2 = a(this.m, "backup_pcs");
                    }
                    if (!(!be.startsWith(Utils.http) || be.startsWith("http://127.0.0.1:"))) {
                        strArr2 = a(strArr2, "delete");
                    }
                    a(strArr2);
                    if (com.estrongs.android.util.ak.aO(be)) {
                        return;
                    }
                    b("ringtone");
                    return;
                }
                return;
            case 3:
                a(z ? this.n : this.p);
                return;
            default:
                return;
        }
    }

    @Override // com.estrongs.android.ui.e.c
    protected void h() {
        if (!(this.f1968b instanceof PopAudioPlayer)) {
            throw new IllegalArgumentException("Need PopAudioPlayer as the first argument");
        }
        this.k = (PopAudioPlayer) this.f1968b;
        this.j = new HashMap();
        com.estrongs.android.view.a.a onMenuItemClickListener = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_play, this.f1968b.getString(C0000R.string.action_play)).setOnMenuItemClickListener(new es(this));
        com.estrongs.android.view.a.a onMenuItemClickListener2 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_addto, this.f1968b.getString(C0000R.string.audio_add_to_list)).setOnMenuItemClickListener(new et(this));
        com.estrongs.android.view.a.a onMenuItemClickListener3 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_delete, this.f1968b.getString(C0000R.string.action_delete)).setOnMenuItemClickListener(new ex(this));
        com.estrongs.android.view.a.a onMenuItemClickListener4 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_moveout, this.f1968b.getString(C0000R.string.toolbar_moveout_audio)).setOnMenuItemClickListener(new ez(this));
        com.estrongs.android.view.a.a onMenuItemClickListener5 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_setnotification, this.f1968b.getString(C0000R.string.menu_set_ringtone)).setOnMenuItemClickListener(new fa(this));
        com.estrongs.android.view.a.a onMenuItemClickListener6 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_share, this.f1968b.getString(C0000R.string.action_share)).setOnMenuItemClickListener(new fc(this));
        com.estrongs.android.view.a.a onMenuItemClickListener7 = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_edit_property, this.f1968b.getString(C0000R.string.context_menu_property)).setOnMenuItemClickListener(new fd(this));
        com.estrongs.android.view.a.a onMenuItemClickListener8 = com.estrongs.android.ui.pcs.cl.a(this.f1968b) ? new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_backedup_files, this.f1968b.getString(C0000R.string.edit_tool_pcs_backup)).setOnMenuItemClickListener(new fe(this)) : null;
        this.j.put("play", onMenuItemClickListener);
        this.j.put("add_to", onMenuItemClickListener2);
        this.j.put("moveout", onMenuItemClickListener4);
        this.j.put("ringtone", onMenuItemClickListener5);
        this.j.put("share", onMenuItemClickListener6);
        this.j.put("property", onMenuItemClickListener7);
        this.j.put("delete", onMenuItemClickListener3);
        if (com.estrongs.android.ui.pcs.cl.a(this.f1968b)) {
            this.j.put("backup_pcs", onMenuItemClickListener8);
        }
    }

    @Override // com.estrongs.android.ui.e.c
    protected Map<String, com.estrongs.android.view.a.a> i() {
        return this.j;
    }

    protected void k() {
        this.c.setBackgroundResource(C0000R.drawable.toolbar_bg);
        l();
    }
}
