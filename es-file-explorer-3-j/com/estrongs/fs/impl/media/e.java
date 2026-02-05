package com.estrongs.fs.impl.media;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.provider.MediaStore;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.pop.app.b.n;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.pop.utils.bt;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import com.estrongs.fs.j;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.apache.commons.net.ftp.FTP;
import org.apache.tika.parser.mp3.Mp3Parser;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public abstract class e implements j {

    /* renamed from: a, reason: collision with root package name */
    private static final BitmapFactory.Options f3134a = new BitmapFactory.Options();

    /* renamed from: b, reason: collision with root package name */
    private static SimpleDateFormat f3135b = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    static {
        f3135b.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private static long a(ExifInterface exifInterface) {
        String str;
        String attribute = exifInterface.getAttribute("GPSDateStamp");
        String attribute2 = exifInterface.getAttribute("GPSTimeStamp");
        if (attribute == null || attribute2 == null || (str = attribute + ' ' + attribute2) == null) {
            return -1L;
        }
        try {
            Date parse = f3135b.parse(str, new ParsePosition(0));
            if (parse != null) {
                return parse.getTime();
            }
            return -1L;
        } catch (IllegalArgumentException e) {
            return -1L;
        }
    }

    public static List<com.estrongs.fs.g> a(String str, String str2, com.estrongs.fs.h hVar, String str3) {
        n nVar;
        long j;
        long j2;
        long j3;
        long j4;
        Map<String, String> b2 = i.b(str3);
        List<String> a2 = b2.containsKey("keyword") ? i.a(Uri.decode(b2.get("keyword"))) : null;
        com.estrongs.android.pop.app.b.j jVar = new com.estrongs.android.pop.app.b.j(false);
        if (b2.containsKey("keyword")) {
            n nVar2 = new n(Uri.decode(b2.get("keyword")), true);
            jVar.a(nVar2);
            nVar = nVar2;
        } else {
            nVar = null;
        }
        jVar.a(ak.h());
        af[] c = aa.c();
        String[] a3 = aa.a(c);
        if (c.length > 500) {
            jVar.a(new f(c, a3));
        }
        String str4 = b2.containsKey("category") ? b2.get("category") : null;
        try {
            j = Long.parseLong(b2.get("minSize"));
        } catch (Exception e) {
            j = -1;
        }
        try {
            j2 = Long.parseLong(b2.get("maxSize"));
        } catch (Exception e2) {
            j2 = -1;
        }
        try {
            j3 = Long.parseLong(b2.get("minDate"));
        } catch (Exception e3) {
            j3 = -1;
        }
        try {
            j4 = Long.parseLong(b2.get("maxDate"));
        } catch (Exception e4) {
            j4 = -1;
        }
        Uri contentUri = MediaStore.Files.getContentUri("external");
        String[] strArr = {"_data"};
        StringBuffer stringBuffer = new StringBuffer();
        if (!str2.endsWith("/")) {
            str2 = str2 + "/";
        }
        stringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString(str2 + "%"));
        if ("image".equals(str4)) {
            stringBuffer.append(" and ").append("media_type=1");
        } else if ("music".equals(str4)) {
            stringBuffer.append(" and ").append("media_type=2");
        } else if ("video".equals(str4)) {
            stringBuffer.append(" and ").append("media_type=3");
        } else if ("apk".equals(str4)) {
            stringBuffer.append(" and ").append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%.apk"));
        } else if ("compressed".equals(str4)) {
            String[] split = av.f().split(";");
            if (split.length > 0) {
                stringBuffer.append(" and (");
                for (int i = 0; i < split.length; i++) {
                    if (i > 0) {
                        stringBuffer.append(" or ");
                    }
                    stringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%" + split[i]));
                }
                stringBuffer.append(")");
            }
        }
        if (c.length > 0 && c.length <= 500) {
            for (int i2 = 0; i2 < c.length; i2++) {
                if (c[i2].f1179a) {
                    String str5 = a3[i2];
                    if (str5.endsWith("/")) {
                        str5 = str5.substring(0, str5.length() - 1);
                    }
                    stringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(str5));
                    stringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString(str5 + "/%"));
                } else {
                    stringBuffer.append(" and ").append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(a3[i2]));
                }
            }
        }
        if (a2 != null) {
            stringBuffer.append(" and (");
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= a2.size()) {
                    break;
                }
                if (i4 > 0) {
                    stringBuffer.append(" or ");
                }
                stringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString(str2 + "%" + a2.get(i4) + "%"));
                i3 = i4 + 1;
            }
            stringBuffer.append(')');
        }
        if (j > -1) {
            stringBuffer.append(" and ").append("_size>=" + j);
        }
        if (j2 > -1) {
            stringBuffer.append(" and ").append("_size<=" + j2);
        }
        if (j3 > -1) {
            stringBuffer.append(" and ").append("date_modified>=" + j3);
        }
        if (j4 > -1) {
            stringBuffer.append(" and ").append("date_modified<=" + j4);
        }
        if (!q.a(FexApplication.a()).p()) {
            stringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString("%/.%"));
        }
        Cursor query = FexApplication.a().getContentResolver().query(contentUri, strArr, stringBuffer.toString(), null, null);
        LinkedList linkedList = new LinkedList();
        if (query == null) {
            return linkedList;
        }
        try {
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            String f = com.estrongs.fs.a.a.f(ak.aM(str));
            while (query.moveToNext()) {
                if (currentTask != null && currentTask.taskStopped()) {
                    return null;
                }
                com.estrongs.fs.impl.local.b bVar = new com.estrongs.fs.impl.local.b(new File(query.getString(0)));
                if (jVar.a(bVar)) {
                    com.estrongs.fs.impl.m.a aVar = new com.estrongs.fs.impl.m.a(str, f, bVar);
                    if (nVar != null) {
                        aVar.f3122a = nVar.a();
                    }
                    linkedList.add(aVar);
                }
            }
            Collections.sort(linkedList, new g());
            return linkedList;
        } finally {
            query.close();
        }
    }

    public static void a(List<String> list) {
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
            int size = list.size() % 100 == 0 ? list.size() / 100 : (list.size() / 100) + 1;
            int i2 = 0;
            while (i2 < size) {
                StringBuffer stringBuffer = new StringBuffer();
                int size2 = i2 < size + (-1) ? 100 : list.size() - ((size - 1) * 100);
                for (int i3 = 0; i3 < size2; i3++) {
                    String bo = ak.bo(list.get((i2 * 100) + i3));
                    if (i3 == 0) {
                        stringBuffer.append("_data like " + DatabaseUtils.sqlEscapeString(bo + "%"));
                    } else {
                        stringBuffer.append(" or ").append("_data like " + DatabaseUtils.sqlEscapeString(bo + "%"));
                    }
                }
                FexApplication.a().getContentResolver().delete(MediaStore.Files.getContentUri("external"), stringBuffer.toString(), null);
                i2++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void a(List<String> list, Set<String> set) {
        ExifInterface exifInterface;
        int i;
        Cursor query;
        int i2;
        Cursor cursor = null;
        try {
            try {
                ContentResolver contentResolver = FexApplication.a().getContentResolver();
                for (int i3 = 0; i3 < list.size(); i3++) {
                    list.set(i3, ak.bo(list.get(i3)));
                }
                HashSet hashSet = new HashSet();
                if (set != null) {
                    String str = null;
                    int i4 = 0;
                    while (i4 < ak.a().size()) {
                        String str2 = set.contains(ak.a().get(i4)) ? ak.a().get(i4) : str;
                        i4++;
                        str = str2;
                    }
                    int i5 = -1;
                    if (str != null) {
                        try {
                            query = contentResolver.query(MediaStore.Files.getContentUri("external"), new String[]{"storage_id"}, "_data like " + DatabaseUtils.sqlEscapeString(str + "%") + ") limit (1", null, null);
                            if (query != null) {
                                try {
                                    try {
                                        i2 = query.moveToNext() ? query.getInt(0) : -1;
                                        try {
                                            query.close();
                                        } catch (Exception e) {
                                            i5 = i2;
                                        }
                                    } catch (Exception e2) {
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    cursor = query;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            } else {
                                i2 = -1;
                            }
                        } catch (Exception e3) {
                        }
                    } else {
                        i2 = -1;
                        query = null;
                    }
                    i5 = i2;
                    StringBuffer stringBuffer = new StringBuffer();
                    for (String str3 : set) {
                        if (!str3.equals(str)) {
                            if (stringBuffer.length() == 0) {
                                stringBuffer.append(DatabaseUtils.sqlEscapeString(str3));
                            } else {
                                stringBuffer.append(",").append(DatabaseUtils.sqlEscapeString(str3));
                            }
                        }
                    }
                    cursor = contentResolver.query(MediaStore.Files.getContentUri("external"), new String[]{"_data"}, i5 == -1 ? "parent in (select _id from files where _data in (" + stringBuffer.toString() + "))" : "parent in (select _id from files where _data in (" + stringBuffer.toString() + ")) or parent=0 and storage_id=" + i5, null, null);
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            hashSet.add(cursor.getString(0));
                        }
                        cursor.close();
                    }
                } else {
                    int size = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
                    int i6 = 0;
                    while (i6 < size) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        int size2 = i6 < size + (-1) ? 500 : list.size() - ((size - 1) * 500);
                        for (int i7 = 0; i7 < size2; i7++) {
                            String str4 = list.get((i6 * 500) + i7);
                            if (i7 == 0) {
                                stringBuffer2.append(DatabaseUtils.sqlEscapeString(str4));
                            } else {
                                stringBuffer2.append(",").append(DatabaseUtils.sqlEscapeString(str4));
                            }
                        }
                        cursor = contentResolver.query(MediaStore.Files.getContentUri("external"), new String[]{"_data"}, "_data IN (" + stringBuffer2.toString() + ")", null, null);
                        if (cursor != null) {
                            while (cursor.moveToNext()) {
                                hashSet.add(cursor.getString(0));
                            }
                            cursor.close();
                        }
                        i6++;
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
                if (list.size() == 0) {
                    if (cursor != null) {
                        cursor.close();
                        return;
                    }
                    return;
                }
                int size3 = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
                int i8 = 0;
                while (i8 < size3) {
                    int size4 = i8 < size3 + (-1) ? 500 : list.size() - ((size3 - 1) * 500);
                    ContentValues[] contentValuesArr = new ContentValues[size4];
                    for (int i9 = 0; i9 < size4; i9++) {
                        String str5 = list.get((i8 * 500) + i9);
                        contentValuesArr[i9] = new ContentValues();
                        contentValuesArr[i9].put("_data", str5);
                        if (new File(str5).isDirectory()) {
                            contentValuesArr[i9].put("format", (Integer) 12289);
                        } else {
                            String N = av.N(str5);
                            if ("*/*" != N) {
                                contentValuesArr[i9].put(NetFileInfo.MIME_TYPE, N);
                            }
                            try {
                                contentValuesArr[i9].put("_size", Long.valueOf(new File(str5).length()));
                            } catch (Exception e4) {
                            }
                            contentValuesArr[i9].put("title", com.estrongs.fs.c.d.a(str5));
                            contentValuesArr[i9].put("_display_name", ak.d(str5));
                            if (a.b(str5)) {
                                contentValuesArr[i9].put("is_music", "1");
                                contentValuesArr[i9].put("duration", "0");
                            }
                        }
                    }
                    contentResolver.bulkInsert(MediaStore.Files.getContentUri("external"), contentValuesArr);
                    i8++;
                }
                if (cursor != null) {
                    cursor.close();
                }
                for (int i10 = 0; i10 < list.size(); i10++) {
                    String str6 = list.get(i10);
                    int a2 = av.a(str6);
                    ContentValues contentValues = new ContentValues();
                    boolean b2 = a.b(str6);
                    boolean c = a.c(str6);
                    if (b2 || c) {
                        Uri uri = b2 ? MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                        try {
                            MediaMetadataRetriever a3 = d.a();
                            a3.setDataSource(str6);
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
                                if (a4 != null && !b.f.contains(a4)) {
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
                            b.a(contentValues, str6, extractMetadata2);
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
                            if (b2) {
                                if (!contentValues.containsKey("title")) {
                                    contentValues.put("title", com.estrongs.fs.c.d.a(str6));
                                }
                                boolean z = str6.indexOf(b.f3129a[0]) > 0 || str6.indexOf(b.f3129a[1]) > 0;
                                boolean z2 = str6.indexOf(b.f3130b[0]) > 0 || str6.indexOf(b.f3130b[1]) > 0;
                                contentValues.put("is_ringtone", Boolean.valueOf(z));
                                contentValues.put("is_notification", Boolean.valueOf(z2));
                            } else if (aw.g()) {
                                String extractMetadata6 = a3.extractMetadata(18);
                                String extractMetadata7 = a3.extractMetadata(19);
                                if (extractMetadata6 != null) {
                                    contentValues.put("width", extractMetadata6);
                                }
                                if (extractMetadata7 != null) {
                                    contentValues.put("height", extractMetadata7);
                                }
                            }
                        } catch (Exception e5) {
                            b.a(contentValues, str6, null);
                            contentValues.put(Mp3Parser.ARTIST, "<unknown>");
                        }
                        contentResolver.update(uri, contentValues, "_data=" + DatabaseUtils.sqlEscapeString(str6), null);
                    } else if (a.a(str6)) {
                        long lastModified = new File(str6).lastModified();
                        if (aw.f()) {
                            try {
                                f3134a.outWidth = 0;
                                f3134a.outHeight = 0;
                                BitmapFactory.decodeFile(str6, f3134a);
                                int i13 = f3134a.outWidth;
                                int i14 = f3134a.outHeight;
                                contentValues.put("width", Integer.valueOf(i13));
                                contentValues.put("height", Integer.valueOf(i14));
                            } catch (Throwable th2) {
                            }
                        }
                        if (a2 == 65553 || a2 == 65556) {
                            try {
                                exifInterface = new ExifInterface(str6);
                            } catch (IOException e6) {
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
                                } else {
                                    long b3 = b(exifInterface);
                                    if (b3 != -1 && Math.abs(lastModified - b3) >= 86400000) {
                                        contentValues.put("datetaken", Long.valueOf(b3));
                                    }
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
                        contentResolver.update(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues, "_data=" + DatabaseUtils.sqlEscapeString(str6), null);
                    }
                }
                try {
                    int size5 = list.size() % 500 == 0 ? list.size() / 500 : (list.size() / 500) + 1;
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("date_modified", (Integer) (-1));
                    int i15 = 0;
                    while (i15 < size5) {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        int size6 = i15 < size5 + (-1) ? 500 : list.size() - ((size5 - 1) * 500);
                        for (int i16 = 0; i16 < size6; i16++) {
                            String str7 = list.get((i15 * 500) + i16);
                            if (i16 == 0) {
                                stringBuffer3.append(DatabaseUtils.sqlEscapeString(str7));
                            } else {
                                stringBuffer3.append(",").append(DatabaseUtils.sqlEscapeString(str7));
                            }
                        }
                        contentResolver.update(MediaStore.Files.getContentUri("external"), contentValues2, "_data IN (" + stringBuffer3.toString() + ")", null);
                        i15++;
                    }
                } catch (Exception e7) {
                }
                if (m.X) {
                    int i17 = 0;
                    while (true) {
                        int i18 = i17;
                        if (i18 < list.size()) {
                            bt.b(list.get(i18));
                            i17 = i18 + 1;
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e8) {
            bt.b();
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private static long b(ExifInterface exifInterface) {
        String attribute = exifInterface.getAttribute("DateTime");
        if (attribute == null) {
            return -1L;
        }
        try {
            Date parse = f3135b.parse(attribute, new ParsePosition(0));
            if (parse != null) {
                return parse.getTime();
            }
            return -1L;
        } catch (IllegalArgumentException e) {
            return -1L;
        }
    }

    public static void b(List<String> list) {
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
                FexApplication.a().getContentResolver().delete(MediaStore.Files.getContentUri("external"), "_data IN (" + stringBuffer.toString() + ")", null);
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void d(String str) {
        String bo = ak.bo(str);
        if (bo.endsWith("/")) {
            bo = bo.substring(0, bo.length() - 1);
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        arrayList.add(bo);
        hashSet.add(ak.aY(bo));
        a(arrayList, hashSet);
    }

    public static int e(String str) {
        try {
            return FexApplication.a().getContentResolver().delete(MediaStore.Files.getContentUri("external"), "_data=" + DatabaseUtils.sqlEscapeString(ak.bo(str)), null);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static void f(String str) {
        try {
            FexApplication.a().getContentResolver().delete(MediaStore.Files.getContentUri("external"), "_data like " + DatabaseUtils.sqlEscapeString(ak.bo(str) + "%"), null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected abstract com.estrongs.fs.g a(com.estrongs.fs.impl.local.b bVar);

    @Override // com.estrongs.fs.j
    public com.estrongs.fs.g a(String str) {
        return null;
    }

    protected abstract String a();

    @Override // com.estrongs.fs.j
    public List<com.estrongs.fs.g> a(com.estrongs.fs.g gVar, com.estrongs.fs.h hVar, TypedMap typedMap) {
        String str;
        if (!bt.a(typedMap)) {
            return null;
        }
        af[] c = aa.c();
        String[] a2 = aa.a(c);
        com.estrongs.android.pop.app.b.j jVar = new com.estrongs.android.pop.app.b.j(false);
        if (c.length > 500) {
            jVar.a(new h(this, c, a2));
        }
        jVar.a(ak.h());
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
                    stringBuffer.append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(str2));
                    stringBuffer.append(" and ").append("_data").append(" not like ").append(DatabaseUtils.sqlEscapeString(str2 + "/%"));
                } else {
                    if (stringBuffer.length() > 0) {
                        stringBuffer.append(" and ");
                    }
                    stringBuffer.append("_data").append("!=").append(DatabaseUtils.sqlEscapeString(a2[i]));
                }
            }
            str = stringBuffer.toString();
        }
        Uri contentUri = MediaStore.Files.getContentUri("external");
        String[] strArr = {"_data", "date_modified"};
        String str3 = str == null ? "(" + a() + ")" : "(" + a() + ") and " + str;
        Cursor query = FexApplication.a().getContentResolver().query(contentUri, strArr, !q.a(FexApplication.a()).p() ? str3 + " and _data not like " + DatabaseUtils.sqlEscapeString("%/.%") : str3, null, null);
        LinkedList linkedList = new LinkedList();
        if (query == null) {
            return linkedList;
        }
        try {
            com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
            while (query.moveToNext()) {
                if (currentTask != null && currentTask.taskStopped()) {
                    return null;
                }
                File file = new File(query.getString(0));
                if (!file.isDirectory() && file.exists()) {
                    com.estrongs.fs.impl.local.b bVar = new com.estrongs.fs.impl.local.b(file);
                    if (jVar.a(bVar)) {
                        linkedList.add(a(bVar));
                    }
                }
            }
            return linkedList;
        } finally {
            query.close();
        }
    }

    @Override // com.estrongs.fs.j
    public boolean b(String str) {
        return false;
    }

    @Override // com.estrongs.fs.j
    public InputStream c(String str) {
        return null;
    }
}
