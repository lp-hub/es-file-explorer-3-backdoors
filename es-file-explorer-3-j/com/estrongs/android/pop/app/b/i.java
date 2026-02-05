package com.estrongs.android.pop.app.b;

import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.av;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class i {
    public static String a(String str, String str2) {
        return b(str2).get(str);
    }

    public static List<String> a(String str) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        String[] split = (str + " ").split("\"");
        if (split.length % 2 != 0) {
            while (i < split.length) {
                if (i % 2 == 0) {
                    a(split[i], arrayList);
                } else if (split[i].length() > 0) {
                    arrayList.add(split[i]);
                }
                i++;
            }
        } else {
            while (i < split.length - 2) {
                if (i % 2 == 0) {
                    a(split[i], arrayList);
                } else if (split[i].length() > 0) {
                    arrayList.add(split[i]);
                }
                i++;
            }
            if (split.length >= 2) {
                a(split[split.length - 2] + "\"" + split[split.length - 1], arrayList);
            }
        }
        return arrayList;
    }

    public static List<com.estrongs.fs.h> a(Map<String, String> map, boolean z) {
        long j;
        long j2;
        long j3;
        long j4;
        String c;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("keyword")) {
            arrayList.add(new n(Uri.decode(map.get("keyword")), z));
        }
        if (map.containsKey("category") && (c = c(map.get("category"))) != null) {
            arrayList.add(new l(c));
        }
        try {
            j = Long.parseLong(map.get("minSize"));
        } catch (Exception e) {
            j = -1;
        }
        try {
            j2 = Long.parseLong(map.get("maxSize"));
        } catch (Exception e2) {
            j2 = -1;
        }
        if (j > -1 || j2 > -1) {
            arrayList.add(new o(j, j2));
        }
        try {
            j3 = Long.parseLong(map.get("minDate"));
        } catch (Exception e3) {
            j3 = -1;
        }
        try {
            j4 = Long.parseLong(map.get("maxDate"));
        } catch (Exception e4) {
            j4 = -1;
        }
        if (j3 > -1 || j4 > -1) {
            arrayList.add(new k(j3, j4));
        }
        return arrayList;
    }

    private static void a(String str, List<String> list) {
        if (str.length() == 0) {
            return;
        }
        String[] split = str.split(" ");
        for (int i = 0; i < split.length; i++) {
            if (split[i].length() > 0) {
                list.add(split[i]);
            }
        }
    }

    public static Map<String, String> b(String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("&&")) {
            if (str2 != null && (split = str2.split("=")) != null && split.length == 2) {
                hashMap.put(split[0], split[1]);
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(List<com.estrongs.fs.h> list) {
        if (com.estrongs.android.pop.q.a(FexApplication.a()).p() || FileExplorerActivity.E() == null) {
            return;
        }
        list.add(FileExplorerActivity.E().Q);
    }

    private static String c(String str) {
        if ("image".equals(str)) {
            return av.d();
        }
        if ("music".equals(str)) {
            return av.a();
        }
        if ("video".equals(str)) {
            return av.b();
        }
        if ("apk".equals(str)) {
            return av.e();
        }
        if ("compressed".equals(str)) {
            return av.f();
        }
        if ("document".equals(str)) {
            return av.c();
        }
        return null;
    }
}
