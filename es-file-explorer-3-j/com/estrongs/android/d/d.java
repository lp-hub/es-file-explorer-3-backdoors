package com.estrongs.android.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.m;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.pop.p;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static d f277b;
    private static int j;
    private Context c;

    /* renamed from: a, reason: collision with root package name */
    public static int f276a = 0;
    private static boolean d = false;
    private static HashMap<String, Drawable> e = new HashMap<>();
    private static HashMap<String, Integer> f = new HashMap<>();
    private static HashMap<String, Integer> g = new HashMap<>();
    private static Hashtable<String, g> h = new Hashtable<>();
    private static Hashtable<Drawable, g> i = new Hashtable<>();
    private static HashMap<String, h> k = new HashMap<>();

    static {
        int i2;
        j = 60;
        try {
            String str = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "dalvik.vm.heapsize");
            if (str.toUpperCase().endsWith("M")) {
                str = str.substring(0, str.length() - 1);
            }
            i2 = Integer.parseInt(str);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            i2 = -1;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            i2 = -1;
        } catch (IllegalArgumentException e4) {
            e4.printStackTrace();
            i2 = -1;
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
            i2 = -1;
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
            i2 = -1;
        }
        f.put(String.valueOf(65536), Integer.valueOf(C0000R.drawable.format_apk));
        f.put(String.valueOf(TypeUtils.WIN_DOC), Integer.valueOf(C0000R.drawable.format_word));
        f.put(String.valueOf(TypeUtils.WIN_EXCEL), Integer.valueOf(C0000R.drawable.format_excel));
        f.put(String.valueOf(TypeUtils.WIN_PPT), Integer.valueOf(C0000R.drawable.format_ppt));
        f.put(String.valueOf(TypeUtils.WIN_CHM), Integer.valueOf(C0000R.drawable.format_chm));
        f.put(String.valueOf(TypeUtils.WIN_HTML), Integer.valueOf(C0000R.drawable.format_html));
        f.put(String.valueOf(TypeUtils.PDF_FILE), Integer.valueOf(C0000R.drawable.format_pdf));
        f.put(String.valueOf(TypeUtils.ET_PUB), Integer.valueOf(C0000R.drawable.format_ebook));
        f.put(String.valueOf(TypeUtils.BIT_TORRENT), Integer.valueOf(C0000R.drawable.format_torrent));
        f.put(String.valueOf(TypeUtils.MEDIA_FLASH), Integer.valueOf(C0000R.drawable.format_flash));
        f.put(String.valueOf(589825), Integer.valueOf(C0000R.drawable.pcs_download));
        f.put(com.estrongs.fs.l.c.c(), Integer.valueOf(C0000R.drawable.net_pc));
        f.put(com.estrongs.fs.l.i.c(), Integer.valueOf(C0000R.drawable.bt_type_pc));
        f.put(com.estrongs.fs.l.j.c(), Integer.valueOf(C0000R.drawable.bt_type_pc02));
        f.put(com.estrongs.fs.l.k.c(), Integer.valueOf(C0000R.drawable.bt_type_phone));
        f.put(com.estrongs.fs.l.l.c(), Integer.valueOf(C0000R.drawable.bt_type_phone02));
        f.put(com.estrongs.fs.l.m.c(), Integer.valueOf(C0000R.drawable.bt_type_other));
        f.put(com.estrongs.fs.l.n.c(), Integer.valueOf(C0000R.drawable.bt_type_other02));
        f.put(com.estrongs.fs.l.r.c(), Integer.valueOf(C0000R.drawable.networkdisk_sugarsync));
        f.put(com.estrongs.fs.l.s.c(), Integer.valueOf(C0000R.drawable.networkdisk_dropbox));
        f.put(com.estrongs.fs.l.t.c(), Integer.valueOf(C0000R.drawable.networkdisk_box));
        f.put(com.estrongs.fs.l.u.c(), Integer.valueOf(C0000R.drawable.networkdisk_kanbox));
        f.put(com.estrongs.fs.l.v.c(), Integer.valueOf(C0000R.drawable.networkdisk_kuaipan));
        f.put(com.estrongs.fs.l.w.c(), Integer.valueOf(C0000R.drawable.networkdisk_vdisk));
        f.put(com.estrongs.fs.l.x.c(), Integer.valueOf(C0000R.drawable.networkdisk_skydrive));
        f.put(com.estrongs.fs.l.y.c(), Integer.valueOf(C0000R.drawable.networkdisk_gdrive));
        f.put(com.estrongs.fs.l.z.c(), Integer.valueOf(C0000R.drawable.networkdisk_s3));
        f.put(com.estrongs.fs.l.C.c(), Integer.valueOf(C0000R.drawable.networkdisk_yandex));
        f.put(com.estrongs.fs.l.A.c(), Integer.valueOf(C0000R.drawable.networkdisk_ubuntu));
        f.put(com.estrongs.fs.l.B.c(), Integer.valueOf(C0000R.drawable.networkdisk_mega));
        f.put(com.estrongs.fs.l.p.c(), Integer.valueOf(C0000R.drawable.net_pc));
        f.put(com.estrongs.fs.l.G.c(), Integer.valueOf(C0000R.drawable.bt_type_other02));
        f.put(com.estrongs.fs.l.H.c(), Integer.valueOf(C0000R.drawable.app_pic_net_flickr));
        f.put(com.estrongs.fs.l.I.c(), Integer.valueOf(C0000R.drawable.app_pic_net_instagram));
        f.put(com.estrongs.fs.l.K.c(), Integer.valueOf(C0000R.drawable.app_pic_net_pcs));
        f.put(com.estrongs.fs.l.L.c(), Integer.valueOf(C0000R.drawable.toolbar_new));
        f.put(com.estrongs.fs.l.N.c(), Integer.valueOf(C0000R.drawable.pcs_drive_formal));
        f.put(com.estrongs.fs.l.O.c(), Integer.valueOf(C0000R.drawable.pcs_drive_provisional));
        f.put(com.estrongs.fs.l.P.c(), Integer.valueOf(C0000R.drawable.pcs_drive_provisional_active));
        f.put("-1", Integer.valueOf(C0000R.drawable.format_unkown));
        g.put(com.estrongs.fs.l.E.c(), Integer.valueOf(C0000R.drawable.pcs_folder));
        g.put(com.estrongs.fs.l.d.c(), Integer.valueOf(C0000R.drawable.ftp_folder));
        g.put(com.estrongs.fs.l.f.c(), Integer.valueOf(C0000R.drawable.ftps_folder));
        g.put(com.estrongs.fs.l.e.c(), Integer.valueOf(C0000R.drawable.sftp_folder));
        g.put(com.estrongs.fs.l.g.c(), Integer.valueOf(C0000R.drawable.webdav_folder));
        g.put(com.estrongs.fs.l.h.c(), Integer.valueOf(C0000R.drawable.webdavs_folder));
        g.put(com.estrongs.fs.l.D.c(), Integer.valueOf(C0000R.drawable.net_folder));
        g.put(com.estrongs.fs.l.o.c(), Integer.valueOf(C0000R.drawable.share_folder));
        g.put(com.estrongs.fs.l.F.c(), Integer.valueOf(C0000R.drawable.pic_folder));
        if (i2 >= 24) {
            j = (i2 - 10) * 3;
            if (j > 120) {
                j = FTPReply.SERVICE_NOT_READY;
            }
        } else {
            j = 24;
        }
        if (p.a() <= 8) {
            j = 24;
        }
    }

    private d(Context context) {
        this.c = context;
        a();
        a(new e(this.c));
        if (m.H) {
            a(new b(this.c));
        }
    }

    private Drawable a(int i2) {
        return al.a(this.c).a(i2);
    }

    public static Drawable a(com.estrongs.fs.g gVar, boolean z) {
        return a(gVar, z, new boolean[0]);
    }

    public static Drawable a(com.estrongs.fs.g gVar, boolean z, boolean[] zArr) {
        Drawable drawable;
        if (!(d || i(gVar)) || f277b == null) {
            return d(gVar);
        }
        String f2 = f(gVar);
        if (gVar.getFileType().a()) {
            return d(gVar);
        }
        synchronized (h) {
            if (h.size() > j) {
                d();
            }
        }
        if (h.get(f2) != null) {
            drawable = h.get(f2).f281a;
            if (drawable != null) {
                if (z) {
                    h.get(f2).f282b++;
                    return drawable;
                }
                if (zArr == null || zArr.length <= 0) {
                    return drawable;
                }
                zArr[0] = true;
                return drawable;
            }
        } else {
            drawable = null;
        }
        h hVar = k.get(String.valueOf(av.a(gVar)));
        if (hVar != null && gVar.shouldTryLoadThumbnail()) {
            try {
                drawable = hVar.a(gVar);
            } catch (Throwable th) {
                Log.w("IconManager", "Failed to generate thumbnail for " + gVar.getName(), th);
            }
            if (drawable == null) {
                gVar.setShouldTryLoadThumbnail(false);
            }
        }
        Drawable drawable2 = drawable;
        if (drawable2 == null) {
            drawable2 = d(gVar);
        } else if (zArr != null && zArr.length > 0) {
            zArr[0] = true;
        }
        return drawable2;
    }

    public static Drawable a(String str) {
        Drawable drawable = e.get(str);
        if (drawable != null) {
            return drawable;
        }
        synchronized (e) {
            Drawable drawable2 = e.get(str);
            if (drawable2 != null) {
                return drawable2;
            }
            if (f277b != null) {
                if (f.containsKey(str)) {
                    drawable2 = f277b.a(f.get(str).intValue());
                } else if (g.containsKey(str)) {
                    drawable2 = al.a(f277b.c).g(g.get(str).intValue());
                } else {
                    try {
                        Integer b2 = b(Integer.parseInt(str));
                        if (b2 != null) {
                            drawable2 = f277b.a(b2.intValue());
                        }
                    } catch (NumberFormatException e2) {
                    }
                }
            }
            if (drawable2 == null) {
                return e.get("-1");
            }
            e.put(str, drawable2);
            return drawable2;
        }
    }

    public static d a(Context context) {
        if (f277b == null) {
            f277b = new d(context);
        }
        return f277b;
    }

    public static void a(Drawable drawable) {
        g gVar;
        if (drawable == null || (gVar = i.get(drawable)) == null) {
            return;
        }
        gVar.f282b--;
    }

    public static void a(h hVar) {
        for (String str : hVar.d()) {
            if (!aw.a((CharSequence) str)) {
                k.put(str, hVar);
            }
        }
    }

    public static void a(String str, Drawable drawable) {
        e.put(str, drawable);
    }

    public static void a(String str, Drawable drawable, boolean z) {
        Bitmap bitmap;
        g gVar = h.get(str);
        if (gVar == null) {
            gVar = new g();
        } else {
            i.remove(gVar.f281a);
            if (drawable != gVar.f281a && gVar.f281a != null && (bitmap = ((BitmapDrawable) gVar.f281a).getBitmap()) != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
        }
        gVar.f281a = drawable;
        gVar.f282b = z ? 1 : 0;
        h.put(str, gVar);
        i.put(drawable, gVar);
    }

    public static void a(boolean z) {
        d = z;
    }

    public static boolean a(com.estrongs.fs.g gVar) {
        if (d || i(gVar)) {
            return h.containsKey(f(gVar));
        }
        return true;
    }

    private static Integer b(int i2) {
        if (av.a(i2)) {
            return Integer.valueOf(C0000R.drawable.format_picture);
        }
        if (av.d(i2)) {
            return Integer.valueOf(C0000R.drawable.format_music);
        }
        if (av.e(i2)) {
            return Integer.valueOf(C0000R.drawable.format_media);
        }
        if (av.h(i2)) {
            return Integer.valueOf(C0000R.drawable.format_text);
        }
        if (av.i(i2)) {
            return Integer.valueOf(C0000R.drawable.format_zip);
        }
        return null;
    }

    public static void b() {
        synchronized (h) {
            if (h != null) {
                Iterator<Map.Entry<String, g>> it = h.entrySet().iterator();
                while (it.hasNext()) {
                    Object value = it.next().getValue();
                    if (value instanceof BitmapDrawable) {
                        try {
                            Bitmap bitmap = ((BitmapDrawable) value).getBitmap();
                            if (bitmap != null && !bitmap.isRecycled()) {
                                bitmap.recycle();
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                h.clear();
                i.clear();
            }
        }
    }

    public static void b(Drawable drawable) {
        g gVar;
        if (drawable == null || (gVar = i.get(drawable)) == null) {
            return;
        }
        gVar.f282b = 0;
        d();
    }

    public static boolean b(com.estrongs.fs.g gVar) {
        h hVar = k.get(String.valueOf(av.a(gVar)));
        if (hVar != null) {
            return hVar.g(gVar);
        }
        return false;
    }

    public static boolean b(String str) {
        return k.containsKey(str);
    }

    public static void c() {
        synchronized (i) {
            if (i != null) {
                Iterator<Map.Entry<Drawable, g>> it = i.entrySet().iterator();
                while (it.hasNext()) {
                    it.next().getValue().f282b = 0;
                }
            }
        }
    }

    public static boolean c(com.estrongs.fs.g gVar) {
        if (gVar == null || gVar.getFileType().a()) {
            return false;
        }
        String absolutePath = gVar.getAbsolutePath();
        if (ak.aJ(absolutePath)) {
            return false;
        }
        return (av.b(gVar) || (ak.aO(absolutePath) && k.containsKey(String.valueOf(av.a(gVar))))) && av.a(gVar) != 65558;
    }

    public static Drawable d(com.estrongs.fs.g gVar) {
        return a(j(gVar));
    }

    private static void d() {
        ArrayList arrayList = new ArrayList();
        for (String str : h.keySet()) {
            if (h.get(str).f282b <= 0) {
                arrayList.add(str);
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            g remove = h.remove((String) arrayList.get(i2));
            try {
                i.remove(remove.f281a);
                if (remove.f281a instanceof BitmapDrawable) {
                    Bitmap bitmap = ((BitmapDrawable) remove.f281a).getBitmap();
                    if (bitmap != null && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                } else if (remove.f281a instanceof AnimationDrawable) {
                    AnimationDrawable animationDrawable = (AnimationDrawable) remove.f281a;
                    for (int i3 = 0; i3 < animationDrawable.getNumberOfFrames(); i3++) {
                        ((BitmapDrawable) animationDrawable.getFrame(i3)).getBitmap().recycle();
                    }
                }
                remove.f281a = null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        arrayList.clear();
    }

    public static Drawable e(com.estrongs.fs.g gVar) {
        return a(gVar, false);
    }

    public static String f(com.estrongs.fs.g gVar) {
        return gVar.getFileType().a() ? gVar.getFileType().c() : i(gVar) ? String.valueOf(("210_" + gVar.getPath()).hashCode()) + gVar.lastModified() : String.valueOf(ak.bo(gVar.getAbsolutePath()).hashCode()) + gVar.lastModified();
    }

    public static int g(com.estrongs.fs.g gVar) {
        if (gVar.getFileType().a()) {
            return C0000R.drawable.format_folder;
        }
        String valueOf = String.valueOf(av.a(gVar));
        Integer num = f.get(valueOf);
        if (num == null) {
            try {
                num = b(Integer.parseInt(valueOf));
            } catch (NumberFormatException e2) {
            }
        }
        return num != null ? num.intValue() : C0000R.drawable.format_unkown;
    }

    public static int h(com.estrongs.fs.g gVar) {
        return i(gVar) ? 210 : 48;
    }

    public static boolean i(com.estrongs.fs.g gVar) {
        return gVar.getExtra("need_210_thumbnail") != null && ((Boolean) gVar.getExtra("need_210_thumbnail")).booleanValue();
    }

    private static String j(com.estrongs.fs.g gVar) {
        return gVar.getFileType().a() ? gVar.getFileType().c() : "" + av.a(gVar);
    }

    public void a() {
        synchronized (e) {
            Iterator<String> it = g.keySet().iterator();
            while (it.hasNext()) {
                e.remove(it.next());
            }
            e.clear();
            e.put(com.estrongs.fs.l.f3183a.c(), al.a(this.c).j());
            e.put("-1", a(C0000R.drawable.format_unkown));
        }
    }
}
