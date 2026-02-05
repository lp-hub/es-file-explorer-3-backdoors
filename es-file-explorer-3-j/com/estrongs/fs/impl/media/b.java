package com.estrongs.fs.impl.media;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.media.ExifInterface;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.estrongs.a.b.l;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.b.j;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import java.io.File;
import java.io.IOException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import org.apache.commons.net.ftp.FTP;
import org.apache.tika.parser.mp3.Mp3Parser;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f3129a = {"/Ringtones/", "/ringtones/"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f3130b = {"/Notifications/", "/notifications/"};
    protected static Set<String> f = new HashSet();
    private static SimpleDateFormat g;
    protected Uri c;
    protected String d;
    protected String e;

    static {
        f.add("windows-1252");
        g = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        g.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private static long a(ExifInterface exifInterface) {
        String str;
        String attribute = exifInterface.getAttribute("GPSDateStamp");
        String attribute2 = exifInterface.getAttribute("GPSTimeStamp");
        if (attribute == null || attribute2 == null || (str = attribute + ' ' + attribute2) == null) {
            return -1L;
        }
        try {
            Date parse = g.parse(str, new ParsePosition(0));
            if (parse != null) {
                return parse.getTime();
            }
            return -1L;
        } catch (IllegalArgumentException e) {
            return -1L;
        }
    }

    public static void a(ContentValues contentValues, String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf >= 0) {
                int i = 0;
                while (true) {
                    int indexOf = str.indexOf(47, i + 1);
                    if (indexOf < 0 || indexOf >= lastIndexOf) {
                        break;
                    } else {
                        i = indexOf;
                    }
                }
                if (i != 0) {
                    contentValues.put("album", str.substring(i + 1, lastIndexOf));
                }
            }
        } else {
            contentValues.put("album", str2);
        }
        if (contentValues.containsKey("album")) {
            return;
        }
        contentValues.put("album", "<unknown>");
    }

    private boolean a(Context context, List<com.estrongs.fs.g> list, com.estrongs.fs.h hVar, l<String> lVar) {
        j jVar;
        String str;
        Cursor cursor = null;
        af[] c = aa.c();
        String[] a2 = aa.a(c);
        if (c.length > 500) {
            j jVar2 = new j(false);
            jVar2.a(new c(this, c, a2));
            jVar = jVar2;
        } else {
            jVar = null;
        }
        if (c.length <= 0 || c.length > 500) {
            str = null;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < c.length; i++) {
                if (c[i].f1179a) {
                    String str2 = a2[i];
                    if (str2.endsWith("/")) {
                        str2 = str2.substring(0, str2.length() - 1);
                    }
                    if (stringBuffer.length() > 0) {
                        stringBuffer.append(" and ");
                    }
                    stringBuffer.append(this.d).append("!=").append(DatabaseUtils.sqlEscapeString(str2));
                    stringBuffer.append(" and ").append(this.d).append(" not like ").append(DatabaseUtils.sqlEscapeString(str2 + "/%"));
                } else {
                    if (stringBuffer.length() > 0) {
                        stringBuffer.append(" and ");
                    }
                    stringBuffer.append(this.d).append("!=").append(DatabaseUtils.sqlEscapeString(a2[i]));
                }
            }
            str = stringBuffer.toString();
        }
        try {
            cursor = context.getContentResolver().query(this.c, null, (a() == null || a().length() <= 0) ? str : str == null ? "(" + a() + ")" : "(" + a() + ") and " + str, null, this.e);
            if (cursor != null) {
                com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
                if (currentTask != null) {
                    currentTask.sendMessage(6, Long.valueOf(cursor.getCount()));
                }
                while (cursor.moveToNext()) {
                    if (currentTask != null && currentTask.taskStopped()) {
                        if (cursor == null) {
                            return false;
                        }
                        cursor.close();
                        return false;
                    }
                    if (currentTask != null) {
                        currentTask.sendMessage(7, 1L);
                    }
                    com.estrongs.fs.g a3 = a(new File(cursor.getString(cursor.getColumnIndexOrThrow(this.d))));
                    if (jVar == null || jVar.a(a3)) {
                        list.add(a3);
                        lVar.a(a3.getAbsolutePath(), new long[0]);
                        if (lVar.a()) {
                            break;
                        }
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e) {
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return true;
    }

    protected abstract com.estrongs.fs.g a(File file);

    protected abstract String a();

    public List<com.estrongs.fs.g> a(Context context, String str, com.estrongs.fs.h hVar, l<String> lVar, TypedMap typedMap) {
        if (!bt.a(typedMap)) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        if (a(context, linkedList, hVar, lVar)) {
            return linkedList;
        }
        return null;
    }

    public void a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        a(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x010a  */
    @SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(List<String> list) {
        Cursor cursor;
        Cursor cursor2;
        ExifInterface exifInterface;
        int i;
        try {
            ContentResolver contentResolver = FexApplication.a().getContentResolver();
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.set(i2, ak.bo(list.get(i2)));
            }
            HashSet hashSet = new HashSet();
            int size = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
            int i3 = 0;
            cursor = null;
            while (i3 < size) {
                try {
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        int size2 = i3 < size + (-1) ? 500 : list.size() - ((size - 1) * 500);
                        for (int i4 = 0; i4 < size2; i4++) {
                            String str = list.get((i3 * 500) + i4);
                            if (i4 == 0) {
                                stringBuffer.append(DatabaseUtils.sqlEscapeString(str));
                            } else {
                                stringBuffer.append(",").append(DatabaseUtils.sqlEscapeString(str));
                            }
                        }
                        Cursor query = contentResolver.query(this.c, new String[]{"_data"}, this.d + " IN (" + stringBuffer.toString() + ")", null, null);
                        if (query != null) {
                            while (query.moveToNext()) {
                                try {
                                    hashSet.add(query.getString(0));
                                } catch (Exception e) {
                                    cursor2 = query;
                                    try {
                                        bt.b();
                                        if (cursor2 != null) {
                                            cursor2.close();
                                            return;
                                        }
                                        return;
                                    } catch (Throwable th) {
                                        cursor = cursor2;
                                        th = th;
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = query;
                                    if (cursor != null) {
                                    }
                                    throw th;
                                }
                            }
                            query.close();
                        }
                        i3++;
                        cursor = query;
                    } catch (Exception e2) {
                        cursor2 = cursor;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            if (hashSet.size() > 0) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    if (hashSet.contains(it.next())) {
                        it.remove();
                    }
                }
            }
            Iterator<String> it2 = list.iterator();
            while (it2.hasNext()) {
                if (it2.next().contains("/.")) {
                    it2.remove();
                }
            }
            if (list.size() == 0) {
                if (cursor != null) {
                    cursor.close();
                    return;
                }
                return;
            }
            int size3 = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
            int i5 = 0;
            while (i5 < size3) {
                int size4 = i5 < size3 + (-1) ? 500 : list.size() - ((size3 - 1) * 500);
                ContentValues[] contentValuesArr = new ContentValues[size4];
                for (int i6 = 0; i6 < size4; i6++) {
                    String str2 = list.get((i5 * 500) + i6);
                    contentValuesArr[i6] = new ContentValues();
                    contentValuesArr[i6].put(this.d, str2);
                    String N = av.N(str2);
                    if ("*/*" != N) {
                        contentValuesArr[i6].put(NetFileInfo.MIME_TYPE, N);
                    }
                    try {
                        contentValuesArr[i6].put("_size", Long.valueOf(new File(str2).length()));
                    } catch (Exception e3) {
                    }
                    contentValuesArr[i6].put("title", com.estrongs.fs.c.d.a(str2));
                    contentValuesArr[i6].put("_display_name", ak.d(str2));
                    if (this instanceof com.estrongs.fs.impl.h.b) {
                        contentValuesArr[i6].put("is_music", "1");
                        contentValuesArr[i6].put("duration", "0");
                        boolean z = str2.indexOf(f3129a[0]) > 0 || str2.indexOf(f3129a[1]) > 0;
                        boolean z2 = str2.indexOf(f3130b[0]) > 0 || str2.indexOf(f3130b[1]) > 0;
                        contentValuesArr[i6].put("is_ringtone", Boolean.valueOf(z));
                        contentValuesArr[i6].put("is_notification", Boolean.valueOf(z2));
                    }
                }
                contentResolver.bulkInsert(this.c, contentValuesArr);
                i5++;
            }
            if (!aw.d()) {
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i8 >= list.size()) {
                        break;
                    }
                    bt.b(list.get(i8));
                    i7 = i8 + 1;
                }
            } else {
                int i9 = 0;
                while (true) {
                    int i10 = i9;
                    if (i10 < list.size()) {
                        String str3 = list.get(i10);
                        int a2 = av.a(str3);
                        ContentValues contentValues = new ContentValues();
                        if ((this instanceof com.estrongs.fs.impl.h.b) || (this instanceof com.estrongs.fs.impl.p.b)) {
                            try {
                                MediaMetadataRetriever a3 = d.a();
                                a3.setDataSource(str3);
                                String extractMetadata = a3.extractMetadata(7);
                                String extractMetadata2 = a3.extractMetadata(1);
                                String extractMetadata3 = a3.extractMetadata(12);
                                String extractMetadata4 = a3.extractMetadata(2);
                                String extractMetadata5 = a3.extractMetadata(9);
                                if (extractMetadata != null || extractMetadata2 != null || extractMetadata4 != null) {
                                    byte[] bArr = null;
                                    byte[] bArr2 = null;
                                    byte[] bArr3 = null;
                                    int i11 = 0;
                                    if (extractMetadata != null) {
                                        bArr = extractMetadata.getBytes(FTP.DEFAULT_CONTROL_ENCODING);
                                        i11 = 0 + bArr.length;
                                    }
                                    if (extractMetadata2 != null) {
                                        bArr2 = extractMetadata2.getBytes(FTP.DEFAULT_CONTROL_ENCODING);
                                        i11 += bArr2.length;
                                    }
                                    if (extractMetadata4 != null) {
                                        bArr3 = extractMetadata4.getBytes(FTP.DEFAULT_CONTROL_ENCODING);
                                        i11 += bArr3.length;
                                    }
                                    byte[] bArr4 = new byte[i11];
                                    int i12 = 0;
                                    if (extractMetadata != null) {
                                        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
                                        i12 = 0 + bArr.length;
                                    }
                                    if (extractMetadata2 != null) {
                                        System.arraycopy(bArr2, 0, bArr4, i12, bArr2.length);
                                        i12 += bArr2.length;
                                    }
                                    if (extractMetadata4 != null) {
                                        System.arraycopy(bArr3, 0, bArr4, i12, bArr3.length);
                                    }
                                    String a4 = com.estrongs.android.util.g.a(bArr4, bArr4.length, true);
                                    if (a4 != null && !f.contains(a4)) {
                                        if (extractMetadata != null) {
                                            extractMetadata = new String(bArr, a4);
                                        }
                                        if (extractMetadata2 != null) {
                                            extractMetadata2 = new String(bArr2, a4);
                                        }
                                        if (extractMetadata4 != null) {
                                            extractMetadata4 = new String(bArr3, a4);
                                        }
                                    }
                                }
                                if (extractMetadata != null) {
                                    contentValues.put("title", extractMetadata);
                                }
                                a(contentValues, str3, extractMetadata2);
                                if (extractMetadata3 != null) {
                                    contentValues.put(NetFileInfo.MIME_TYPE, extractMetadata3);
                                }
                                if (extractMetadata4 != null) {
                                    contentValues.put(Mp3Parser.ARTIST, extractMetadata4);
                                } else {
                                    contentValues.put(Mp3Parser.ARTIST, "<unknown>");
                                }
                                if (extractMetadata5 != null) {
                                    contentValues.put("duration", extractMetadata5);
                                }
                            } catch (Exception e4) {
                                a(contentValues, str3, null);
                                contentValues.put(Mp3Parser.ARTIST, "<unknown>");
                            }
                            contentResolver.update(this.c, contentValues, "_data=" + DatabaseUtils.sqlEscapeString(str3), null);
                        } else if (this instanceof com.estrongs.fs.impl.j.b) {
                            long lastModified = new File(str3).lastModified();
                            if (a2 == 65553 || a2 == 65556) {
                                try {
                                    exifInterface = new ExifInterface(str3);
                                } catch (IOException e5) {
                                    exifInterface = null;
                                }
                                if (exifInterface != null) {
                                    float[] fArr = new float[2];
                                    if (exifInterface.getLatLong(fArr)) {
                                        contentValues.put("latitude", Float.valueOf(fArr[0]));
                                        contentValues.put("longitude", Float.valueOf(fArr[1]));
                                    }
                                    long a5 = a(exifInterface);
                                    if (a5 != -1) {
                                        contentValues.put("datetaken", Long.valueOf(a5));
                                    }
                                    int attributeInt = exifInterface.getAttributeInt("Orientation", -1);
                                    if (attributeInt != -1) {
                                        switch (attributeInt) {
                                            case 3:
                                                i = 180;
                                                break;
                                            case 4:
                                            case 5:
                                            case 7:
                                            default:
                                                i = 0;
                                                break;
                                            case 6:
                                                i = 90;
                                                break;
                                            case 8:
                                                i = 270;
                                                break;
                                        }
                                        contentValues.put("orientation", Integer.valueOf(i));
                                    }
                                }
                            }
                            contentValues.put("date_modified", Long.valueOf(lastModified / 1000));
                            contentResolver.update(this.c, contentValues, "_data=" + DatabaseUtils.sqlEscapeString(str3), null);
                        }
                        i9 = i10 + 1;
                    } else if (this instanceof com.estrongs.fs.impl.j.b) {
                        try {
                            int size5 = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("date_modified", (Integer) (-1));
                            int i13 = 0;
                            while (i13 < size5) {
                                StringBuffer stringBuffer2 = new StringBuffer();
                                int size6 = i13 < size5 + (-1) ? 500 : list.size() - ((size5 - 1) * 500);
                                for (int i14 = 0; i14 < size6; i14++) {
                                    String str4 = list.get((i13 * 500) + i14);
                                    if (i14 == 0) {
                                        stringBuffer2.append(DatabaseUtils.sqlEscapeString(str4));
                                    } else {
                                        stringBuffer2.append(",").append(DatabaseUtils.sqlEscapeString(str4));
                                    }
                                }
                                contentResolver.update(this.c, contentValues2, "_data IN (" + stringBuffer2.toString() + ")", null);
                                i13++;
                            }
                        } catch (Exception e6) {
                        }
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e7) {
            cursor2 = null;
        } catch (Throwable th4) {
            th = th4;
            cursor = null;
        }
    }

    public int b(String str) {
        try {
            return FexApplication.a().getContentResolver().delete(this.c, this.d + "=" + DatabaseUtils.sqlEscapeString(ak.bo(str)), null);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void b(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            if (new File(list.get(i)).exists()) {
                if (bt.a()) {
                    return;
                }
                bt.b();
                return;
            }
        }
        try {
            int size = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
            int i2 = 0;
            while (i2 < size) {
                StringBuffer stringBuffer = new StringBuffer();
                int size2 = i2 < size + (-1) ? 500 : list.size() - ((size - 1) * 500);
                for (int i3 = 0; i3 < size2; i3++) {
                    String bo = ak.bo(list.get((i2 * 500) + i3));
                    if (i3 == 0) {
                        stringBuffer.append(this.d + " like " + DatabaseUtils.sqlEscapeString(bo + "%"));
                    } else {
                        stringBuffer.append(" or ").append(this.d + " like " + DatabaseUtils.sqlEscapeString(bo + "%"));
                    }
                }
                FexApplication.a().getContentResolver().delete(this.c, stringBuffer.toString(), null);
                i2++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void c(String str) {
        try {
            String bo = ak.bo(str);
            if (!bo.endsWith("/")) {
                bo = bo + "/";
            }
            FexApplication.a().getContentResolver().delete(this.c, this.d + " like " + DatabaseUtils.sqlEscapeString(bo + "%"), null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void c(List<String> list) {
        try {
            int size = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
            int i = 0;
            while (i < size) {
                StringBuffer stringBuffer = new StringBuffer();
                int size2 = i < size + (-1) ? 500 : list.size() - ((size - 1) * 500);
                for (int i2 = 0; i2 < size2; i2++) {
                    String bo = ak.bo(list.get((i * 500) + i2));
                    if (i2 == 0) {
                        stringBuffer.append(DatabaseUtils.sqlEscapeString(bo));
                    } else {
                        stringBuffer.append(",").append(DatabaseUtils.sqlEscapeString(bo));
                    }
                }
                FexApplication.a().getContentResolver().delete(this.c, this.d + " IN (" + stringBuffer.toString() + ")", null);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
