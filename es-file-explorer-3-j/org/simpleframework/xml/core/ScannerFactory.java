package org.simpleframework.xml.core;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ScannerFactory {
    private final ScannerCache cache = new ScannerCache();

    public Scanner getInstance(Class cls) {
        Scanner scanner = this.cache.get(cls);
        if (scanner != null) {
            return scanner;
        }
        Scanner scanner2 = new Scanner(cls);
        this.cache.put(cls, scanner2);
        return scanner2;
    }
}
