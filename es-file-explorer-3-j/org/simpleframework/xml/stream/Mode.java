package org.simpleframework.xml.stream;

/* loaded from: classes.dex */
public enum Mode {
    DATA,
    ESCAPE,
    INHERIT;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static Mode[] valuesCustom() {
        Mode[] valuesCustom = values();
        int length = valuesCustom.length;
        Mode[] modeArr = new Mode[length];
        System.arraycopy(valuesCustom, 0, modeArr, 0, length);
        return modeArr;
    }
}
