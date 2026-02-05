package org.simpleframework.xml;

/* loaded from: classes.dex */
public enum DefaultType {
    FIELD,
    PROPERTY;

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static DefaultType[] valuesCustom() {
        DefaultType[] valuesCustom = values();
        int length = valuesCustom.length;
        DefaultType[] defaultTypeArr = new DefaultType[length];
        System.arraycopy(valuesCustom, 0, defaultTypeArr, 0, length);
        return defaultTypeArr;
    }
}
