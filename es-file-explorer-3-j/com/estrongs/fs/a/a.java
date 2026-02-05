package com.estrongs.fs.a;

import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class a {
    public static String a(String str) {
        return d(str.substring(0, str.lastIndexOf(b(str))));
    }

    public static String a(List<String> list, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        if ("/".equals(list.get(0))) {
            stringBuffer.append(list.get(0));
        } else {
            stringBuffer.append(list.get(0)).append("://");
        }
        for (int i2 = 1; i2 <= i; i2++) {
            if (i2 > 1) {
                stringBuffer.append("/");
            }
            stringBuffer.append(list.get(i2));
        }
        return stringBuffer.toString();
    }

    public static String a(List<String> list, String str) {
        for (String str2 : list) {
            if (a(str2, str)) {
                return str2;
            }
        }
        return null;
    }

    public static List<String> a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return arrayList;
            }
            arrayList.add(f(list.get(i2)));
            i = i2 + 1;
        }
    }

    public static boolean a(String str, String str2) {
        return str2.indexOf(str) == 0;
    }

    public static int b(List<String> list) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        for (int i = 0; i < list.size(); i++) {
            int h = h(list.get(i));
            if (h == 4) {
                z6 = true;
            } else if (h == 2) {
                z5 = true;
            } else if (h == 8) {
                z4 = true;
            } else if (h == 16) {
                z3 = true;
            } else if (h == 32) {
                z2 = true;
            } else if (h == 64) {
                z = true;
            }
        }
        int i2 = z6 ? 5 : 1;
        if (z5) {
            i2 |= 2;
        }
        if (z4) {
            i2 |= 8;
        }
        if (z3) {
            i2 |= 16;
        }
        if (z2) {
            i2 |= 32;
        }
        return z ? i2 | 64 : i2;
    }

    public static String b(String str) {
        if ("/".equals(str)) {
            return str;
        }
        return c(str).get(r0.size() - 1);
    }

    public static List<String> c(String str) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        if (str.startsWith("/")) {
            arrayList.add("/");
        }
        if (str.startsWith("/")) {
            String[] split = str.split("/");
            while (i < split.length) {
                if (split[i].length() > 0) {
                    arrayList.add(split[i]);
                }
                i++;
            }
        } else if (str.indexOf("://") >= 0) {
            arrayList.add(str.substring(0, str.indexOf("://")));
            String[] split2 = str.substring("://".length() + str.indexOf("://"), str.length()).split("/");
            while (i < split2.length) {
                if (split2[i].length() > 0) {
                    arrayList.add(split2[i]);
                }
                i++;
            }
        }
        return arrayList;
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        return ("/".equals(str) || str.length() < 2 || str.charAt(str.length() + (-1)) != '/' || str.charAt(str.length() + (-2)) == '/') ? str : str.substring(0, str.length() - 1);
    }

    public static boolean e(String str) {
        return str.startsWith("/sdcard");
    }

    public static String f(String str) {
        return ak.bo(str);
    }

    public static String g(String str) {
        return str.startsWith("/mnt/sdcard") ? "/sdcard" + str.substring("/mnt/sdcard".length(), str.length()) : str;
    }

    public static int h(String str) {
        if (!ak.aZ(str)) {
            return 1;
        }
        if (com.estrongs.fs.impl.media.a.a(str)) {
            return 4;
        }
        if (com.estrongs.fs.impl.media.a.b(str)) {
            return 2;
        }
        if (com.estrongs.fs.impl.media.a.c(str)) {
            return 8;
        }
        if (av.K(str)) {
            return 16;
        }
        if (av.G(str)) {
            return 32;
        }
        return !str.endsWith("/") ? 64 : 1;
    }
}
