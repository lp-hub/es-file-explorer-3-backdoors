package com.estrongs.a.b;

/* loaded from: classes.dex */
public class a {
    public static String a(int i) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        StringBuffer stringBuffer = new StringBuffer();
        if (i == -1) {
            i = stackTrace.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            stringBuffer.append(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + "(...);");
            stringBuffer.append(i2 + "--" + stackTraceElement.getMethodName());
        }
        return stringBuffer.toString();
    }
}
