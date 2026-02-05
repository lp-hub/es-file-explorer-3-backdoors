package com.baidu.mobstat;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;

/* loaded from: classes.dex */
public class StatService {
    public static final int EXCEPTION_LOG = 1;

    /* renamed from: a, reason: collision with root package name */
    private static boolean f126a = false;

    private static void a(Context context) {
        if (a(context, "onError(...)")) {
            j.a().a(context.getApplicationContext());
            l.a().a(true, context.getApplicationContext());
        }
    }

    private static boolean a() {
        return f126a;
    }

    private static boolean a(Context context, String str) {
        if (context != null) {
            return true;
        }
        com.baidu.mobstat.a.c.c("stat", str + ":context=null");
        return false;
    }

    private static boolean a(Class<?> cls, String str) {
        boolean z = false;
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        com.baidu.mobstat.a.c.a("isCalledBy", Integer.valueOf(stackTrace.length), cls, str);
        if (stackTrace.length >= 2) {
            for (int i = 2; i < stackTrace.length; i++) {
                StackTraceElement stackTraceElement = stackTrace[i];
                if (stackTraceElement.getMethodName().equals(str)) {
                    try {
                        Class<?> cls2 = Class.forName(stackTraceElement.getClassName());
                        com.baidu.mobstat.a.c.a("isCalledBy", cls2);
                        while (cls2.getSuperclass() != null && cls2.getSuperclass() != cls) {
                            cls2 = cls2.getSuperclass();
                            com.baidu.mobstat.a.c.a("isCalledBy", cls2);
                        }
                        z = true;
                    } catch (Exception e) {
                        com.baidu.mobstat.a.c.a(e);
                    }
                }
            }
        }
        return z;
    }

    private static void b() {
        f126a = true;
    }

    private static void b(Context context) {
        if (k.a().b()) {
            return;
        }
        k.a().a(context.getApplicationContext());
    }

    public static void onEvent(Context context, String str, String str2) {
        onEvent(context, str, str2, 1);
    }

    public static void onEvent(Context context, String str, String str2, int i) {
        if (!a(context, "onEvent(...)") || str == null || str.equals("")) {
            return;
        }
        b(context);
        d.a().a(context.getApplicationContext(), str, str2, i, System.currentTimeMillis());
    }

    public static void onEventDuration(Context context, String str, String str2, long j) {
        if (!a(context, "onEventDuration(...)") || str == null || str.equals("")) {
            return;
        }
        if (j <= 0) {
            com.baidu.mobstat.a.c.b("stat", "onEventDuration: duration must be greater than zero");
        } else {
            b(context);
            d.a().c(context.getApplicationContext(), str, str2, j);
        }
    }

    public static void onEventEnd(Context context, String str, String str2) {
        if (!a(context, "onEventEnd(...)") || str == null || str.equals("")) {
            return;
        }
        b(context);
        d.a().b(context.getApplicationContext(), str, str2, System.currentTimeMillis());
    }

    public static void onEventStart(Context context, String str, String str2) {
        if (!a(context, "onEventStart(...)") || str == null || str.equals("")) {
            return;
        }
        b(context);
        d.a().a(context.getApplicationContext(), str, str2, System.currentTimeMillis());
    }

    public static synchronized void onPageEnd(Context context, String str) {
        synchronized (StatService.class) {
            if (context != null && str != null) {
                if (!str.equals("")) {
                    s.b().b(context, System.currentTimeMillis(), str);
                }
            }
            com.baidu.mobstat.a.c.c("stat", "onPageEnd :parame=null || empty");
        }
    }

    public static synchronized void onPageStart(Context context, String str) {
        synchronized (StatService.class) {
            if (context != null && str != null) {
                if (!str.equals("")) {
                    b(context);
                    s.b().a(context, System.currentTimeMillis(), str);
                }
            }
            com.baidu.mobstat.a.c.c("stat", "onPageStart :parame=null || empty");
        }
    }

    public static synchronized void onPause(Context context) {
        synchronized (StatService.class) {
            if (a(context, "onPause(...)")) {
                if (!a((Class<?>) Activity.class, "onPause")) {
                    throw new SecurityException("onPause(Context context)不在Activity.onPause()中被调用||onPause(Context context)is not called in Activity.onPause().");
                }
                s.b().b(context, System.currentTimeMillis());
            }
        }
    }

    public static synchronized void onPause(Fragment fragment) {
        synchronized (StatService.class) {
            if (fragment == null) {
                com.baidu.mobstat.a.c.c("stat", "onResume :parame=null");
            } else {
                if (!a((Class<?>) Fragment.class, "onPause")) {
                    throw new SecurityException("Fragment onPause(Context context)不在Fragment.onPause()中被调用||onPause(Context context)is not called in Fragment.onPause().");
                }
                s.b().b(fragment, System.currentTimeMillis());
            }
        }
    }

    public static synchronized void onPause(Object obj) {
        synchronized (StatService.class) {
            if (obj == null) {
                com.baidu.mobstat.a.c.c("stat", "android.app.Fragment onResume :parame=null");
            } else {
                if (!a(obj.getClass(), "onPause")) {
                    throw new SecurityException("android.app.Fragment onPause(Context context)不在android.app.Fragment.onPause()中被调用||onPause(Context context)is not called in android.app.Fragment.onPause().");
                }
                s.b().b(obj, System.currentTimeMillis());
            }
        }
    }

    public static synchronized void onResume(Context context) {
        synchronized (StatService.class) {
            if (a(context, "onResume(...)")) {
                if (!a((Class<?>) Activity.class, "onResume")) {
                    throw new SecurityException("onResume(Context context)不在Activity.onResume()中被调用||onResume(Context context)is not called in Activity.onResume().");
                }
                b(context);
                s.b().a(context, System.currentTimeMillis());
            }
        }
    }

    public static synchronized void onResume(Fragment fragment) {
        synchronized (StatService.class) {
            if (fragment == null) {
                com.baidu.mobstat.a.c.c("stat", "onResume :parame=null");
            } else {
                if (!a((Class<?>) Fragment.class, "onResume")) {
                    throw new SecurityException("onResume(Context context)不在Activity.onResume()中被调用||onResume(Context context)is not called in Activity.onResume().");
                }
                b(fragment.getActivity());
                s.b().a(fragment, System.currentTimeMillis());
            }
        }
    }

    public static synchronized void onResume(Object obj) {
        synchronized (StatService.class) {
            if (obj == null) {
                com.baidu.mobstat.a.c.c("stat", "onResume :parame=null");
            } else {
                if (!a(obj.getClass(), "onResume")) {
                    throw new SecurityException("onResume(Context context)不在Activity.onResume()中被调用||onResume(Context context)is not called in Activity.onResume().");
                }
                b(s.a(obj));
                s.b().a(obj, System.currentTimeMillis());
            }
        }
    }

    public static void setAppChannel(String str) {
        b.a().b(str);
    }

    public static void setAppKey(String str) {
        b.a().a(str);
    }

    public static void setLogSenderDelayed(int i) {
        l.a().a(i);
    }

    public static void setOn(Context context, int i) {
        if (a(context, "setOn(...)")) {
            if (!a((Class<?>) Activity.class, "onCreate")) {
                throw new SecurityException("setOn()没有在Activity.onCreate()内被调用||setOn()is not called in Activity.onCreate().");
            }
            if (a()) {
                return;
            }
            b();
            if ((i & 1) != 0) {
                a(context);
            }
        }
    }

    public static void setSendLogStrategy(Context context, SendStrategyEnum sendStrategyEnum, int i) {
        setSendLogStrategy(context, sendStrategyEnum, i, false);
    }

    public static void setSendLogStrategy(Context context, SendStrategyEnum sendStrategyEnum, int i, boolean z) {
        if (a(context, "setSendLogStrategy(...)")) {
            b(context);
            l.a().a(context.getApplicationContext(), sendStrategyEnum, i, z);
        }
    }

    public static void setSessionTimeOut(int i) {
        if (i <= 0) {
            com.baidu.mobstat.a.c.b("SessionTimeOut is between 1 and 600. Default value[30] is used");
        } else if (i <= 600) {
            s.b().a(i);
        } else {
            com.baidu.mobstat.a.c.b("SessionTimeOut is between 1 and 600. Value[600] is used");
            s.b().a(i);
        }
    }
}
