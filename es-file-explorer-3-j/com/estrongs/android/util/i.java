package com.estrongs.android.util;

import android.content.Context;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public static HashMap<String, Object> f2698a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public static HashMap<String, String> f2699b = new HashMap<>();
    public static String c = null;

    public static Class<?> a(Object obj, String str) {
        if (obj == null) {
            return Class.forName(str);
        }
        try {
            return ((ClassLoader) obj).loadClass(str);
        } catch (Exception e) {
            return null;
        }
    }

    public static Object a(Context context, String str, String str2) {
        synchronized (f2698a) {
            if (str == null) {
                return null;
            }
            Object obj = f2698a.get(str);
            if (obj != null) {
                return obj;
            }
            String str3 = f2699b.get(str);
            if (str3 == null) {
                return null;
            }
            if (!new File(str3).exists() && !a(context, str)) {
                return null;
            }
            DexClassLoader dexClassLoader = str2 != null ? new DexClassLoader(str3 + ":" + str2, c, null, i.class.getClassLoader()) : new DexClassLoader(str3, c, null, i.class.getClassLoader());
            f2698a.put(str, dexClassLoader);
            return dexClassLoader;
        }
    }

    public static Object a(Object obj, String str, String str2, Class[] clsArr, Object[] objArr) {
        try {
            return a(obj, str).getMethod(str2, clsArr).invoke(null, objArr);
        } catch (ClassNotFoundException e) {
            Log.e("ESClassLoader", "Can't find class:" + str);
            throw e;
        } catch (NoSuchMethodException e2) {
            Log.e("ESClassLoader", "Can't find method:" + str2);
            throw e2;
        } catch (SecurityException e3) {
            Log.e("ESClassLoader", "Can't get method:" + str2 + " for security issue");
            throw e3;
        } catch (Exception e4) {
            Log.e("ESClassLoader", "call method:" + str2 + " failed");
            throw e4;
        }
    }

    public static Object a(Object obj, String str, String str2, Object[] objArr) {
        if (objArr == null) {
            return a(obj, str, str2, null, null);
        }
        Class[] clsArr = new Class[objArr.length];
        for (int i = 0; i < objArr.length; i++) {
            clsArr[i] = objArr[i].getClass();
        }
        return a(obj, str, str2, clsArr, objArr);
    }

    public static Object a(Object obj, String str, Object[] objArr) {
        try {
            Class<?> a2 = a(obj, str);
            if (objArr == null) {
                return a2.newInstance();
            }
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
            return a2.getConstructor(clsArr).newInstance(objArr);
        } catch (Exception e) {
            Log.e("ESClassLoader", "create object failed for class:" + str);
            return null;
        }
    }

    public static Object a(String str, String str2) {
        return a((Context) null, str, str2);
    }

    public static Object a(String str, String str2, Class[] clsArr, Object[] objArr) {
        return a(null, str, str2, clsArr, objArr);
    }

    public static String a() {
        return c;
    }

    public static void a(String str) {
        c = str;
        if (str == null) {
            return;
        }
        String str2 = ak.aY(c) + "lib/";
        f2699b.put("dropbox", c + "/es_dropbox.jar");
        f2699b.put("vdisk", c + "/es_vdisk.jar");
        f2699b.put("kanbox", c + "/es_kanbox.jar");
        f2699b.put("sugarsync", c + "/es_sugarsync.jar");
        f2699b.put("kuaipan", c + "/es_kuaipan.jar");
        f2699b.put("box", c + "/es_boxnet.jar");
        f2699b.put("skydrive", c + "/es_skydrv.jar");
        f2699b.put("gdrive", c + "/es_gdrive.jar");
        f2699b.put("s3", c + "/es_s3.jar");
        f2699b.put("ubuntu", c + "/es_ubuntu.jar");
        f2699b.put("megacloud", c + "/es_megacloud.jar");
    }

    public static boolean a(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            if (str.equals("dropbox")) {
                a(context, c + "/es_dropbox.jar", C0000R.raw.netdisk_dropbox, -1);
            } else if (str.equals("sugarsync")) {
                a(context, c + "/es_sugarsync.jar", C0000R.raw.netdisk_sugarsync, -1);
            } else if (str.equals("box")) {
                a(context, c + "/es_boxnet.jar", C0000R.raw.netdisk_boxnet, -1);
            } else if (str.equals("kanbox")) {
                a(context, c + "/es_kanbox.jar", C0000R.raw.netdisk_kanbox, -1);
            } else if (str.equals("kuaipan")) {
                a(context, c + "/es_kuaipan.jar", C0000R.raw.netdisk_kuaipan, -1);
            } else if (str.equals("vdisk")) {
                a(context, c + "/es_vdisk.jar", C0000R.raw.netdisk_vdisk, -1);
            } else if (str.equals("skydrive")) {
                a(context, c + "/es_skydrv.jar", C0000R.raw.netdisk_skydrv, -1);
            } else if (str.equals("gdrive")) {
                a(context, c + "/es_gdrive.jar", C0000R.raw.netdisk_gdrive, -1);
            } else if (str.equals("s3")) {
                a(context, c + "/es_s3.jar", C0000R.raw.netdisk_s3, -1);
            } else if (str.equals("ubuntu")) {
                a(context, c + "/es_ubuntu.jar", C0000R.raw.netdisk_ubuntu, -1);
            } else if (str.equals("megacloud")) {
                a(context, c + "/es_megacloud.jar", C0000R.raw.netdisk_megacloud, -1);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean a(Context context, String str, int i, int i2) {
        try {
            InputStream openRawResource = context.getResources().openRawResource(i);
            if (!aw.a(openRawResource, str, i2)) {
                return false;
            }
            openRawResource.close();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static Object b(String str) {
        return a(str, (String) null);
    }

    public static Object b(String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        try {
            Class<?> a2 = a(b(str), str2);
            return objArr != null ? a2.getConstructor(clsArr).newInstance(objArr) : a2.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
            Log.e("ESClassLoader", "create object failed for class:" + str2);
            return null;
        }
    }
}
