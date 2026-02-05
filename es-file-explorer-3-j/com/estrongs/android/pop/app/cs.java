package com.estrongs.android.pop.app;

/* loaded from: classes.dex */
public class cs {

    /* renamed from: a, reason: collision with root package name */
    public String f637a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f638b = null;
    public boolean c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static cs[] a(String[] strArr) {
        cs[] csVarArr = new cs[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            csVarArr[i] = new cs();
            csVarArr[i].f638b = strArr[i];
        }
        return csVarArr;
    }
}
