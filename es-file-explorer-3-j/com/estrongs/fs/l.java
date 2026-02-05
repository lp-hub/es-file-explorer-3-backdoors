package com.estrongs.fs;

import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;

/* loaded from: classes.dex */
public class l {
    private final String Q;
    private boolean R;

    /* renamed from: a, reason: collision with root package name */
    public static l f3183a = new l("folder", true);

    /* renamed from: b, reason: collision with root package name */
    public static l f3184b = new l("file", false);
    public static l c = new l("smb_server", true);
    public static l d = new l("ftp_server", true);
    public static l e = new l("sftp_server", true);
    public static l f = new l("ftps_server", true);
    public static l g = new l("webdav_server", true);
    public static l h = new l("webdavs_server", true);
    public static l i = new l("bt_server_bonded_pc", true);
    public static l j = new l("bt_server_pc", true);
    public static l k = new l("bt_server_bonded_phone", true);
    public static l l = new l("bt_server_phone", true);
    public static l m = new l("bt_server_bonded_other", true);
    public static l n = new l("bt_server_other", true);
    public static l o = new l("folder_shared", true);
    public static l p = new l("netdisk_server", true);
    public static l q = new l("netdisk_server_pcs", true);
    public static l r = new l("netdisk_server_sugarsync", true);
    public static l s = new l("netdisk_server_dropbox", true);
    public static l t = new l("netdisk_server_boxnet", true);
    public static l u = new l("netdisk_server_kanbox", true);
    public static l v = new l("netdisk_server_kuaipan", true);
    public static l w = new l("netdisk_server_vdisk", true);
    public static l x = new l("netdisk_server_skydrv", true);
    public static l y = new l("netdisk_server_gdrive", true);
    public static l z = new l("netdisk_server_s3", true);
    public static l A = new l("netdisk_server_ubuntu", true);
    public static l B = new l("netdisk_server_megacloud", true);
    public static l C = new l("netdisk_server_yandex", true);
    public static l D = new l("netdisk_folder", true);
    public static l E = new l("pcs_folder", true);
    public static l F = new l("netdisk_folder_photo", true);
    public static l G = new l("netdisk_folder_other", true);
    public static l H = new l("sp_server_flickr", true);
    public static l I = new l("sp_server_instagram", true);
    public static l J = new l("sp_server_facebook", true);
    public static l K = new l("sp_server_pcs", true);
    public static l L = new l("create_site", true);
    public static l M = new l("unknown", false);
    public static l N = new l("pcs_formal_folder", true);
    public static l O = new l("pcs_provisional_folder", true);
    public static l P = new l("pcs_provisional_active_folder", true);

    public l(String str, boolean z2) {
        this.Q = str;
        this.R = z2;
    }

    public static l a(String str) {
        if ("pcs".equals(str)) {
            return q;
        }
        if ("sugarsync".equals(str)) {
            return r;
        }
        if ("dropbox".equals(str)) {
            return s;
        }
        if ("box".equals(str)) {
            return t;
        }
        if ("kanbox".equals(str)) {
            return u;
        }
        if ("kuaipan".equals(str)) {
            return v;
        }
        if ("vdisk".equals(str)) {
            return w;
        }
        if ("skydrive".equals(str)) {
            return x;
        }
        if ("gdrive".equals(str)) {
            return y;
        }
        if ("s3".equals(str)) {
            return z;
        }
        if ("ubuntu".equals(str)) {
            return A;
        }
        if ("yandex".equals(str)) {
            return C;
        }
        if ("megacloud".equals(str)) {
            return B;
        }
        return null;
    }

    public static l b(String str) {
        if ("Flickr".equals(str)) {
            return H;
        }
        if ("Instagram".equals(str)) {
            return I;
        }
        if ("Facebook".equals(str)) {
            return J;
        }
        return null;
    }

    public static l c(String str) {
        if (aw.a((CharSequence) str) || !str.endsWith("/")) {
            return M;
        }
        l lVar = f3183a;
        return (ak.aq(str) || ak.ao(str)) ? E : D;
    }

    public boolean a() {
        return this.R;
    }

    public boolean b() {
        return !this.R;
    }

    public String c() {
        return this.Q;
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            return this.Q != null && this.Q.equals(((l) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.Q != null ? this.Q.hashCode() : super.hashCode();
    }

    public String toString() {
        return this.Q;
    }
}
