package com.estrongs.android.pop;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.estrongs.android.pop.app.AudioPlayerProxyActivity;
import com.estrongs.android.pop.app.BrowserDownloaderActivity;
import com.estrongs.android.pop.app.ESContentChooserActivity;
import com.estrongs.android.pop.app.ESFileSharingActivity;
import com.estrongs.android.pop.app.ESRingtoneChooserActivity;
import com.estrongs.android.pop.app.ESWallPaperChooserActivity;
import com.estrongs.android.pop.app.PopRemoteImageBrowser;
import com.estrongs.android.pop.app.PopVideoPlayerProxyActivity;
import com.estrongs.android.pop.app.compress.CompressionProxyActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.u;
import com.estrongs.android.util.ak;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1159a = m.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public static String f1160b = null;
    public static String c = null;
    public static boolean d = true;
    public static boolean e = true;
    public static boolean f = true;
    public static boolean g = false;
    public static List<String> h = null;
    public static boolean i = false;
    public static boolean j = false;
    public static List<String> k = null;
    public static List<o> l = null;
    public static List<String> m = null;
    public static boolean n = false;
    public static boolean o = false;
    public static boolean p = false;
    public static boolean q = false;
    public static boolean r = false;
    public static boolean s = false;
    public static boolean t = false;
    public static boolean u = false;
    public static boolean v = false;
    public static boolean w = false;
    public static boolean x = false;
    public static boolean y = false;
    public static boolean z = false;
    public static boolean A = false;
    public static boolean B = false;
    public static String C = null;
    public static boolean D = false;
    public static boolean E = false;
    public static boolean F = false;
    public static boolean G = false;
    public static boolean H = true;
    public static boolean I = true;
    public static boolean J = false;
    public static boolean K = false;
    public static boolean L = false;
    public static boolean M = false;
    public static boolean N = false;
    public static boolean O = false;
    public static boolean P = false;
    public static boolean Q = false;
    public static boolean R = false;
    public static ArrayList<n> S = null;
    public static boolean T = false;
    public static boolean U = false;
    public static boolean V = false;
    public static boolean W = false;
    public static boolean X = false;
    public static boolean Y = false;
    public static boolean Z = false;
    public static boolean aa = false;
    public static boolean ab = false;

    public static String a(String str) {
        if (str.equals("home")) {
            return "#home#";
        }
        if (str.equals("device")) {
            return "/";
        }
        if (str.equals("sdcard")) {
            return "/sdcard";
        }
        if (str.equals("picture")) {
            return "gallery://local/buckets/";
        }
        if (str.equals("music")) {
            return "music://";
        }
        if (str.equals("movie")) {
            return "video://";
        }
        if (str.equals("book")) {
            return "book://";
        }
        if (str.equals("download")) {
            return "Download";
        }
        if (str.equals("lan")) {
            return "smb://";
        }
        if (str.equals("cloud")) {
            return "net://";
        }
        if (str.equals("pcs")) {
            return "pcs://";
        }
        if (str.equals("ftp")) {
            return "ftp://";
        }
        if (str.equals("bluetooth")) {
            return "bt://";
        }
        if (str.equals("appManager")) {
            return "app://";
        }
        if (str.equals("sdcardAnalyst")) {
            String b2 = b.b();
            if (!b2.endsWith("/")) {
                b2 = b2 + "/";
            }
            return "du://" + b2;
        }
        if (str.equals("remoteManager")) {
            return "remote://";
        }
        if (str.equals("downloadManager")) {
            return "download://";
        }
        return null;
    }

    private static ArrayList<n> a(Object obj) {
        int i2 = 0;
        JSONArray jSONArray = (JSONArray) obj;
        if (jSONArray == null || jSONArray.size() == 0) {
            return null;
        }
        ArrayList<n> arrayList = new ArrayList<>();
        while (true) {
            try {
                int i3 = i2;
                if (i3 >= jSONArray.size()) {
                    break;
                }
                String[] split = ((String) jSONArray.get(i3)).split(":");
                n nVar = new n();
                nVar.f1161a = split[0].trim() + ",";
                String[] split2 = split[1].split(",");
                nVar.f1162b = split2[0].trim();
                nVar.c = split2[1].trim();
                arrayList.add(nVar);
                i2 = i3 + 1;
            } catch (Exception e2) {
            }
        }
        return arrayList;
    }

    public static void a() {
        b();
        if (Build.MODEL != null && Build.MODEL.contains("IdeaPad")) {
            s = true;
        }
        if (FileExplorerActivity.e.equalsIgnoreCase("Amazon")) {
            e = false;
            K = true;
        }
        if (FileExplorerActivity.e.equalsIgnoreCase("工信部")) {
            i = true;
            r = true;
        }
        R = false;
    }

    public static String b(String str) {
        String c2 = c(str);
        return c2 == null ? ak.d(str) : c2;
    }

    private static void b() {
        try {
            try {
                String str = "/system/etc/ESOemConfig";
                if (!new File("/system/etc/ESOemConfig").exists()) {
                    if (!new File("/sdcard/ESOemConfig").exists()) {
                        return;
                    } else {
                        str = "/sdcard/ESOemConfig";
                    }
                }
                JSONParser jSONParser = new JSONParser();
                FileReader fileReader = new FileReader(str);
                JSONObject jSONObject = (JSONObject) jSONParser.parse(fileReader);
                if (jSONObject != null) {
                    if (jSONObject.containsKey("oem")) {
                        f1160b = (String) jSONObject.get("oem");
                    }
                    if (jSONObject.containsKey("home_dir")) {
                        c = jSONObject.get("home_dir").toString();
                    }
                    if (jSONObject.containsKey("enable_bt")) {
                        d = ((Boolean) jSONObject.get("enable_bt")).booleanValue();
                    }
                    if (jSONObject.containsKey("enable_recomm")) {
                        e = ((Boolean) jSONObject.get("enable_recomm")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_help")) {
                        g = ((Boolean) jSONObject.get("disable_help")).booleanValue();
                    }
                    if (jSONObject.containsKey("enable_appmgr")) {
                        f = ((Boolean) jSONObject.get("enable_appmgr")).booleanValue();
                    }
                    if (jSONObject.containsKey("oem_about")) {
                        i = ((Boolean) jSONObject.get("oem_about")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_root_dir")) {
                        j = ((Boolean) jSONObject.get("disable_root_dir")).booleanValue();
                    }
                    if (jSONObject.containsKey("hide_paths")) {
                        JSONArray jSONArray = (JSONArray) jSONObject.get("hide_paths");
                        if (jSONArray.size() > 0) {
                            h = jSONArray;
                        }
                    }
                    if (jSONObject.containsKey("storage_patterns")) {
                        JSONArray jSONArray2 = (JSONArray) jSONObject.get("storage_patterns");
                        if (jSONArray2.size() > 0) {
                            k = jSONArray2;
                        }
                    }
                    if (jSONObject.containsKey("storage_names")) {
                        JSONArray jSONArray3 = (JSONArray) jSONObject.get("storage_names");
                        if (jSONArray3.size() > 0) {
                            l = new ArrayList();
                            for (int i2 = 0; i2 < jSONArray3.size(); i2++) {
                                JSONObject jSONObject2 = (JSONObject) jSONArray3.get(i2);
                                o oVar = new o();
                                oVar.f1163a = jSONObject2.get("storage_path").toString();
                                oVar.f1164b = jSONObject2.get("storage_show_name").toString();
                                try {
                                    oVar.c = jSONObject2.get("lang").toString();
                                } catch (Exception e2) {
                                    oVar.c = null;
                                }
                                l.add(oVar);
                            }
                        }
                    }
                    if (jSONObject.containsKey("init_windows")) {
                        JSONArray jSONArray4 = (JSONArray) jSONObject.get("init_windows");
                        if (jSONArray4.size() > 0) {
                            m = jSONArray4;
                        }
                    }
                    if (jSONObject.containsKey("disable_audio_player")) {
                        n = ((Boolean) jSONObject.get("disable_audio_player")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_video_player")) {
                        o = ((Boolean) jSONObject.get("disable_video_player")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_decompress")) {
                        p = ((Boolean) jSONObject.get("disable_decompress")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_compress")) {
                        q = ((Boolean) jSONObject.get("disable_compress")).booleanValue();
                    }
                    if (jSONObject.containsKey("data_notify")) {
                        r = ((Boolean) jSONObject.get("data_notify")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_bitmap_inPuragable")) {
                        s = ((Boolean) jSONObject.get("disable_bitmap_inPuragable")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_autoUpdate_check")) {
                        t = ((Boolean) jSONObject.get("disable_autoUpdate_check")).booleanValue();
                    }
                    if (jSONObject.containsKey("show_statistics")) {
                        u = ((Boolean) jSONObject.get("show_statistics")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_taskmgr")) {
                        v = ((Boolean) jSONObject.get("disable_taskmgr")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_root_explorer")) {
                        w = ((Boolean) jSONObject.get("disable_root_explorer")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_netmgr")) {
                        x = ((Boolean) jSONObject.get("disable_netmgr")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_imgviewer")) {
                        y = ((Boolean) jSONObject.get("disable_imgviewer")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_intent_getcontent")) {
                        z = ((Boolean) jSONObject.get("disable_intent_getcontent")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_intent_setwallpaper")) {
                        A = ((Boolean) jSONObject.get("disable_intent_setwallpaper")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_intent_setringtone")) {
                        B = ((Boolean) jSONObject.get("disable_intent_setringtone")).booleanValue();
                    }
                    if (jSONObject.containsKey("ftp_server_home_dir")) {
                        C = (String) jSONObject.get("ftp_server_home_dir");
                    }
                    if (jSONObject.containsKey("disable_es_share")) {
                        D = ((Boolean) jSONObject.get("disable_es_share")).booleanValue();
                    }
                    if (jSONObject.containsKey("use_text_wifi")) {
                        E = ((Boolean) jSONObject.get("use_text_wifi")).booleanValue();
                    }
                    if (jSONObject.containsKey("no_sim")) {
                        F = ((Boolean) jSONObject.get("no_sim")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_player_setringtone")) {
                        G = ((Boolean) jSONObject.get("disable_player_setringtone")).booleanValue();
                    }
                    if (jSONObject.containsKey("show_albumart")) {
                        H = ((Boolean) jSONObject.get("show_albumart")).booleanValue();
                    }
                    if (jSONObject.containsKey("enable_pcs_drive")) {
                        I = ((Boolean) jSONObject.get("enable_pcs_drive")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_theme")) {
                        K = ((Boolean) jSONObject.get("disable_theme")).booleanValue();
                    }
                    if (jSONObject.containsKey("large_layout")) {
                        J = ((Boolean) jSONObject.get("large_layout")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_lang_select")) {
                        L = ((Boolean) jSONObject.get("disable_lang_select")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_gesture")) {
                        M = ((Boolean) jSONObject.get("disable_gesture")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_root_select")) {
                        N = ((Boolean) jSONObject.get("disable_root_select")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_es_download")) {
                        O = ((Boolean) jSONObject.get("disable_es_download")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_cloud")) {
                        P = ((Boolean) jSONObject.get("disable_cloud")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_pcs_third")) {
                        Q = ((Boolean) jSONObject.get("disable_pcs_third")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_pcs")) {
                        R = ((Boolean) jSONObject.get("disable_pcs")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_recycle")) {
                        ab = ((Boolean) jSONObject.get("disable_recycle")).booleanValue();
                    }
                    if (jSONObject.containsKey("default_apps")) {
                        S = a(jSONObject.get("default_apps"));
                    }
                    if (jSONObject.containsKey("mount_smb")) {
                        T = ((Boolean) jSONObject.get("mount_smb")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_hide")) {
                        U = ((Boolean) jSONObject.get("disable_hide")).booleanValue();
                    }
                    if (jSONObject.containsKey("spreadtrum_inmem")) {
                        V = ((Boolean) jSONObject.get("spreadtrum_inmem")).booleanValue();
                    }
                    if (jSONObject.containsKey("enable_ellipsized_text")) {
                        W = ((Boolean) jSONObject.get("enable_ellipsized_text")).booleanValue();
                    }
                    if (jSONObject.containsKey("scan_oem_ext_columns")) {
                        X = ((Boolean) jSONObject.get("scan_oem_ext_columns")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_home_shortcut")) {
                        Y = ((Boolean) jSONObject.get("disable_home_shortcut")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_remotemgr")) {
                        Z = ((Boolean) jSONObject.get("disable_remotemgr")).booleanValue();
                    }
                    if (jSONObject.containsKey("disable_clipboard")) {
                        aa = ((Boolean) jSONObject.get("disable_clipboard")).booleanValue();
                    }
                    jSONObject.clear();
                    fileReader.close();
                    String packageName = FexApplication.a().getPackageName();
                    PackageManager packageManager = FexApplication.a().getPackageManager();
                    if (n) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, AudioPlayerProxyActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, AudioPlayerProxyActivity.class.getName()), 1, 1);
                    }
                    if (o) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, PopVideoPlayerProxyActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, PopVideoPlayerProxyActivity.class.getName()), 1, 1);
                    }
                    if (p) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, CompressionProxyActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, CompressionProxyActivity.class.getName()), 1, 1);
                    }
                    if (y) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, PopRemoteImageBrowser.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, PopRemoteImageBrowser.class.getName()), 1, 1);
                    }
                    if (z) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESContentChooserActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESContentChooserActivity.class.getName()), 1, 1);
                    }
                    if (A) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESWallPaperChooserActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESWallPaperChooserActivity.class.getName()), 1, 1);
                    }
                    if (B) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESRingtoneChooserActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESRingtoneChooserActivity.class.getName()), 1, 1);
                    }
                    if (D) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESFileSharingActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, ESFileSharingActivity.class.getName()), 1, 1);
                    }
                    if (O) {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, BrowserDownloaderActivity.class.getName()), 2, 1);
                    } else {
                        packageManager.setComponentEnabledSetting(new ComponentName(packageName, BrowserDownloaderActivity.class.getName()), 1, 1);
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } catch (FileNotFoundException e4) {
            Log.d(f1159a, "OEC Config file not found");
        }
    }

    public static String c(String str) {
        String str2;
        if (l != null) {
            for (o oVar : l) {
                if (oVar.f1163a != null && (str2 = oVar.f1163a) != null) {
                    try {
                        if (str2.equals(str) && (oVar.c == null || oVar.c.length() == 0 || oVar.c.equals(com.estrongs.android.pop.esclasses.c.f1130a))) {
                            return oVar.f1164b;
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return null;
    }

    public static u d(String str) {
        if (S == null) {
            return null;
        }
        String str2 = str + ",";
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= S.size()) {
                break;
            }
            n nVar = S.get(i3);
            if (nVar.f1161a.contains(str2)) {
                return new u(nVar.f1162b, nVar.c);
            }
            i2 = i3 + 1;
        }
        return null;
    }
}
