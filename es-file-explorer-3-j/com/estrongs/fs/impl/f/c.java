package com.estrongs.fs.impl.f;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.ae;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import com.estrongs.fs.b.o;
import com.estrongs.fs.g;
import com.estrongs.fs.l;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class c extends a {

    /* renamed from: b, reason: collision with root package name */
    protected ContentResolver f3075b;
    private static final String[] c = new String[0];

    /* renamed from: a, reason: collision with root package name */
    static final String[] f3074a = {"_id", "title", "_data", "_size", "date_modified", NetFileInfo.MIME_TYPE, "datetaken", "mini_thumb_magic", "orientation"};

    public c(ContentResolver contentResolver) {
        this.f3075b = null;
        this.f3075b = contentResolver;
    }

    private String f(String str) {
        return String.format("gallery://local/buckets/%s", str);
    }

    private boolean g(String str) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return false;
        }
        File file = new File(str);
        long length = file.length();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        boolean a2 = !file.exists() ? true : currentTask instanceof o ? ((o) currentTask).a(file) : file.delete();
        if (!a2 || currentTask == null) {
            return a2;
        }
        currentTask.sendMessage(1, 1L, str);
        if (length <= 0) {
            return a2;
        }
        currentTask.sendMessage(2, Long.valueOf(length), str);
        return a2;
    }

    private String h(String str) {
        Cursor query = MediaStore.Images.Media.query(this.f3075b, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "_id='" + str + "'", null, null);
        if (query == null || !query.moveToNext()) {
            return null;
        }
        String string = query.getString(0);
        query.close();
        return string;
    }

    @Override // com.estrongs.fs.impl.f.a
    protected List<g> a() {
        String str;
        int i;
        af[] c2 = aa.c();
        String[] a2 = aa.a(c2);
        if (c2.length <= 0 || c2.length > 500) {
            str = null;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < c2.length; i2++) {
                if (c2[i2].f1179a) {
                    String str2 = a2[i2];
                    if (str2.endsWith("/")) {
                        str2 = str2.substring(0, str2.length() - 1);
                    }
                    stringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(str2));
                    stringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString(str2 + "/%"));
                } else {
                    stringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(a2[i2]));
                }
            }
            str = stringBuffer.toString();
        }
        Cursor query = MediaStore.Images.Media.query(this.f3075b, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"bucket_id", "bucket_display_name", "_data", "count(bucket_id)"}, "1=1) " + (str == null ? "" : str + " ") + "group by (bucket_id", null, null);
        LinkedList linkedList = new LinkedList();
        if (query == null) {
            return linkedList;
        }
        try {
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            while (query.moveToNext() && (currentTask == null || !currentTask.taskStopped())) {
                String string = query.getString(0);
                String string2 = query.getString(1);
                String aY = ak.aY(query.getString(2));
                int[] iArr = {query.getInt(3)};
                if (!aw.a((CharSequence) aY) && iArr[0] > 0) {
                    if (c2.length > 500) {
                        ae d = aa.d(aY, Integer.MAX_VALUE);
                        if (d == null || d.d == null || d.d.size() <= 0) {
                            i = 0;
                        } else {
                            int i3 = 0;
                            i = 0;
                            while (i3 < d.d.size()) {
                                int i4 = av.b(d.d.get(i3).f1177a) ? i + 1 : i;
                                i3++;
                                i = i4;
                            }
                        }
                        iArr[0] = iArr[0] - i;
                    }
                    if (iArr[0] > 0) {
                        linkedList.add(new d(this, f(string), aY, l.f3183a, string2, iArr, aY));
                    }
                }
            }
            return linkedList;
        } finally {
            query.close();
        }
    }

    @Override // com.estrongs.fs.impl.f.a
    protected List<g> a(String str, int i, int i2, String str2) {
        HashSet hashSet;
        String str3;
        ae d = aa.d(str2, Integer.MAX_VALUE);
        if (d == null || d.d == null || d.d.size() <= 0) {
            hashSet = null;
            str3 = null;
        } else if (d.d.size() <= 500) {
            String bo = ak.bo(str2);
            String str4 = !bo.endsWith("/") ? bo + "/" : bo;
            StringBuffer stringBuffer = new StringBuffer();
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= d.d.size()) {
                    break;
                }
                if (d.d.get(i4).c) {
                    String str5 = str4 + d.d.get(i4).f1177a;
                    if (str5.endsWith("/")) {
                        str5 = str5.substring(0, str5.length() - 1);
                    }
                    stringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(str5));
                    stringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString(str5 + "/%"));
                } else {
                    stringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(str4 + d.d.get(i4).f1177a));
                }
                i3 = i4 + 1;
            }
            hashSet = null;
            str3 = stringBuffer.toString();
        } else {
            HashSet hashSet2 = new HashSet();
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 >= d.d.size()) {
                    break;
                }
                hashSet2.add(d.d.get(i6).f1177a);
                i5 = i6 + 1;
            }
            hashSet = hashSet2;
            str3 = null;
        }
        ContentResolver contentResolver = this.f3075b;
        Uri uri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        String[] strArr = f3074a;
        StringBuilder append = new StringBuilder().append("bucket_id = ?");
        if (str3 == null) {
            str3 = "";
        }
        Cursor query = MediaStore.Images.Media.query(contentResolver, uri, strArr, append.append(str3).toString(), e(str), null);
        LinkedList linkedList = new LinkedList();
        if (query == null) {
            return linkedList;
        }
        int i7 = 0;
        while (query.moveToNext()) {
            try {
                int i8 = i7 + 1;
                if (i8 >= i) {
                    if (i2 != -1 && i8 == i2) {
                        break;
                    }
                    String string = query.getString(query.getColumnIndexOrThrow("_id"));
                    String format = String.format("gallery://local/buckets/%s/%s", str, string);
                    String string2 = query.getString(query.getColumnIndexOrThrow("_data"));
                    if (d == null || d.d == null || d.d.size() <= 500 || !hashSet.contains(ak.d(string2))) {
                        linkedList.add(new b(string, format, string2, ak.d(string2), query.getLong(query.getColumnIndexOrThrow("_size")), query.getLong(query.getColumnIndexOrThrow("date_modified")) * 1000));
                        i7 = i8;
                    } else {
                        i7 = i8;
                    }
                } else {
                    i7 = i8;
                }
            } finally {
                query.close();
            }
        }
        return linkedList;
    }

    @Override // com.estrongs.fs.impl.f.a
    protected boolean b(String str, String str2) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return false;
        }
        List<g> a2 = a(str, 0, -1, str2);
        LinkedList linkedList = new LinkedList();
        Iterator<g> it = a2.iterator();
        boolean z = true;
        while (it.hasNext()) {
            String absolutePath = it.next().getAbsolutePath();
            boolean g = g(absolutePath) & z;
            linkedList.add(absolutePath);
            z = g;
        }
        if (!z) {
            return false;
        }
        com.estrongs.fs.impl.j.b.b().c(linkedList);
        return true;
    }

    @Override // com.estrongs.fs.impl.f.a
    protected boolean d(String str) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return false;
        }
        String h = h(str);
        if (aw.a((CharSequence) h) || !g(h)) {
            return false;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if ((currentTask instanceof o) && ((o) currentTask).b()) {
            return true;
        }
        return com.estrongs.fs.impl.j.b.b().b(h) > 0;
    }

    @Override // com.estrongs.fs.impl.f.a
    protected boolean d(String str, String str2) {
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return false;
        }
        String h = h(str);
        if (aw.a((CharSequence) h)) {
            return false;
        }
        File file = new File(h);
        File file2 = new File(file.getParentFile(), str2);
        if (file != null && file.exists()) {
            file.renameTo(file2);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", ak.bl(str2));
        contentValues.put("_data", file2.getAbsolutePath());
        this.f3075b.update(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues, "_id=" + str, null);
        return true;
    }

    protected String[] e(String str) {
        if (str == null) {
            return c;
        }
        int length = c.length;
        String[] strArr = new String[length + 1];
        System.arraycopy(c, 0, strArr, 0, length);
        strArr[length] = str;
        return strArr;
    }
}
