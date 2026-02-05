package android.support.v4.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b extends p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final k f15a;

    /* renamed from: b, reason: collision with root package name */
    c f16b;
    c c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    boolean k;
    boolean l = true;
    String m;
    boolean n;
    int o;
    int p;
    CharSequence q;
    int r;
    CharSequence s;

    public b(k kVar) {
        this.f15a = kVar;
    }

    public String a() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (this.k) {
            if (k.f23a) {
                Log.v("BackStackEntry", "Bump nesting in " + this + " by " + i);
            }
            for (c cVar = this.f16b; cVar != null; cVar = cVar.f17a) {
                if (cVar.d != null) {
                    cVar.d.mBackStackNesting += i;
                    if (k.f23a) {
                        Log.v("BackStackEntry", "Bump nesting of " + cVar.d + " to " + cVar.d.mBackStackNesting);
                    }
                }
                if (cVar.i != null) {
                    for (int size = cVar.i.size() - 1; size >= 0; size--) {
                        Fragment fragment = cVar.i.get(size);
                        fragment.mBackStackNesting += i;
                        if (k.f23a) {
                            Log.v("BackStackEntry", "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        if (this.f16b == null) {
            this.c = cVar;
            this.f16b = cVar;
        } else {
            cVar.f18b = this.c;
            this.c.f17a = cVar;
            this.c = cVar;
        }
        cVar.e = this.e;
        cVar.f = this.f;
        cVar.g = this.g;
        cVar.h = this.h;
        this.d++;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mName=");
        printWriter.print(this.m);
        printWriter.print(" mIndex=");
        printWriter.print(this.o);
        printWriter.print(" mCommitted=");
        printWriter.println(this.n);
        if (this.i != 0) {
            printWriter.print(str);
            printWriter.print("mTransition=#");
            printWriter.print(Integer.toHexString(this.i));
            printWriter.print(" mTransitionStyle=#");
            printWriter.println(Integer.toHexString(this.j));
        }
        if (this.e != 0 || this.f != 0) {
            printWriter.print(str);
            printWriter.print("mEnterAnim=#");
            printWriter.print(Integer.toHexString(this.e));
            printWriter.print(" mExitAnim=#");
            printWriter.println(Integer.toHexString(this.f));
        }
        if (this.g != 0 || this.h != 0) {
            printWriter.print(str);
            printWriter.print("mPopEnterAnim=#");
            printWriter.print(Integer.toHexString(this.g));
            printWriter.print(" mPopExitAnim=#");
            printWriter.println(Integer.toHexString(this.h));
        }
        if (this.p != 0 || this.q != null) {
            printWriter.print(str);
            printWriter.print("mBreadCrumbTitleRes=#");
            printWriter.print(Integer.toHexString(this.p));
            printWriter.print(" mBreadCrumbTitleText=");
            printWriter.println(this.q);
        }
        if (this.r != 0 || this.s != null) {
            printWriter.print(str);
            printWriter.print("mBreadCrumbShortTitleRes=#");
            printWriter.print(Integer.toHexString(this.r));
            printWriter.print(" mBreadCrumbShortTitleText=");
            printWriter.println(this.s);
        }
        if (this.f16b != null) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str2 = str + "    ";
            for (c cVar = this.f16b; cVar != null; cVar = cVar.f17a) {
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(0);
                printWriter.println(":");
                printWriter.print(str2);
                printWriter.print("cmd=");
                printWriter.print(cVar.c);
                printWriter.print(" fragment=");
                printWriter.println(cVar.d);
                if (cVar.e != 0 || cVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(cVar.e));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(cVar.f));
                }
                if (cVar.g != 0 || cVar.h != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(cVar.g));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(cVar.h));
                }
                if (cVar.i != null && cVar.i.size() > 0) {
                    for (int i = 0; i < cVar.i.size(); i++) {
                        printWriter.print(str2);
                        if (cVar.i.size() == 1) {
                            printWriter.print("Removed: ");
                        } else {
                            printWriter.println("Removed:");
                            printWriter.print(str2);
                            printWriter.print("  #");
                            printWriter.print(0);
                            printWriter.print(": ");
                        }
                        printWriter.println(cVar.i.get(i));
                    }
                }
            }
        }
    }

    public void a(boolean z) {
        if (k.f23a) {
            Log.v("BackStackEntry", "popFromBackStack: " + this);
        }
        a(-1);
        for (c cVar = this.c; cVar != null; cVar = cVar.f18b) {
            switch (cVar.c) {
                case 1:
                    Fragment fragment = cVar.d;
                    fragment.mNextAnim = cVar.h;
                    this.f15a.a(fragment, k.c(this.i), this.j);
                    break;
                case 2:
                    Fragment fragment2 = cVar.d;
                    if (fragment2 != null) {
                        fragment2.mNextAnim = cVar.h;
                        this.f15a.a(fragment2, k.c(this.i), this.j);
                    }
                    if (cVar.i != null) {
                        for (int i = 0; i < cVar.i.size(); i++) {
                            Fragment fragment3 = cVar.i.get(i);
                            fragment3.mNextAnim = cVar.g;
                            this.f15a.a(fragment3, false);
                        }
                        break;
                    } else {
                        break;
                    }
                case 3:
                    Fragment fragment4 = cVar.d;
                    fragment4.mNextAnim = cVar.g;
                    this.f15a.a(fragment4, false);
                    break;
                case 4:
                    Fragment fragment5 = cVar.d;
                    fragment5.mNextAnim = cVar.g;
                    this.f15a.c(fragment5, k.c(this.i), this.j);
                    break;
                case 5:
                    Fragment fragment6 = cVar.d;
                    fragment6.mNextAnim = cVar.h;
                    this.f15a.b(fragment6, k.c(this.i), this.j);
                    break;
                case 6:
                    Fragment fragment7 = cVar.d;
                    fragment7.mNextAnim = cVar.g;
                    this.f15a.e(fragment7, k.c(this.i), this.j);
                    break;
                case 7:
                    Fragment fragment8 = cVar.d;
                    fragment8.mNextAnim = cVar.g;
                    this.f15a.d(fragment8, k.c(this.i), this.j);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + cVar.c);
            }
        }
        if (z) {
            this.f15a.a(this.f15a.n, k.c(this.i), this.j, true);
        }
        if (this.o >= 0) {
            this.f15a.b(this.o);
            this.o = -1;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Fragment fragment;
        if (k.f23a) {
            Log.v("BackStackEntry", "Run: " + this);
        }
        if (this.k && this.o < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        a(1);
        for (c cVar = this.f16b; cVar != null; cVar = cVar.f17a) {
            switch (cVar.c) {
                case 1:
                    Fragment fragment2 = cVar.d;
                    fragment2.mNextAnim = cVar.e;
                    this.f15a.a(fragment2, false);
                    break;
                case 2:
                    Fragment fragment3 = cVar.d;
                    if (this.f15a.g != null) {
                        fragment = fragment3;
                        for (int i = 0; i < this.f15a.g.size(); i++) {
                            Fragment fragment4 = this.f15a.g.get(i);
                            if (k.f23a) {
                                Log.v("BackStackEntry", "OP_REPLACE: adding=" + fragment + " old=" + fragment4);
                            }
                            if (fragment == null || fragment4.mContainerId == fragment.mContainerId) {
                                if (fragment4 == fragment) {
                                    fragment = null;
                                    cVar.d = null;
                                } else {
                                    if (cVar.i == null) {
                                        cVar.i = new ArrayList<>();
                                    }
                                    cVar.i.add(fragment4);
                                    fragment4.mNextAnim = cVar.f;
                                    if (this.k) {
                                        fragment4.mBackStackNesting++;
                                        if (k.f23a) {
                                            Log.v("BackStackEntry", "Bump nesting of " + fragment4 + " to " + fragment4.mBackStackNesting);
                                        }
                                    }
                                    this.f15a.a(fragment4, this.i, this.j);
                                }
                            }
                        }
                    } else {
                        fragment = fragment3;
                    }
                    if (fragment != null) {
                        fragment.mNextAnim = cVar.e;
                        this.f15a.a(fragment, false);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    Fragment fragment5 = cVar.d;
                    fragment5.mNextAnim = cVar.f;
                    this.f15a.a(fragment5, this.i, this.j);
                    break;
                case 4:
                    Fragment fragment6 = cVar.d;
                    fragment6.mNextAnim = cVar.f;
                    this.f15a.b(fragment6, this.i, this.j);
                    break;
                case 5:
                    Fragment fragment7 = cVar.d;
                    fragment7.mNextAnim = cVar.e;
                    this.f15a.c(fragment7, this.i, this.j);
                    break;
                case 6:
                    Fragment fragment8 = cVar.d;
                    fragment8.mNextAnim = cVar.f;
                    this.f15a.d(fragment8, this.i, this.j);
                    break;
                case 7:
                    Fragment fragment9 = cVar.d;
                    fragment9.mNextAnim = cVar.e;
                    this.f15a.e(fragment9, this.i, this.j);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + cVar.c);
            }
        }
        this.f15a.a(this.f15a.n, this.i, this.j, true);
        if (this.k) {
            this.f15a.a(this);
        }
    }
}
