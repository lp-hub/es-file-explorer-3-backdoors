package com.estrongs.fs.c.a;

import com.estrongs.fs.g;
import java.text.Collator;
import java.util.Comparator;

/* loaded from: classes.dex */
public abstract class a implements Comparator<g> {

    /* renamed from: a, reason: collision with root package name */
    protected final Collator f3037a = Collator.getInstance();

    /* renamed from: b, reason: collision with root package name */
    protected int f3038b = 1;

    public a(boolean z) {
        a(z);
        this.f3037a.setStrength(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(int i, int i2) {
        return (i - i2) * this.f3038b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(String str, String str2) {
        if (str != null && str2 != null) {
            return this.f3037a.compare(str, str2) * this.f3038b;
        }
        if (str == null && str2 != null) {
            return this.f3038b * (-1);
        }
        if (str == null || str2 != null) {
            return 0;
        }
        return this.f3038b * 1;
    }

    public void a(boolean z) {
        this.f3038b = z ? 1 : -1;
    }

    public boolean a() {
        return this.f3038b == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(g gVar) {
        return gVar.getFileType().a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b(g gVar) {
        if (gVar.getName() != null) {
            return gVar.getName().toLowerCase();
        }
        return null;
    }
}
