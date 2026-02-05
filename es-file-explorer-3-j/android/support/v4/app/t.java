package android.support.v4.app;

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t implements android.support.v4.content.b<Object> {

    /* renamed from: a, reason: collision with root package name */
    final int f30a;

    /* renamed from: b, reason: collision with root package name */
    final Bundle f31b;
    r<Object> c;
    android.support.v4.content.a<Object> d;
    boolean e;
    boolean f;
    Object g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    t n;
    final /* synthetic */ s o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.i && this.j) {
            this.h = true;
            return;
        }
        if (this.h) {
            return;
        }
        this.h = true;
        if (s.f28a) {
            Log.v("LoaderManager", "  Starting: " + this);
        }
        if (this.d == null && this.c != null) {
            this.d = this.c.a(this.f30a, this.f31b);
        }
        if (this.d != null) {
            if (this.d.getClass().isMemberClass() && !Modifier.isStatic(this.d.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
            }
            if (!this.m) {
                this.d.a(this.f30a, this);
                this.m = true;
            }
            this.d.a();
        }
    }

    void a(android.support.v4.content.a<Object> aVar, Object obj) {
        String str;
        if (this.c != null) {
            if (this.o.d != null) {
                String str2 = this.o.d.f10b.s;
                this.o.d.f10b.s = "onLoadFinished";
                str = str2;
            } else {
                str = null;
            }
            try {
                if (s.f28a) {
                    Log.v("LoaderManager", "  onLoadFinished in " + aVar + ": " + aVar.a((android.support.v4.content.a<Object>) obj));
                }
                this.c.a((android.support.v4.content.a<android.support.v4.content.a<Object>>) aVar, (android.support.v4.content.a<Object>) obj);
                this.f = true;
            } finally {
                if (this.o.d != null) {
                    this.o.d.f10b.s = str;
                }
            }
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f30a);
        printWriter.print(" mArgs=");
        printWriter.println(this.f31b);
        printWriter.print(str);
        printWriter.print("mCallbacks=");
        printWriter.println(this.c);
        printWriter.print(str);
        printWriter.print("mLoader=");
        printWriter.println(this.d);
        if (this.d != null) {
            this.d.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
        if (this.e || this.f) {
            printWriter.print(str);
            printWriter.print("mHaveData=");
            printWriter.print(this.e);
            printWriter.print("  mDeliveredData=");
            printWriter.println(this.f);
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(this.g);
        }
        printWriter.print(str);
        printWriter.print("mStarted=");
        printWriter.print(this.h);
        printWriter.print(" mReportNextStart=");
        printWriter.print(this.k);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.l);
        printWriter.print(str);
        printWriter.print("mRetaining=");
        printWriter.print(this.i);
        printWriter.print(" mRetainingStarted=");
        printWriter.print(this.j);
        printWriter.print(" mListenerRegistered=");
        printWriter.println(this.m);
        if (this.n != null) {
            printWriter.print(str);
            printWriter.println("Pending Loader ");
            printWriter.print(this.n);
            printWriter.println(":");
            this.n.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (s.f28a) {
            Log.v("LoaderManager", "  Retaining: " + this);
        }
        this.i = true;
        this.j = this.h;
        this.h = false;
        this.c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.i) {
            if (s.f28a) {
                Log.v("LoaderManager", "  Finished Retaining: " + this);
            }
            this.i = false;
            if (this.h != this.j && !this.h) {
                e();
            }
        }
        if (this.h && this.e && !this.k) {
            a(this.d, this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (this.h && this.k) {
            this.k = false;
            if (this.e) {
                a(this.d, this.g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (s.f28a) {
            Log.v("LoaderManager", "  Stopping: " + this);
        }
        this.h = false;
        if (this.i || this.d == null || !this.m) {
            return;
        }
        this.m = false;
        this.d.a((android.support.v4.content.b<Object>) this);
        this.d.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        String str;
        if (s.f28a) {
            Log.v("LoaderManager", "  Destroying: " + this);
        }
        this.l = true;
        boolean z = this.f;
        this.f = false;
        if (this.c != null && this.d != null && this.e && z) {
            if (s.f28a) {
                Log.v("LoaderManager", "  Reseting: " + this);
            }
            if (this.o.d != null) {
                String str2 = this.o.d.f10b.s;
                this.o.d.f10b.s = "onLoaderReset";
                str = str2;
            } else {
                str = null;
            }
            try {
                this.c.a(this.d);
            } finally {
                if (this.o.d != null) {
                    this.o.d.f10b.s = str;
                }
            }
        }
        this.c = null;
        this.g = null;
        this.e = false;
        if (this.d != null) {
            if (this.m) {
                this.m = false;
                this.d.a((android.support.v4.content.b<Object>) this);
            }
            this.d.e();
        }
        if (this.n != null) {
            this.n.f();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.f30a);
        sb.append(" : ");
        android.support.v4.b.a.a(this.d, sb);
        sb.append("}}");
        return sb.toString();
    }
}
