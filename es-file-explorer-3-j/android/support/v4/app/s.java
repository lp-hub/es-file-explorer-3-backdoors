package android.support.v4.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s extends q {

    /* renamed from: a, reason: collision with root package name */
    static boolean f28a = false;

    /* renamed from: b, reason: collision with root package name */
    final android.support.v4.b.c<t> f29b = new android.support.v4.b.c<>();
    final android.support.v4.b.c<t> c = new android.support.v4.b.c<>();
    FragmentActivity d;
    boolean e;
    boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(FragmentActivity fragmentActivity, boolean z) {
        this.d = fragmentActivity;
        this.e = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(FragmentActivity fragmentActivity) {
        this.d = fragmentActivity;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.f29b.a() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.f29b.a(); i++) {
                t f = this.f29b.f(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f29b.e(i));
                printWriter.print(": ");
                printWriter.println(f.toString());
                f.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        if (this.c.a() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.c.a(); i2++) {
                t f2 = this.c.f(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.c.e(i2));
                printWriter.print(": ");
                printWriter.println(f2.toString());
                f2.a(str3, fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // android.support.v4.app.q
    public boolean a() {
        int a2 = this.f29b.a();
        boolean z = false;
        for (int i = 0; i < a2; i++) {
            t f = this.f29b.f(i);
            z |= f.h && !f.f;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (f28a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
        } else {
            this.e = true;
            for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
                this.f29b.f(a2).a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (f28a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
        } else {
            for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
                this.f29b.f(a2).e();
            }
            this.e = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (f28a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
        } else {
            this.f = true;
            this.e = false;
            for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
                this.f29b.f(a2).b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (this.f) {
            if (f28a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.f = false;
            for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
                this.f29b.f(a2).c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
            this.f29b.f(a2).k = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
            this.f29b.f(a2).d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        if (!this.f) {
            if (f28a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int a2 = this.f29b.a() - 1; a2 >= 0; a2--) {
                this.f29b.f(a2).f();
            }
        }
        if (f28a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int a3 = this.c.a() - 1; a3 >= 0; a3--) {
            this.c.f(a3).f();
        }
        this.c.b();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        android.support.v4.b.a.a(this.d, sb);
        sb.append("}}");
        return sb.toString();
    }
}
