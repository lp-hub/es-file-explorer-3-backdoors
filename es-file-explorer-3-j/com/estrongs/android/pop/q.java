package com.estrongs.android.pop;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.preference.PreferenceManager;
import com.baidu.share.message.token.ShareToken;
import com.baidu.share.message.token.TokenShareManager;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.pop.view.utils.ad;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private static q f1165a = null;

    /* renamed from: b, reason: collision with root package name */
    private static Context f1166b = null;

    private q(Context context) {
        f1166b = context;
    }

    private String B(String str) {
        if (str != null) {
            String[] split = str.split("\n");
            if (split.length > 0 && split[0].length() > 0) {
                return split[0];
            }
        }
        return null;
    }

    private long C(String str) {
        if (str == null) {
            return 0L;
        }
        String[] split = str.split("\n");
        if (split.length <= 1 || split[1].length() <= 0) {
            return 0L;
        }
        try {
            return Long.parseLong(split[1]);
        } catch (Exception e) {
            return 0L;
        }
    }

    private String D(String str) {
        if (ak.F(str)) {
            return "serverlistdb";
        }
        if (ak.H(str) || ak.G(str) || ak.m(str) || ak.p(str)) {
            return "serverlistdb3";
        }
        if (ak.an(str)) {
            return "serverlistdb7";
        }
        if (ak.au(str)) {
            return "serverlistdb8";
        }
        return null;
    }

    private void E(String str) {
        if (X()) {
            return;
        }
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        Map<String, ?> all = sharedPreferences.getAll();
        if (all.isEmpty()) {
            return;
        }
        for (String str2 : all.keySet()) {
            String bq = ak.bq(str2);
            if (str.equals("serverlistdb6") || str.equals("serverlistdb4")) {
                edit.putBoolean(bq, ((Boolean) all.get(str2)).booleanValue());
            } else if (str.equals("serverlistdb5")) {
                edit.putInt(bq, ((Integer) all.get(str2)).intValue());
            } else {
                edit.putString(bq, (String) all.get(str2));
            }
            edit.remove(str2);
            edit.commit();
        }
    }

    public static q a(Context context) {
        if (f1165a == null) {
            f1165a = new q(context);
        }
        if (context != null) {
            f1165a.b(context);
        }
        return f1165a;
    }

    public static void a(Context context, String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString("fex_version", str);
        edit.commit();
    }

    public static void a(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("checklistdb", 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public static void a(Context context, Map<String, String> map) {
        Map<String, ?> all = context.getSharedPreferences("checklistdb", 0).getAll();
        if (all == null || all.isEmpty()) {
            return;
        }
        map.putAll(all);
    }

    private void b(String str, long j) {
        FileOutputStream fileOutputStream = null;
        File file = new File("/sdcard/.estrongs/devicetoken");
        if (file.exists()) {
            new File("/sdcard/.estrongs/devicetoken/dt").delete();
            try {
                fileOutputStream = new FileOutputStream("/sdcard/.estrongs/devicetoken/dt");
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        } else if (file.mkdirs()) {
            try {
                fileOutputStream = new FileOutputStream("/sdcard/.estrongs/devicetoken/dt");
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.write((str + "\n" + j).getBytes());
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            try {
                fileOutputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static boolean b(Context context, String str) {
        if (str == null) {
            return false;
        }
        return context.getSharedPreferences("checklistdb", 0).getAll().containsKey(str);
    }

    public static String c(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getString("fex_version", "0");
    }

    public static void c(Context context, String str) {
        if (str == null) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("checklistdb", 0).edit();
        edit.remove(str);
        edit.commit();
    }

    public static void d(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("checklistdb", 0).edit();
        edit.clear();
        edit.commit();
    }

    public String A() {
        String str = "/sdcard/backups/apps/";
        Map<String, ?> all = f1166b.getSharedPreferences("preference", 0).getAll();
        if (!all.isEmpty() && all.containsKey("app_backup_path")) {
            str = (String) all.get("app_backup_path");
        }
        if (!com.estrongs.fs.impl.local.d.a(str)) {
            try {
                com.estrongs.fs.d.a(f1166b).g(str);
            } catch (FileSystemException e) {
                com.estrongs.fs.impl.local.d.g(str);
                e.printStackTrace();
            }
        }
        return str;
    }

    public void A(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("pcs_upgrade_phone_pass", aw.c(str));
        edit.commit();
    }

    public String B() {
        String str = "/sdcard/";
        Map<String, ?> all = f1166b.getSharedPreferences("preference", 0).getAll();
        if (!all.isEmpty() && all.containsKey("bt_path")) {
            str = (String) all.get("bt_path");
        }
        File file = new File(str);
        return (file.exists() || file.mkdirs()) ? str : "/sdcard/";
    }

    public String C() {
        String str = "/sdcard/download";
        Map<String, ?> all = f1166b.getSharedPreferences("preference", 0).getAll();
        if (!all.isEmpty() && all.containsKey("download_path")) {
            str = (String) all.get("download_path");
        }
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
            return str;
        }
        try {
            if (!str.equals("/sdcard/download")) {
                return str;
            }
            String d = ak.d(str);
            for (File file2 : new File("/sdcard").listFiles()) {
                if (file2.getName().equalsIgnoreCase(d)) {
                    return "/sdcard/" + file2.getName();
                }
            }
            return str;
        } catch (Exception e) {
            return str;
        }
    }

    public boolean D() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("bt_turnoff", true);
    }

    public String E() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("language_setting", "-1");
    }

    public long F() {
        return f1166b.getSharedPreferences("preference", 0).getLong("upgrade_last_check_time", 0L);
    }

    public long G() {
        return f1166b.getSharedPreferences("preference", 0).getLong("recomm_last_check_time", 0L);
    }

    public DateFormat H() {
        return android.text.format.DateFormat.getDateFormat(f1166b);
    }

    public DateFormat I() {
        return android.text.format.DateFormat.getDateFormat(f1166b);
    }

    public String J() {
        String string = PreferenceManager.getDefaultSharedPreferences(f1166b).getString("netpasswd", null);
        return (string == null || !X()) ? string : aw.d(string);
    }

    public boolean K() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("net_passwd_enable", false);
    }

    public boolean L() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("start_passwd_enable", false);
    }

    public boolean M() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("hided_dirfiles_passwd_enable", false);
    }

    public String N() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("theme_default", null);
    }

    public LinkedList<String> O() {
        String string = PreferenceManager.getDefaultSharedPreferences(f1166b).getString("default_path_list", null);
        LinkedList<String> linkedList = new LinkedList<>();
        if (string != null) {
            try {
                linkedList.addAll((JSONArray) new JSONParser().parse(string));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        } else if (m.m != null) {
            Iterator<String> it = m.m.iterator();
            while (it.hasNext()) {
                linkedList.add(m.a(it.next()));
            }
        } else {
            linkedList.add("#home#");
            linkedList.add("smb://");
            if (bs.a()) {
                if (!m.R) {
                    linkedList.add("pcs://");
                }
            } else if (!m.P) {
                linkedList.add("net://");
            }
        }
        if (!bs.a()) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= linkedList.size()) {
                    break;
                }
                if (linkedList.get(i2).equals("pcs://")) {
                    linkedList.remove(i2);
                    i2++;
                }
                i = i2 + 1;
            }
        }
        return linkedList;
    }

    public boolean P() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("show_disk_usage", true);
    }

    public boolean Q() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("show_disk_remain", true);
    }

    public boolean R() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("ftpsvr_auto_exit", false);
    }

    public String S() {
        String string = PreferenceManager.getDefaultSharedPreferences(f1166b).getString("ftpsvrpasswd", null);
        return (string == null || !X()) ? string : aw.d(string);
    }

    public String T() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("ftpsvruser", null);
    }

    public String U() {
        String string = PreferenceManager.getDefaultSharedPreferences(f1166b).getString("ftpsvrroot", "/sdcard");
        return (m.C == null || !string.equalsIgnoreCase("/sdcard")) ? string : m.C;
    }

    public int V() {
        try {
            return PreferenceManager.getDefaultSharedPreferences(f1166b).getInt("ftpsvrport", 3721);
        } catch (Exception e) {
            return 3721;
        }
    }

    public String W() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("ftpsvrcharset", "UTF-8");
    }

    public boolean X() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("passwordencode", false);
    }

    public void Y() {
        if (X()) {
            return;
        }
        E("serverlistdb");
        E("serverlistdb6");
        E("serverlistdb3");
        E("serverlistdb4");
        E("serverlistdb5");
        E("serverlistdb7");
        String S = S();
        String T = T();
        if (S != null) {
            e(T, aw.c(S));
        }
        String J = J();
        if (J != null) {
            n(aw.c(J));
        }
    }

    public boolean Z() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("root_reported", false);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String a() {
        String str;
        Exception e;
        FileInputStream fileInputStream;
        String str2;
        FileInputStream fileInputStream2 = null;
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences("pcs_device_token", 0);
        String string = sharedPreferences.getString("pcs_device_token", null);
        if (string == null) {
            File file = new File("/sdcard/.estrongs/devicetoken/dt");
            if (!file.exists()) {
                try {
                    ShareToken token = TokenShareManager.getInstance().getToken(1000L);
                    if (token == null) {
                        return null;
                    }
                    token.mStatus = 1;
                    TokenShareManager.getInstance().setToken(token);
                    return token.mToken;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[64];
                    int read = fileInputStream.read(bArr);
                    str2 = read > 0 ? new String(bArr, 0, read) : string;
                } catch (Exception e3) {
                    fileInputStream2 = fileInputStream;
                    str = string;
                    e = e3;
                }
                try {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString("pcs_device_token", str2);
                    edit.commit();
                    try {
                        TokenShareManager.getInstance().setToken(new ShareToken(B(str2), C(str2), 1));
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    string = str2;
                } catch (Exception e5) {
                    e = e5;
                    str = str2;
                    fileInputStream2 = fileInputStream;
                    e.printStackTrace();
                    string = str;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                    }
                    return B(string);
                }
            } catch (Exception e6) {
                str = string;
                e = e6;
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
        } else {
            try {
                if (!new File("/sdcard/.estrongs/devicetoken/dt").exists()) {
                    b(B(string), C(string));
                }
            } catch (Exception e8) {
                e8.printStackTrace();
            }
        }
        return B(string);
    }

    public String a(String str, String str2, int i, String str3) {
        String str4;
        if (f1166b == null) {
            return null;
        }
        switch (i) {
            case 1:
                str4 = "serverlistdb";
                break;
            case 2:
            case 5:
                str4 = "serverlistdb3";
                break;
            case 4:
                str4 = "serverlistdb7";
                break;
            case 18:
                str4 = "serverlistdb8";
                break;
            case 23:
                return "fake";
            default:
                return null;
        }
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences(str4, 0);
        if (sharedPreferences == null) {
            return null;
        }
        Iterator<Map.Entry<String, ?>> it = sharedPreferences.getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            if (X()) {
                key = ak.br(key);
            }
            if (4 != i && 18 != i) {
                String x = ak.x(key);
                String a2 = ak.a(key);
                if (x == null || a2 == null) {
                    return null;
                }
                if (str.equalsIgnoreCase(x) && a2.equalsIgnoreCase(str2)) {
                    return ak.y(key);
                }
            }
            if (4 == i) {
                if (ak.a(key).equalsIgnoreCase(str + "@" + str2)) {
                    return ak.ac(key);
                }
            } else if (ak.a(key).equalsIgnoreCase(str + "@" + str2)) {
                return ak.ad(key);
            }
        }
        return null;
    }

    public void a(int i) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putInt("ftpsvrport", i);
        edit.commit();
    }

    public void a(long j) {
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putLong("upgrade_last_check_time", j);
        edit.commit();
    }

    public void a(Point point, boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("gesture_start_position_" + z, com.estrongs.android.ui.d.a.a(point));
        edit.commit();
    }

    public void a(String str) {
        a(str, true);
    }

    public void a(String str, int i) {
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences("serverlistdb5", 0);
        if (X()) {
            str = ak.bq(str);
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putInt(str, i);
        edit.commit();
    }

    public void a(String str, long j) {
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("pcs_device_token", 0).edit();
        edit.putString("pcs_device_token", str + "\n" + j);
        edit.commit();
        b(str, j);
        try {
            TokenShareManager.getInstance().setToken(new ShareToken(str, j, 1));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        if (str == null) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences(D(str), 0).edit();
        edit.putString(X() ? ak.bq(str) : str, str2);
        edit.commit();
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences("serverlistdb6", 0);
        Map<String, ?> all = sharedPreferences.getAll();
        String B = ak.B(str);
        if (all.containsKey(B)) {
            SharedPreferences.Editor edit2 = sharedPreferences.edit();
            edit2.remove(B);
            edit2.commit();
        }
        if (com.estrongs.fs.a.a.c(str).size() > 2) {
            com.estrongs.fs.a.b.a().a(com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(str), 1));
        } else {
            com.estrongs.fs.a.b.a().a(str);
        }
    }

    public void a(String str, boolean z) {
        boolean z2;
        boolean z3;
        if (str == null) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences(D(str), 0).edit();
        edit.remove(X() ? ak.bq(str) : str);
        edit.commit();
        if (ak.an(str) && z) {
            SharedPreferences sharedPreferences = f1166b.getSharedPreferences("serverlistdb7", 0);
            String aa = ak.aa(str);
            String ae = ak.ae(str);
            if (aa == null || ae == null) {
                return;
            }
            Map<String, ?> all = sharedPreferences.getAll();
            if (all.isEmpty()) {
                z2 = true;
            } else {
                z2 = true;
                for (String str2 : all.keySet()) {
                    if (ak.an(str2) && ak.ae(str2).equals(ae)) {
                        String aa2 = ak.aa(str2);
                        if (aa2 != null) {
                            if (aa2.equals(aa)) {
                                z3 = false;
                                z2 = z3;
                            }
                        }
                    }
                    z3 = z2;
                    z2 = z3;
                }
            }
            if (z2) {
                com.estrongs.fs.impl.i.b.l(str);
            }
        }
        com.estrongs.fs.a.b.a().a(str, com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(str), 0));
    }

    public void a(List<com.estrongs.fs.g> list) {
        Map<String, ?> all = f1166b.getSharedPreferences("serverlistdb", 0).getAll();
        if (all.isEmpty()) {
            return;
        }
        for (String str : all.keySet()) {
            if (X()) {
                str = ak.br(str);
            }
            String c = c(str);
            if (aw.a((CharSequence) c)) {
                c = ak.a(str);
            }
            list.add(new com.estrongs.fs.impl.l.b(str, com.estrongs.fs.l.c, c));
        }
    }

    public void a(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("su", z);
        edit.commit();
    }

    public long aA() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getLong("pcs_uinfo_timestamp", 0L);
    }

    public String aB() {
        return aw.d(PreferenceManager.getDefaultSharedPreferences(f1166b).getString("pcs_upgrade_phone_pass", ""));
    }

    public int aC() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getInt("pcs_upgrade_sms_count", 0);
    }

    public boolean aD() {
        if (m.ab) {
            return false;
        }
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("enable_recycle", false);
    }

    public void aE() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putLong("last_request_push_data_time", System.currentTimeMillis());
        edit.commit();
    }

    public long aF() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getLong("last_request_push_data_time", 0L);
    }

    public void aG() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putInt("last_app_update_check_day", com.estrongs.android.util.l.a());
        edit.commit();
    }

    public long aH() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getInt("last_app_update_check_day", 0);
    }

    public boolean aa() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("root_auto_install", false);
    }

    public boolean ab() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("close_notification", false);
    }

    public String ac() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("PCS_backup_path", null);
    }

    public String ad() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("PCS_ostype", null);
    }

    public String ae() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("PCS_userinfo", null);
    }

    public void af() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f1166b);
        if (defaultSharedPreferences.getLong("PCS_remind_upgrade_time", -1L) == -1) {
            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
            edit.putLong("PCS_remind_upgrade_time", System.currentTimeMillis() + 1296000000);
            edit.commit();
        }
    }

    public void ag() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.remove("PCS_remind_upgrade_time");
        edit.commit();
    }

    public String ah() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("ap_ssid", null);
    }

    public String ai() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("ap_passwd", null);
    }

    public boolean aj() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("ap_flag", false);
    }

    public boolean ak() {
        boolean z;
        boolean z2 = false;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f1166b);
        boolean z3 = p.a() < 14;
        try {
            Object obj = defaultSharedPreferences.getAll().get("show_select_button");
            if (obj == null || !(obj instanceof Boolean)) {
                z2 = true;
                z = z3;
            } else {
                z = ((Boolean) obj).booleanValue();
            }
        } catch (NullPointerException e) {
            z2 = true;
            z = z3;
        }
        if (!z2) {
            return z;
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("show_select_button", z3);
        edit.commit();
        return z3;
    }

    public boolean al() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        try {
            Object obj = PreferenceManager.getDefaultSharedPreferences(f1166b).getAll().get("gesture_setting_enabled");
            if (obj == null || !(obj instanceof Boolean)) {
                z3 = true;
                z4 = true;
            } else {
                z4 = ((Boolean) obj).booleanValue();
                z3 = false;
            }
            boolean z5 = z3;
            z2 = z4;
            z = z5;
        } catch (NullPointerException e) {
            z = true;
            z2 = true;
        }
        if (!z) {
            return z2;
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("gesture_setting_enabled", true);
        edit.commit();
        return true;
    }

    public boolean am() {
        boolean z;
        boolean z2 = false;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(f1166b);
        boolean z3 = p.a() >= 14;
        try {
            Object obj = defaultSharedPreferences.getAll().get("show_windows_button");
            if (obj == null || !(obj instanceof Boolean)) {
                z2 = true;
                z = z3;
            } else {
                z = ((Boolean) obj).booleanValue();
            }
        } catch (NullPointerException e) {
            z2 = true;
            z = z3;
        }
        if (!z2) {
            return z;
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("show_windows_button", z3);
        edit.commit();
        return z3;
    }

    public boolean an() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("display_guideline_op", true);
    }

    public boolean ao() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("display_guideline_ol", true);
    }

    public boolean ap() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("traffic_show", true);
    }

    public boolean aq() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("send_statistics", true);
    }

    public long ar() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getLong("last_statistics", 0L);
    }

    public boolean as() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("toolbar_setting_show_name", true);
    }

    public String at() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("root_mountlist", "");
    }

    public String au() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("last_bk_setting_file", "/sdcard/ESSettings.zip");
    }

    public String av() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString("last_content_chooser_path", "");
    }

    public long aw() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getLong("last_pcs_access", 0L);
    }

    public long ax() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getLong("last_pcs_verify", 0L);
    }

    public boolean ay() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("visiable_audio_500", false);
    }

    public boolean az() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("not_show_falsified_alert", false);
    }

    public void b() {
        if (f1166b.getSharedPreferences("pcs_device_token", 0).getString("pcs_device_token", null) != null || new File("/sdcard/.estrongs/devicetoken/dt").exists()) {
            return;
        }
        try {
            TokenShareManager.getInstance().syncToken();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(int i) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putInt("pcs_upgrade_sms_count", i);
        edit.commit();
    }

    public void b(long j) {
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putLong("recomm_last_check_time", j);
        edit.commit();
    }

    public void b(Context context) {
        f1166b = context;
    }

    public void b(String str, String str2) {
        boolean z;
        if (str != null && str.startsWith("smb://")) {
            SharedPreferences sharedPreferences = f1166b.getSharedPreferences("serverlistdb", 0);
            Map<String, ?> all = sharedPreferences.getAll();
            if (all.isEmpty()) {
                z = false;
            } else {
                Iterator<String> it = all.keySet().iterator();
                z = false;
                while (it.hasNext()) {
                    z = str.equals(ak.B(it.next())) ? true : z;
                }
            }
            if (!z) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                String bq = X() ? ak.bq(str) : str;
                edit.putString(bq, str2);
                edit.commit();
                SharedPreferences.Editor edit2 = f1166b.getSharedPreferences("serverlistdb6", 0).edit();
                edit2.putBoolean(bq, true);
                edit2.commit();
            }
            com.estrongs.fs.a.b.a().a(str);
        }
    }

    public void b(String str, boolean z) {
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("serverlistdb4", 0).edit();
        if (X()) {
            str = ak.bq(str);
        }
        edit.putBoolean(str, z);
        edit.commit();
    }

    public void b(List<com.estrongs.fs.g> list) {
        Map<String, ?> all = f1166b.getSharedPreferences("serverlistdb7", 0).getAll();
        if (all.isEmpty()) {
            return;
        }
        for (String str : all.keySet()) {
            if (X()) {
                str = ak.br(str);
            }
            list.add(new com.estrongs.fs.impl.l.b(str, com.estrongs.fs.l.a(ak.ae(str)), c(str)));
        }
    }

    public void b(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("hidden_file", z);
        edit.commit();
    }

    public boolean b(String str) {
        if (str == null) {
            return false;
        }
        String D = D(str);
        if (X()) {
            str = ak.bq(str);
        }
        Map<String, ?> all = f1166b.getSharedPreferences(D, 0).getAll();
        if (!all.isEmpty()) {
            Iterator<String> it = all.keySet().iterator();
            while (it.hasNext()) {
                if (str.startsWith(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public String c(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        String D = D(str);
        if (X()) {
            str = ak.bq(str);
        }
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences(D, 0);
        Map<String, ?> all = sharedPreferences.getAll();
        if (!all.isEmpty()) {
            for (String str3 : all.keySet()) {
                if (str.equals(str3)) {
                    try {
                        str2 = sharedPreferences.getString(str3, null);
                        break;
                    } catch (ClassCastException e) {
                        str2 = null;
                    }
                }
            }
        }
        str2 = null;
        return str2;
    }

    public void c() {
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("pcs_temp_normal_flag", 0).edit();
        edit.putBoolean("pcs_temp_normal_flag", true);
        edit.commit();
        FileOutputStream fileOutputStream = null;
        try {
            TokenShareManager.getInstance().setToken(new ShareToken(ShareToken.NORMALIZED_TOKEN, System.currentTimeMillis(), 1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        File file = new File("/sdcard/.estrongs/devicetoken");
        if (file.exists()) {
            new File("/sdcard/.estrongs/devicetoken/dt").delete();
            try {
                fileOutputStream = new FileOutputStream("/sdcard/.estrongs/devicetoken/normal");
            } catch (FileNotFoundException e2) {
                e2.printStackTrace();
            }
        } else if (file.mkdirs()) {
            try {
                fileOutputStream = new FileOutputStream("/sdcard/.estrongs/devicetoken/normal");
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
            }
        }
        if (fileOutputStream != null) {
            try {
                fileOutputStream.write("true".getBytes());
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
    }

    public void c(long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putLong("last_statistics", j);
        edit.commit();
    }

    public void c(String str, String str2) {
        if (str == null) {
            return;
        }
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences(D(str), 0);
        String bq = X() ? ak.bq(str) : str;
        Map<String, ?> all = sharedPreferences.getAll();
        if (all.isEmpty()) {
            return;
        }
        Iterator<String> it = all.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (bq.equals(next)) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(next, str2);
                edit.commit();
                SharedPreferences sharedPreferences2 = f1166b.getSharedPreferences("serverlistdb6", 0);
                Map<String, ?> all2 = sharedPreferences2.getAll();
                String B = ak.B(next);
                if (all2.containsKey(B)) {
                    SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                    edit2.remove(B);
                    edit2.commit();
                }
            }
        }
        com.estrongs.fs.a.b.a().a(str, str, str2);
    }

    public void c(List<com.estrongs.fs.g> list) {
        Map<String, ?> all = f1166b.getSharedPreferences("serverlistdb8", 0).getAll();
        if (all.isEmpty()) {
            return;
        }
        for (String str : all.keySet()) {
            if (X()) {
                str = ak.br(str);
            }
            list.add(new com.estrongs.fs.impl.l.b(str, com.estrongs.fs.l.b(ak.af(str)), c(str)));
        }
    }

    public void c(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("show_pcs_drive", z);
        edit.commit();
        com.estrongs.fs.a.b.a().a(ak.bp(e("Market")) + "*");
    }

    public void d(long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putLong("last_pcs_access", j);
        edit.commit();
    }

    public void d(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putString("root_path", str);
        edit.commit();
    }

    public void d(String str, String str2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString(str, str2);
        edit.commit();
    }

    public void d(List<com.estrongs.fs.g> list) {
        Map<String, ?> all = f1166b.getSharedPreferences("serverlistdb3", 0).getAll();
        if (all.isEmpty()) {
            return;
        }
        Iterator<String> it = all.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (X()) {
                next = ak.br(next);
            }
            list.add(new com.estrongs.fs.impl.l.b(next, ak.o(next) ? com.estrongs.fs.l.h : ak.n(next) ? com.estrongs.fs.l.g : ak.p(next) ? com.estrongs.fs.l.f : ak.G(next) ? com.estrongs.fs.l.e : com.estrongs.fs.l.d, c(next)));
        }
    }

    public void d(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("thumbnail", z);
        edit.commit();
    }

    public boolean d() {
        boolean z = f1166b.getSharedPreferences("pcs_temp_normal_flag", 0).getBoolean("pcs_temp_normal_flag", false);
        if (z || !new File("/sdcard/.estrongs/devicetoken/normal").exists()) {
            return z;
        }
        return true;
    }

    public String e(String str) {
        String f = f();
        if (f == null) {
            if (m.c != null) {
                f = m.c;
                if (!f.endsWith("/")) {
                    f = f + "/";
                }
            } else {
                f = "/sdcard/";
            }
        }
        File file = new File(f);
        String absolutePath = (file.exists() && file.isDirectory()) ? file.getAbsolutePath() : "/sdcard/";
        return (m.j && absolutePath.equals("/")) ? "/sdcard/" : absolutePath;
    }

    public void e() {
        SharedPreferences sharedPreferences = f1166b.getSharedPreferences("serverlistdb", 0);
        Map<String, ?> all = sharedPreferences.getAll();
        if (!all.isEmpty()) {
            SharedPreferences sharedPreferences2 = f1166b.getSharedPreferences("serverlistdb6", 0);
            if (sharedPreferences.getAll().size() == 0) {
                return;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            Map<String, ?> all2 = sharedPreferences2.getAll();
            SharedPreferences.Editor edit2 = sharedPreferences2.edit();
            for (String str : all.keySet()) {
                if (all2.containsKey(str)) {
                    edit.remove(str);
                    edit.commit();
                    edit2.remove(str);
                    edit2.commit();
                }
            }
        }
        f1166b.getSharedPreferences("serverlistdb6", 0).getAll().clear();
    }

    public void e(long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putLong("last_pcs_verify", j);
        edit.commit();
    }

    public void e(String str, String str2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("ftpsvruser", str);
        if (str2 != null && X()) {
            str2 = aw.c(str2);
        }
        edit.putString("ftpsvrpasswd", str2);
        edit.commit();
    }

    public void e(List<String> list) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < list.size(); i++) {
            jSONArray.add(list.get(i));
        }
        edit.putString("default_path_list", jSONArray.toJSONString());
        edit.commit();
    }

    public void e(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("hide_clipboard", z);
        edit.commit();
    }

    public String f() {
        Map<String, ?> all = f1166b.getSharedPreferences("preference", 0).getAll();
        if (all.isEmpty() || !all.containsKey("root_path")) {
            return null;
        }
        return (String) all.get("root_path");
    }

    public void f(long j) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putLong("pcs_uinfo_timestamp", j);
        edit.commit();
    }

    public void f(String str, String str2) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("PCS_ostype", str);
        edit.putString("PCS_userinfo", str2);
        edit.commit();
    }

    public void f(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("hide_toolbar", z);
        edit.commit();
    }

    public boolean f(String str) {
        if (X()) {
            str = ak.bq(str);
        }
        if (str == null) {
            return true;
        }
        Map<String, ?> all = f1166b.getSharedPreferences("serverlistdb4", 0).getAll();
        if (!all.isEmpty()) {
            for (String str2 : all.keySet()) {
                if (str.startsWith(str2)) {
                    return ((Boolean) all.get(str2)).booleanValue();
                }
            }
        }
        return true;
    }

    public int g() {
        try {
            return Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(f1166b).getString("list", "0"));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    public int g(String str) {
        if (str == null) {
            return 0;
        }
        if (X()) {
            str = ak.bq(str);
        }
        String str2 = null;
        Iterator<Map.Entry<String, ?>> it = f1166b.getSharedPreferences("serverlistdb3", 0).getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            if (!str.startsWith(key) && !key.startsWith(str)) {
                key = str2;
            }
            str2 = key;
        }
        if (str2 == null) {
            return 0;
        }
        Map<String, ?> all = f1166b.getSharedPreferences("serverlistdb5", 0).getAll();
        return (all.isEmpty() || !all.containsKey(str2)) ? 0 : ((Integer) all.get(str2)).intValue();
    }

    public void g(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("playlistDb_in_sdcard", z);
        edit.commit();
    }

    public int h(String str) {
        if (str == null) {
            return 0;
        }
        try {
            SharedPreferences sharedPreferences = f1166b.getSharedPreferences("serverlistdb5", 0);
            if (X()) {
                str = ak.bq(str);
            }
            Map<String, ?> all = sharedPreferences.getAll();
            if (!all.isEmpty()) {
                for (String str2 : all.keySet()) {
                    if (str.startsWith(str2)) {
                        return ((Integer) all.get(str2)).intValue();
                    }
                }
            }
            return 0;
        } catch (Exception e) {
            return 0;
        }
    }

    public void h(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("tips_instagram_delete", z);
        edit.commit();
    }

    public boolean h() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("scroll_thumb", true);
    }

    public void i(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putString("app_backup_path", str);
        edit.commit();
    }

    public void i(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("tips_instagram_edit", z);
        edit.commit();
    }

    public boolean i() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("scroll_not_use_cache", true);
    }

    public void j(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putString("bt_path", str);
        edit.commit();
    }

    public void j(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("tips_facebook_delete", z);
        edit.commit();
    }

    public boolean j() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("su", false);
    }

    public void k(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putString("download_path", str);
        edit.commit();
    }

    public void k(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("passwordencode", z);
        edit.commit();
    }

    public boolean k() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("auto_app_backup", false);
    }

    public void l(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        SharedPreferences.Editor edit = f1166b.getSharedPreferences("preference", 0).edit();
        edit.putString("note_editor_encoding", str);
        edit.commit();
    }

    public void l(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("root_reported", z);
        edit.commit();
    }

    public boolean l() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("backup_app_cache", false);
    }

    public String m(String str) {
        return f1166b.getSharedPreferences("preference", 0).getString("note_editor_encoding", str);
    }

    public void m(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("ap_flag", z);
        edit.commit();
    }

    public boolean m() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).contains("su");
    }

    public void n(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        if (str != null && X()) {
            str = aw.c(str);
        }
        edit.putString("netpasswd", str);
        edit.commit();
    }

    public void n(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("gesture_setting_enabled", z);
        edit.commit();
    }

    public boolean n() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("show_pcs_drive", true);
    }

    public void o(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("theme_default", str);
        edit.commit();
    }

    public void o(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("display_guideline_op", z);
        edit.commit();
    }

    public boolean o() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("enableRemoteSynchronizer", true);
    }

    public com.estrongs.fs.c.a.a p(String str) {
        ad a2 = ac.a(f1166b, str);
        int i = a2.c;
        boolean z = a2.d == 0;
        switch (i) {
            case 0:
                return new com.estrongs.fs.c.a.d(z);
            case 1:
                return new com.estrongs.fs.c.a.f(z);
            case 2:
                return new com.estrongs.fs.c.a.e(z);
            case 3:
                return new com.estrongs.fs.c.a.c(z);
            default:
                return null;
        }
    }

    public void p(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("display_guideline_ol", z);
        edit.commit();
    }

    public boolean p() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("hidden_file", false);
    }

    public com.estrongs.fs.c.a.a q(String str) {
        ad a2 = ac.a(f1166b, str);
        int i = a2.c;
        boolean z = a2.d == 0;
        switch (i) {
            case 0:
                return new com.estrongs.fs.c.a.d(z);
            case 1:
                return new com.estrongs.fs.c.a.b(z);
            case 2:
                return new com.estrongs.fs.c.a.e(z);
            case 3:
                return new com.estrongs.fs.c.a.c(z);
            default:
                return null;
        }
    }

    public void q(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("traffic_show", z);
        edit.commit();
    }

    public boolean q() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("auto_clear", false);
    }

    public String r(String str) {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getString(str, "0000");
    }

    public void r(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("visiable_audio_500", z);
        edit.commit();
    }

    public boolean r() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("upgrade_auto_check", true);
    }

    public void s(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("ftpsvrroot", str);
        edit.commit();
    }

    public void s(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("not_show_falsified_alert", z);
        edit.commit();
    }

    public boolean s() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("thumbnail", true);
    }

    public Point t(boolean z) {
        String string = PreferenceManager.getDefaultSharedPreferences(f1166b).getString("gesture_start_position_" + z, null);
        if (string == null) {
            return null;
        }
        try {
            return com.estrongs.android.ui.d.a.b(string);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void t(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("ftpsvrcharset", str);
        edit.commit();
    }

    public boolean t() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("hide_clipboard", false);
    }

    public void u(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("PCS_backup_path", str);
        edit.commit();
    }

    public void u(boolean z) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putBoolean("enable_recycle", z);
        edit.commit();
    }

    public boolean u() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("hide_clipboard_on_paste", false);
    }

    public void v(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("ap_ssid", str);
        edit.commit();
    }

    public boolean v() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("hide_toolbar", false);
    }

    public void w(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("ap_passwd", str);
        edit.commit();
    }

    public boolean w() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("enable_animation", false);
    }

    public void x(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("root_mountlist", str);
        edit.commit();
    }

    public boolean x() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("playlistDb_in_sdcard", true);
    }

    public void y(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("last_bk_setting_file", str);
        edit.commit();
    }

    public boolean y() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("sdcard_size", false);
    }

    public void z(String str) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(f1166b).edit();
        edit.putString("last_content_chooser_path", str);
        edit.commit();
    }

    public boolean z() {
        return PreferenceManager.getDefaultSharedPreferences(f1166b).getBoolean("app_clean_history_exit", false);
    }
}
