package com.estrongs.android.pop.app.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.provider.MediaStore;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class aj {

    /* renamed from: b, reason: collision with root package name */
    private static aj f404b;
    private boolean e;
    private ak f;

    /* renamed from: a, reason: collision with root package name */
    private List<ag> f405a = null;
    private ag c = null;
    private ag d = null;
    private Object g = new Object();
    private boolean h = false;

    private aj() {
        String[] a2;
        this.e = false;
        a2 = new al(this).a();
        this.e = a2 == null || a2.length == 0;
        j();
    }

    public static aj a() {
        if (f404b == null) {
            f404b = new aj();
        }
        return f404b;
    }

    public static void k() {
        f404b = null;
    }

    public ag a(String str) {
        if (b(str)) {
            return null;
        }
        ag agVar = new ag(str);
        this.f405a.add(agVar);
        agVar.e();
        return agVar;
    }

    public void a(ag agVar) {
        this.c = agVar;
    }

    public void a(ak akVar) {
        this.f = akVar;
    }

    public void a(List<ag> list) {
        this.f405a.removeAll(list);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).f398a != -1) {
                arrayList.add(list.get(i));
            }
        }
        SQLiteDatabase c = ai.a().c();
        c.beginTransaction();
        try {
            int size = arrayList.size() % 500 == 0 ? arrayList.size() / 500 : (arrayList.size() / 500) + 1;
            int i2 = 0;
            while (i2 < size) {
                StringBuffer stringBuffer = new StringBuffer();
                int size2 = i2 < size + (-1) ? 500 : arrayList.size() - ((size - 1) * 500);
                for (int i3 = 0; i3 < size2; i3++) {
                    long j = ((ag) arrayList.get((i2 * 500) + i3)).f398a;
                    if (i3 == 0) {
                        stringBuffer.append(j);
                    } else {
                        stringBuffer.append(",").append(j);
                    }
                }
                c.delete("audio_playlists_map", "playlist_id IN (" + stringBuffer.toString() + ")", null);
                c.delete("audio_playlists", "_id IN (" + stringBuffer.toString() + ")", null);
                i2++;
            }
            c.setTransactionSuccessful();
        } finally {
            c.endTransaction();
        }
    }

    public ag b() {
        if (this.c == null) {
            this.c = new ag(C0000R.string.unsaved_list_title);
            j().add(0, this.c);
        }
        return this.c;
    }

    public void b(ag agVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(agVar);
        a(linkedList);
    }

    public boolean b(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < this.f405a.size(); i++) {
            if (str.equals(this.f405a.get(i).a())) {
                return true;
            }
        }
        return false;
    }

    public boolean c() {
        return this.c != null && this.f405a.contains(this.c);
    }

    public boolean d() {
        return this.h;
    }

    public ag e() {
        int i;
        String[] strArr;
        synchronized (this.g) {
            try {
                if (this.d == null) {
                    try {
                        this.d = new ag(C0000R.string.all_songs);
                        boolean ay = com.estrongs.android.pop.q.a(FexApplication.a()).ay();
                        this.d.a(false);
                        Cursor query = FexApplication.a().getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, null, null, null, "title_key");
                        if (query != null) {
                            String[] strArr2 = new String[128];
                            int length = strArr2.length;
                            int i2 = 0;
                            while (query.moveToNext()) {
                                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                                length--;
                                if (length < 0) {
                                    strArr = new String[i2 + 128];
                                    length = (strArr.length - i2) - 1;
                                    System.arraycopy(strArr2, 0, strArr, 0, i2);
                                } else {
                                    strArr = strArr2;
                                }
                                int i3 = i2 + 1;
                                strArr[i2] = string;
                                i2 = i3;
                                strArr2 = strArr;
                            }
                            for (0; i < i2; i + 1) {
                                if (ay) {
                                    i = new File(strArr2[i]).length() < 512000 ? i + 1 : 0;
                                }
                                this.d.b(strArr2[i]);
                            }
                            query.close();
                        }
                        this.h = true;
                    } catch (Exception e) {
                        e.printStackTrace();
                        this.h = true;
                    }
                }
            } catch (Throwable th) {
                this.h = true;
                throw th;
            }
        }
        return this.d;
    }

    public void f() {
        this.d = null;
        this.h = false;
    }

    public void g() {
        this.c = null;
    }

    public boolean h() {
        return this.e;
    }

    public void i() {
        String[] a2;
        String[] a3;
        try {
            al alVar = new al(this);
            a2 = alVar.a();
            if (a2 != null) {
                for (String str : a2) {
                    a3 = alVar.a(str);
                    ag agVar = new ag(str);
                    for (String str2 : a3) {
                        agVar.b(str2);
                    }
                    agVar.e();
                    a().j().add(agVar);
                    alVar.b(str);
                }
            }
            this.e = true;
            if (this.f != null) {
                this.f.a();
                this.f = null;
            }
        } catch (Exception e) {
            this.e = true;
            if (this.f != null) {
                this.f.a();
                this.f = null;
            }
        } catch (Throwable th) {
            this.e = true;
            if (this.f != null) {
                this.f.a();
                this.f = null;
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<ag> j() {
        Cursor cursor;
        Cursor cursor2 = null;
        if (this.f405a != null) {
            return this.f405a;
        }
        this.f405a = new ArrayList();
        try {
            try {
                cursor = ai.a().b().query("audio_playlists", null, null, null, null, null, null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            this.f405a.add(new ag(cursor.getInt(cursor.getColumnIndex("_id")), cursor.getString(cursor.getColumnIndex("name"))));
                        } catch (SQLiteDatabaseCorruptException e) {
                            e = e;
                            try {
                                String e2 = ai.e();
                                com.estrongs.fs.impl.local.d.a(e2, new File(e2).getParent() + "/" + com.estrongs.fs.c.d.l(new File(e2).getName() + ".bak"));
                            } catch (Exception e3) {
                            }
                            try {
                                ai.a();
                                ai.d();
                                ai.a();
                            } catch (Exception e4) {
                            }
                            e.printStackTrace();
                            if (cursor != null) {
                                cursor.close();
                            }
                            return this.f405a;
                        } catch (IllegalStateException e5) {
                            e = e5;
                            e.printStackTrace();
                            if (cursor != null) {
                                cursor.close();
                            }
                            return this.f405a;
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteDatabaseCorruptException e6) {
            e = e6;
            cursor = null;
        } catch (IllegalStateException e7) {
            e = e7;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
        return this.f405a;
    }
}
