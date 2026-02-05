package com.estrongs.fs.impl.media;

import android.annotation.SuppressLint;
import android.media.MediaMetadataRetriever;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Set<String> f3127a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    private static Set<String> f3128b = new HashSet();
    private static Set<String> c = new HashSet();
    private static Set<String> d = new HashSet();
    private static Class e;
    private static Method f;
    private static Method g;
    private static Class h;
    private static Field i;
    private static Method j;
    private static Method k;
    private static Method l;

    private static Boolean a(Integer num) {
        if (j == null) {
            j = e.getMethod("isImageFileType", Integer.TYPE);
        }
        return (Boolean) j.invoke(null, num);
    }

    public static boolean a(String str) {
        boolean z = false;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf < 0) {
            return false;
        }
        String lowerCase = str.substring(lastIndexOf + 1).toLowerCase();
        if (f3127a.contains(lowerCase)) {
            return true;
        }
        if (d.contains(lowerCase)) {
            return false;
        }
        try {
            Integer e2 = e(str);
            if (e2 == null) {
                return false;
            }
            Boolean a2 = a(e2);
            if (a2.booleanValue()) {
                f3127a.add(lowerCase);
            } else if (b(e2).booleanValue()) {
                f3128b.add(lowerCase);
            } else if (c(e2).booleanValue()) {
                c.add(lowerCase);
            } else {
                d.add(lowerCase);
            }
            z = a2.booleanValue();
            return z;
        } catch (Exception e3) {
            return z;
        }
    }

    private static Boolean b(Integer num) {
        if (k == null) {
            k = e.getMethod("isAudioFileType", Integer.TYPE);
        }
        return (Boolean) k.invoke(null, num);
    }

    public static boolean b(String str) {
        boolean z = false;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf < 0) {
            return false;
        }
        String lowerCase = str.substring(lastIndexOf + 1).toLowerCase();
        if (f3128b.contains(lowerCase)) {
            return true;
        }
        if (d.contains(lowerCase)) {
            return false;
        }
        try {
            Integer e2 = e(str);
            if (e2 == null) {
                return false;
            }
            Boolean b2 = b(e2);
            if (b2.booleanValue()) {
                f3128b.add(lowerCase);
            } else if (c(e2).booleanValue()) {
                c.add(lowerCase);
            } else if (a(e2).booleanValue()) {
                f3127a.add(lowerCase);
            } else {
                d.add(lowerCase);
            }
            z = b2.booleanValue();
            return z;
        } catch (Exception e3) {
            return z;
        }
    }

    private static Boolean c(Integer num) {
        if (l == null) {
            l = e.getMethod("isVideoFileType", Integer.TYPE);
        }
        return (Boolean) l.invoke(null, num);
    }

    public static boolean c(String str) {
        boolean z = false;
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf < 0) {
            return false;
        }
        String lowerCase = str.substring(lastIndexOf + 1).toLowerCase();
        if (c.contains(lowerCase)) {
            return true;
        }
        if (d.contains(lowerCase)) {
            return false;
        }
        try {
            Integer e2 = e(str);
            if (e2 == null) {
                return false;
            }
            Boolean c2 = c(e2);
            if (c2.booleanValue()) {
                c.add(lowerCase);
            } else if (b(e2).booleanValue()) {
                f3128b.add(lowerCase);
            } else if (a(e2).booleanValue()) {
                f3127a.add(lowerCase);
            } else {
                d.add(lowerCase);
            }
            z = c2.booleanValue();
            return z;
        } catch (Exception e3) {
            return z;
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean d(String str) {
        try {
            MediaMetadataRetriever a2 = d.a();
            a2.setDataSource(str);
            String extractMetadata = a2.extractMetadata(12);
            if (extractMetadata == null) {
                return false;
            }
            return b(f(extractMetadata)).booleanValue();
        } catch (Exception e2) {
            return false;
        }
    }

    private static Integer e(String str) {
        if (e == null) {
            e = Class.forName("android.media.MediaFile");
        }
        if (f == null) {
            f = e.getMethod("getFileType", String.class);
        }
        Object invoke = f.invoke(null, str);
        if (invoke == null) {
            return null;
        }
        if (h == null) {
            h = Class.forName("android.media.MediaFile$MediaFileType");
        }
        if (i == null) {
            i = h.getDeclaredField("fileType");
            i.setAccessible(true);
        }
        return (Integer) i.get(invoke);
    }

    private static Integer f(String str) {
        if (e == null) {
            e = Class.forName("android.media.MediaFile");
        }
        if (g == null) {
            g = e.getMethod("getFileTypeForMimeType", String.class);
        }
        return (Integer) g.invoke(null, str);
    }
}
