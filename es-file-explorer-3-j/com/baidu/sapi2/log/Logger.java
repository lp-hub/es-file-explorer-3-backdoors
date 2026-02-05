package com.baidu.sapi2.log;

import android.util.Log;
import com.baidu.sapi2.SapiHelper;

/* loaded from: classes.dex */
public class Logger {
    protected static final String TAG = "Sapi";

    protected static String buildMessage(String str) {
        StackTraceElement stackTraceElement = new Throwable().fillInStackTrace().getStackTrace()[2];
        return stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + "(): " + str;
    }

    public static void d(String str) {
        if (getDebuggable()) {
            Log.d(TAG, buildMessage(str));
        }
    }

    public static void d(String str, Throwable th) {
        if (getDebuggable()) {
            Log.d(TAG, buildMessage(str), th);
        }
    }

    public static void e(String str) {
        if (getDebuggable()) {
            Log.e(TAG, buildMessage(str));
        }
    }

    public static void e(String str, Throwable th) {
        if (getDebuggable()) {
            Log.e(TAG, buildMessage(str), th);
        }
    }

    private static boolean getDebuggable() {
        return SapiHelper.getInstance().isDebuggable();
    }

    public static void i(String str) {
        if (getDebuggable()) {
            Log.i(TAG, buildMessage(str));
        }
    }

    public static void i(String str, Throwable th) {
        if (getDebuggable()) {
            Log.i(TAG, buildMessage(str), th);
        }
    }

    public static void v(String str) {
        if (getDebuggable()) {
            Log.v(TAG, buildMessage(str));
        }
    }

    public static void v(String str, Throwable th) {
        if (getDebuggable()) {
            Log.v(TAG, buildMessage(str), th);
        }
    }

    public static void w(String str) {
        if (getDebuggable()) {
            Log.w(TAG, buildMessage(str));
        }
    }

    public static void w(String str, Throwable th) {
        if (getDebuggable()) {
            Log.w(TAG, buildMessage(str), th);
        }
    }

    public static void w(Throwable th) {
        if (getDebuggable()) {
            Log.w(TAG, buildMessage(""), th);
        }
    }
}
