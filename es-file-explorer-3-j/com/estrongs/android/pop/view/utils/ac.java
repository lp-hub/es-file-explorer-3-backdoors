package com.estrongs.android.pop.view.utils;

import android.content.Context;
import com.estrongs.android.util.ak;

/* loaded from: classes.dex */
public class ac {
    public static ad a(Context context, String str) {
        String b2 = b(str);
        return a(b2, com.estrongs.android.pop.q.a(context).r(b2));
    }

    public static ad a(String str) {
        return new ad(str, 0, 0, 0);
    }

    private static ad a(String str, String str2) {
        int i = 1;
        StringBuffer stringBuffer = new StringBuffer(str2);
        if (stringBuffer.length() != 4) {
            return a(str);
        }
        char charAt = stringBuffer.charAt(0);
        char charAt2 = stringBuffer.charAt(1);
        int charAt3 = stringBuffer.charAt(2) - '0';
        int charAt4 = stringBuffer.charAt(3) - '0';
        if (charAt == '2' && charAt2 == '1') {
            i = 5;
        } else if (charAt == '1' && charAt2 == '1') {
            i = 4;
        } else if (charAt == '0' && charAt2 == '1') {
            i = 3;
        } else if (charAt == '2' && charAt2 == '2') {
            i = 8;
        } else if (charAt == '1' && charAt2 == '2') {
            i = 7;
        } else if (charAt == '0' && charAt2 == '2') {
            i = 6;
        } else if (charAt == '2' && charAt2 == '0') {
            i = 2;
        } else if (charAt != '1' || charAt2 != '0') {
            i = 0;
        }
        return new ad(str, i, charAt3, charAt4);
    }

    private static String a(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        if (i == 5) {
            sb.append('2');
            sb.append('1');
        } else if (i == 4) {
            sb.append('1');
            sb.append('1');
        } else if (i == 3) {
            sb.append('0');
            sb.append('1');
        } else if (i == 8) {
            sb.append('2');
            sb.append('2');
        } else if (i == 7) {
            sb.append('1');
            sb.append('2');
        } else if (i == 6) {
            sb.append('0');
            sb.append('2');
        } else if (i == 2) {
            sb.append('2');
            sb.append('0');
        } else if (i == 1) {
            sb.append('1');
            sb.append('0');
        } else {
            sb.append('0');
            sb.append('0');
        }
        sb.append((char) (i2 + 48));
        sb.append((char) (i3 + 48));
        return sb.toString();
    }

    private static void a(Context context, ad adVar) {
        com.estrongs.android.pop.q.a(context).d(adVar.f1435a, a(adVar.f1436b, adVar.c, adVar.d));
    }

    public static void a(Context context, String str, int i) {
        ad a2 = a(context, str);
        a2.f1436b = i;
        a(context, a2);
    }

    public static void a(Context context, String str, int i, int i2) {
        ad a2 = a(context, str);
        a2.c = i;
        a2.d = i2;
        a(context, a2);
    }

    public static int b(Context context, String str) {
        return a(context, str).f1436b;
    }

    private static String b(String str) {
        int E = ak.E(str);
        return E == 1 ? "view_smb" : (E == 2 || E == 19 || E == 5) ? "view_ftp" : E == 3 ? "view_bt" : E == 4 ? "view_net" : E == 23 ? "view_pcs" : E == 24 ? "view_app" : E == 12 ? "view_music" : E == 13 ? "view_pic" : E == 14 ? "view_video" : E == 16 ? "view_book" : (E == 21 || E == 22) ? "view_webdav" : E == 28 ? "view_compress" : "view_local";
    }
}
