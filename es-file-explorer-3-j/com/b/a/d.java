package com.b.a;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f118a = a.class.getName();

    /* renamed from: b, reason: collision with root package name */
    private Logger f119b = Logger.getLogger("com.intel.bluetooth");

    @Override // com.b.a.b
    public void a(int i, String str, Throwable th) {
        switch (i) {
            case 1:
                this.f119b.log(Level.ALL, str, th);
                return;
            case 2:
            case 3:
            default:
                return;
            case 4:
                this.f119b.log(Level.FINEST, str, th);
                return;
        }
    }

    @Override // com.b.a.c
    public boolean a(int i) {
        switch (i) {
            case 1:
                return this.f119b.isLoggable(Level.ALL);
            case 2:
            case 3:
            default:
                return false;
            case 4:
                return true;
        }
    }
}
