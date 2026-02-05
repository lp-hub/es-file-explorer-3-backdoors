package android.support.v4.view.a;

import android.os.Build;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final c f58a;

    /* renamed from: b, reason: collision with root package name */
    private final Object f59b;

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            f58a = new d();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f58a = new b();
        } else {
            f58a = new e();
        }
    }

    public a(Object obj) {
        this.f59b = obj;
    }

    public Object a() {
        return this.f59b;
    }

    public void a(int i) {
        f58a.a(this.f59b, i);
    }

    public void a(CharSequence charSequence) {
        f58a.a(this.f59b, charSequence);
    }

    public void a(boolean z) {
        f58a.a(this.f59b, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            a aVar = (a) obj;
            return this.f59b == null ? aVar.f59b == null : this.f59b.equals(aVar.f59b);
        }
        return false;
    }

    public int hashCode() {
        if (this.f59b == null) {
            return 0;
        }
        return this.f59b.hashCode();
    }
}
