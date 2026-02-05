package org.simpleframework.xml.core;

/* loaded from: classes.dex */
enum MethodType {
    GET(3),
    IS(2),
    SET(3),
    NONE(0);

    private int prefix;

    MethodType(int i) {
        this.prefix = i;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static MethodType[] valuesCustom() {
        MethodType[] valuesCustom = values();
        int length = valuesCustom.length;
        MethodType[] methodTypeArr = new MethodType[length];
        System.arraycopy(valuesCustom, 0, methodTypeArr, 0, length);
        return methodTypeArr;
    }

    public int getPrefix() {
        return this.prefix;
    }
}
