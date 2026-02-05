package android.support.v4.view.a;

import android.os.Build;
import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static final h f60a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f61b;

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f60a = new i();
        } else {
            f60a = new k();
        }
    }

    public g() {
        this.f61b = f60a.a(this);
    }

    public g(Object obj) {
        this.f61b = obj;
    }

    public a a(int i) {
        return null;
    }

    public Object a() {
        return this.f61b;
    }

    public List<a> a(String str, int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }
}
