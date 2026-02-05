package com.estrongs.android.pop.esclasses;

import android.content.Context;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.a.t;
import com.estrongs.android.pop.q;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static d f1131b = null;
    private static d[] c = null;

    /* renamed from: a, reason: collision with root package name */
    public static String f1130a = null;
    private static HashMap<String, Integer> d = new HashMap<>();
    private static HashMap<String, String> e = new HashMap<>();
    private static int[] f = {C0000R.string.set_wifi, C0000R.string.wifi_configure_ap_text, C0000R.string.lan_network_notify, C0000R.string.ftp_server_start_wifi, C0000R.string.ftp_server_no_connection, C0000R.string.net_msg_wifi_off};
    private static int g = 204800;

    private static d a(Context context, String str, boolean z) {
        d[] dVarArr;
        d dVar;
        String str2;
        String lowerCase = str.toLowerCase();
        try {
            d dVar2 = new d();
            try {
                dVar2.f1133b = t.a(lowerCase);
                int b2 = t.b(lowerCase);
                dVar2.f1132a = new String[b2];
                for (int i = 0; i < b2; i++) {
                    dVar2.f1132a[i] = t.a(lowerCase, i);
                }
                if (z && (str2 = e.get(lowerCase.toLowerCase())) != null) {
                    String[] split = str2.split(" ");
                    d[] dVarArr2 = new d[split.length];
                    for (int i2 = 0; i2 < dVarArr2.length; i2++) {
                        try {
                            dVarArr2[i2] = a(context, split[i2], false);
                            if (dVarArr2[i2] == null) {
                                throw new Exception();
                            }
                        } catch (Exception e2) {
                            dVar = dVar2;
                            dVarArr = dVarArr2;
                            if (dVar != null && dVar.f1133b != null) {
                                dVar.f1133b.clear();
                            }
                            if (dVarArr != null) {
                                for (int i3 = 0; i3 < dVarArr.length; i3++) {
                                    if (dVarArr[i3] != null && dVarArr[i3].f1133b != null) {
                                        dVarArr[i3].f1133b.clear();
                                    }
                                }
                            }
                            return null;
                        }
                    }
                    c = dVarArr2;
                }
                if (dVar2.f1133b == null || dVar2.f1132a == null) {
                    return null;
                }
                return dVar2;
            } catch (Exception e3) {
                dVar = dVar2;
                dVarArr = null;
            }
        } catch (Exception e4) {
            dVarArr = null;
            dVar = null;
        }
    }

    private static void a() {
        if (f1131b != null && f1131b.f1133b != null) {
            f1131b.f1133b.clear();
            if (c != null) {
                for (int i = 0; i < c.length; i++) {
                    if (c[i] != null && c[i].f1133b != null) {
                        c[i].f1133b.clear();
                    }
                }
            }
        }
        f1131b = null;
        c = null;
    }

    public static void a(Context context) {
        String language = Locale.getDefault().getLanguage();
        String country = Locale.getDefault().getCountry();
        String E = q.a(context).E();
        if (!E.equals("-1")) {
            language = E;
        } else if ("zh".equalsIgnoreCase(language)) {
            language = "CN".equalsIgnoreCase(country) ? "cn" : "tw";
        } else if ("pt".equalsIgnoreCase(language)) {
            language = "pt".equalsIgnoreCase(country) ? "pt_pt" : "pt";
        }
        String lowerCase = language.toLowerCase();
        if (f1130a == null || !f1130a.equalsIgnoreCase(lowerCase)) {
            synchronized (d) {
                a();
                f1131b = a(context, lowerCase, true);
                f1130a = lowerCase;
            }
        }
    }

    public static boolean a(int i) {
        for (int i2 = 0; i2 < f.length; i2++) {
            if (i == f[i2]) {
                return true;
            }
        }
        return false;
    }

    public static String b(int i) {
        String str;
        if (f1131b == null || f1131b.f1133b == null) {
            return null;
        }
        synchronized (d) {
            Integer num = (Integer) f1131b.f1133b.get(i);
            if (num != null) {
                int intValue = num.intValue();
                int i2 = 0;
                while (intValue >= 800) {
                    i2++;
                    intValue -= 800;
                }
                str = f1131b.f1132a[i2][intValue];
            } else {
                str = null;
            }
            if (str == null && c != null) {
                int i3 = 0;
                while (true) {
                    String str2 = str;
                    if (i3 >= c.length) {
                        str = str2;
                        break;
                    }
                    if (c[i3] == null || c[i3].f1133b == null) {
                        str = str2;
                    } else {
                        Integer num2 = (Integer) c[i3].f1133b.get(i);
                        if (num2 != null) {
                            int intValue2 = num2.intValue();
                            int i4 = 0;
                            while (intValue2 >= 800) {
                                i4++;
                                intValue2 -= 800;
                            }
                            str = c[i3].f1132a[i4][intValue2];
                        } else {
                            str = str2;
                        }
                        if (str != null) {
                            break;
                        }
                    }
                    i3++;
                }
            }
            if (str != null && com.estrongs.android.pop.m.E && a(i)) {
                str = str.replaceAll("WLAN", "Wifi");
            }
        }
        return str;
    }

    public static String[] c(int i) {
        Object obj;
        if (f1131b == null || f1131b.f1133b == null) {
            return null;
        }
        synchronized (d) {
            obj = f1131b.f1133b.get(i);
            if (obj == null && c != null) {
                for (int i2 = 0; i2 < c.length && (c[i2] == null || c[i2].f1133b == null || (obj = c[i2].f1133b.get(i)) == null); i2++) {
                }
            }
        }
        if (obj == null || !(obj instanceof String[])) {
            return null;
        }
        return (String[]) obj;
    }

    public static CharSequence[] d(int i) {
        return c(i);
    }
}
