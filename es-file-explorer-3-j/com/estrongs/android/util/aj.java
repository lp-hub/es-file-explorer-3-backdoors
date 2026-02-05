package com.estrongs.android.util;

import android.util.Log;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class aj {

    /* renamed from: a, reason: collision with root package name */
    private Object f2668a;

    public aj(Object obj) {
        this.f2668a = null;
        this.f2668a = obj;
    }

    public static aj a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new aj(obj);
    }

    public Object a(String str) {
        return a(str, (Object[]) null);
    }

    public Object a(String str, Class<?> cls, Object obj) {
        return a(str, new Class[]{cls}, new Object[]{obj});
    }

    public Object a(String str, Object obj) {
        return a(str, new Object[]{obj});
    }

    public Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            return this.f2668a.getClass().getMethod(str, clsArr).invoke(this.f2668a, objArr);
        } catch (NoSuchMethodException e) {
            Log.e("ObjectHelper", "Can't find method:" + str);
            return null;
        } catch (SecurityException e2) {
            Log.e("ObjectHelper", "Can't get method:" + str + " for security issue");
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            Log.e("ObjectHelper", "call method:" + str + " failed:" + e3.getMessage());
            return null;
        }
    }

    public Object a(String str, Object[] objArr) {
        Method method;
        try {
            Class<?> cls = this.f2668a.getClass();
            if (objArr != null) {
                Class<?>[] clsArr = new Class[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    if (objArr[i] != null) {
                        clsArr[i] = objArr[i].getClass();
                    } else {
                        clsArr[i] = String.class;
                    }
                }
                method = cls.getMethod(str, clsArr);
            } else {
                method = cls.getMethod(str, (Class[]) null);
            }
            return method.invoke(this.f2668a, objArr);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            Log.e("ObjectHelper", "Can't find method:" + str);
            return null;
        } catch (SecurityException e2) {
            Log.e("ObjectHelper", "Can't get method:" + str + " for security issue");
            return null;
        } catch (Exception e3) {
            Log.e("ObjectHelper", "call method:" + str + " failed:" + e3.getMessage());
            return null;
        }
    }
}
