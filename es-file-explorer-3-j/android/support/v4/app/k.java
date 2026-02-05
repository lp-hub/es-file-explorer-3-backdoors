package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k extends i {
    static final Interpolator A;

    /* renamed from: a, reason: collision with root package name */
    static boolean f23a = false;

    /* renamed from: b, reason: collision with root package name */
    static final boolean f24b;
    static final Interpolator x;
    static final Interpolator y;
    static final Interpolator z;
    ArrayList<Runnable> c;
    Runnable[] d;
    boolean e;
    ArrayList<Fragment> f;
    ArrayList<Fragment> g;
    ArrayList<Integer> h;
    ArrayList<b> i;
    ArrayList<Fragment> j;
    ArrayList<b> k;
    ArrayList<Integer> l;
    ArrayList<j> m;
    FragmentActivity o;
    boolean p;
    boolean q;
    boolean r;
    String s;
    boolean t;
    int n = 0;
    Bundle u = null;
    SparseArray<Parcelable> v = null;
    Runnable w = new l(this);

    static {
        f24b = Build.VERSION.SDK_INT >= 11;
        x = new DecelerateInterpolator(2.5f);
        y = new DecelerateInterpolator(1.5f);
        z = new AccelerateInterpolator(2.5f);
        A = new AccelerateInterpolator(1.5f);
    }

    static Animation a(Context context, float f, float f2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(f, f2);
        alphaAnimation.setInterpolator(y);
        alphaAnimation.setDuration(220L);
        return alphaAnimation;
    }

    static Animation a(Context context, float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(x);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(y);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    public static int b(int i, boolean z2) {
        switch (i) {
            case 4097:
                return z2 ? 1 : 2;
            case 4099:
                return z2 ? 5 : 6;
            case 8194:
                return z2 ? 3 : 4;
            default:
                return -1;
        }
    }

    public static int c(int i) {
        switch (i) {
            case 4097:
                return 8194;
            case 4099:
                return 4099;
            case 8194:
                return 4097;
            default:
                return 0;
        }
    }

    private void r() {
        if (this.q) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.s != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.s);
        }
    }

    public Fragment a(int i) {
        if (this.g != null) {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                Fragment fragment = this.g.get(size);
                if (fragment != null && fragment.mFragmentId == i) {
                    return fragment;
                }
            }
        }
        if (this.f != null) {
            for (int size2 = this.f.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.f.get(size2);
                if (fragment2 != null && fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public Fragment a(Bundle bundle, String str) {
        int i = bundle.getInt(str, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.f.size()) {
            throw new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i);
        }
        Fragment fragment = this.f.get(i);
        if (fragment == null) {
            throw new IllegalStateException("Fragement no longer exists for key " + str + ": index " + i);
        }
        return fragment;
    }

    public Fragment a(String str) {
        if (this.g != null && str != null) {
            for (int size = this.g.size() - 1; size >= 0; size--) {
                Fragment fragment = this.g.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (this.f != null && str != null) {
            for (int size2 = this.f.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.f.get(size2);
                if (fragment2 != null && str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    Animation a(Fragment fragment, int i, boolean z2, int i2) {
        int b2;
        Animation loadAnimation;
        Animation onCreateAnimation = fragment.onCreateAnimation(i, z2, fragment.mNextAnim);
        if (onCreateAnimation != null) {
            return onCreateAnimation;
        }
        if (fragment.mNextAnim != 0 && (loadAnimation = AnimationUtils.loadAnimation(this.o, fragment.mNextAnim)) != null) {
            return loadAnimation;
        }
        if (i != 0 && (b2 = b(i, z2)) >= 0) {
            switch (b2) {
                case 1:
                    return a(this.o, 1.125f, 1.0f, 0.0f, 1.0f);
                case 2:
                    return a(this.o, 1.0f, 0.975f, 1.0f, 0.0f);
                case 3:
                    return a(this.o, 0.975f, 1.0f, 0.0f, 1.0f);
                case 4:
                    return a(this.o, 1.0f, 1.075f, 1.0f, 0.0f);
                case 5:
                    return a(this.o, 0.0f, 1.0f);
                case 6:
                    return a(this.o, 1.0f, 0.0f);
                default:
                    if (i2 == 0 && this.o.getWindow() != null) {
                        i2 = this.o.getWindow().getAttributes().windowAnimations;
                    }
                    return i2 == 0 ? null : null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, boolean z2) {
        if (this.o == null && i != 0) {
            throw new IllegalStateException("No activity");
        }
        if (z2 || this.n != i) {
            this.n = i;
            if (this.f != null) {
                int i4 = 0;
                boolean z3 = false;
                while (i4 < this.f.size()) {
                    Fragment fragment = this.f.get(i4);
                    if (fragment != null) {
                        a(fragment, i, i2, i3, false);
                        if (fragment.mLoaderManager != null) {
                            z3 |= fragment.mLoaderManager.a();
                        }
                    }
                    i4++;
                    z3 = z3;
                }
                if (!z3) {
                    c();
                }
                if (this.p && this.o != null && this.n == 5) {
                    this.o.c();
                    this.p = false;
                }
            }
        }
    }

    public void a(int i, b bVar) {
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList<>();
            }
            int size = this.k.size();
            if (i < size) {
                if (f23a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + bVar);
                }
                this.k.set(i, bVar);
            } else {
                while (size < i) {
                    this.k.add(null);
                    if (this.l == null) {
                        this.l = new ArrayList<>();
                    }
                    if (f23a) {
                        Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.l.add(Integer.valueOf(size));
                    size++;
                }
                if (f23a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + bVar);
                }
                this.k.add(bVar);
            }
        }
    }

    void a(int i, boolean z2) {
        a(i, 0, 0, z2);
    }

    public void a(Configuration configuration) {
        if (this.g == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.g.size()) {
                return;
            }
            Fragment fragment = this.g.get(i2);
            if (fragment != null) {
                fragment.onConfigurationChanged(configuration);
            }
            i = i2 + 1;
        }
    }

    public void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throw new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager");
        }
        bundle.putInt(str, fragment.mIndex);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Parcelable parcelable, ArrayList<Fragment> arrayList) {
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f11a != null) {
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    Fragment fragment = arrayList.get(i);
                    if (f23a) {
                        Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                    }
                    FragmentState fragmentState = fragmentManagerState.f11a[fragment.mIndex];
                    fragmentState.k = fragment;
                    fragment.mSavedViewState = null;
                    fragment.mBackStackNesting = 0;
                    fragment.mInLayout = false;
                    fragment.mAdded = false;
                    fragment.mTarget = null;
                    if (fragmentState.j != null) {
                        fragmentState.j.setClassLoader(this.o.getClassLoader());
                        fragment.mSavedViewState = fragmentState.j.getSparseParcelableArray("android:view_state");
                    }
                }
            }
            this.f = new ArrayList<>(fragmentManagerState.f11a.length);
            if (this.h != null) {
                this.h.clear();
            }
            for (int i2 = 0; i2 < fragmentManagerState.f11a.length; i2++) {
                FragmentState fragmentState2 = fragmentManagerState.f11a[i2];
                if (fragmentState2 != null) {
                    Fragment a2 = fragmentState2.a(this.o);
                    if (f23a) {
                        Log.v("FragmentManager", "restoreAllState: adding #" + i2 + ": " + a2);
                    }
                    this.f.add(a2);
                    fragmentState2.k = null;
                } else {
                    if (f23a) {
                        Log.v("FragmentManager", "restoreAllState: adding #" + i2 + ": (null)");
                    }
                    this.f.add(null);
                    if (this.h == null) {
                        this.h = new ArrayList<>();
                    }
                    if (f23a) {
                        Log.v("FragmentManager", "restoreAllState: adding avail #" + i2);
                    }
                    this.h.add(Integer.valueOf(i2));
                }
            }
            if (arrayList != null) {
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    Fragment fragment2 = arrayList.get(i3);
                    if (fragment2.mTargetIndex >= 0) {
                        if (fragment2.mTargetIndex < this.f.size()) {
                            fragment2.mTarget = this.f.get(fragment2.mTargetIndex);
                        } else {
                            Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                            fragment2.mTarget = null;
                        }
                    }
                }
            }
            if (fragmentManagerState.f12b != null) {
                this.g = new ArrayList<>(fragmentManagerState.f12b.length);
                for (int i4 = 0; i4 < fragmentManagerState.f12b.length; i4++) {
                    Fragment fragment3 = this.f.get(fragmentManagerState.f12b[i4]);
                    if (fragment3 == null) {
                        throw new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.f12b[i4]);
                    }
                    fragment3.mAdded = true;
                    if (f23a) {
                        Log.v("FragmentManager", "restoreAllState: making added #" + i4 + ": " + fragment3);
                    }
                    this.g.add(fragment3);
                }
            } else {
                this.g = null;
            }
            if (fragmentManagerState.c == null) {
                this.i = null;
                return;
            }
            this.i = new ArrayList<>(fragmentManagerState.c.length);
            for (int i5 = 0; i5 < fragmentManagerState.c.length; i5++) {
                b a3 = fragmentManagerState.c[i5].a(this);
                if (f23a) {
                    Log.v("FragmentManager", "restoreAllState: adding bse #" + i5 + " (index " + a3.o + "): " + a3);
                }
                this.i.add(a3);
                if (a3.o >= 0) {
                    a(a3.o, a3);
                }
            }
        }
    }

    public void a(Fragment fragment) {
        if (fragment.mDeferStart) {
            if (this.e) {
                this.t = true;
            } else {
                fragment.mDeferStart = false;
                a(fragment, this.n, 0, 0, false);
            }
        }
    }

    public void a(Fragment fragment, int i, int i2) {
        if (f23a) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z2 = !fragment.isInBackStack();
        if (!fragment.mDetached || z2) {
            if (this.g != null) {
                this.g.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.p = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            a(fragment, z2 ? 0 : 1, i, i2, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:119:0x02ad. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x003e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0041 A[FALL_THROUGH, PHI: r11
      0x0041: PHI (r11v5 int) = 
      (r11v3 int)
      (r11v3 int)
      (r11v3 int)
      (r11v3 int)
      (r11v3 int)
      (r11v3 int)
      (r11v4 int)
      (r11v3 int)
      (r11v6 int)
      (r11v6 int)
     binds: [B:117:0x02a9, B:119:0x02ad, B:120:0x02b2, B:142:0x047e, B:146:0x0489, B:145:0x0484, B:128:0x02c7, B:28:0x003e, B:107:0x0259, B:115:0x02a1] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(Fragment fragment, int i, int i2, int i3, boolean z2) {
        ViewGroup viewGroup;
        if (!fragment.mAdded && i > 1) {
            i = 1;
        }
        if (fragment.mRemoving && i > fragment.mState) {
            i = fragment.mState;
        }
        if (fragment.mDeferStart && fragment.mState < 4 && i > 3) {
            i = 3;
        }
        if (fragment.mState >= i) {
            if (fragment.mState > i) {
                switch (fragment.mState) {
                    case 5:
                        if (i < 5) {
                            if (f23a) {
                                Log.v("FragmentManager", "movefrom RESUMED: " + fragment);
                            }
                            fragment.mCalled = false;
                            fragment.onPause();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onPause()");
                            }
                            fragment.mResumed = false;
                        }
                    case 4:
                        if (i < 4) {
                            if (f23a) {
                                Log.v("FragmentManager", "movefrom STARTED: " + fragment);
                            }
                            fragment.mCalled = false;
                            fragment.performStop();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onStop()");
                            }
                        }
                    case 3:
                        if (i < 3) {
                            if (f23a) {
                                Log.v("FragmentManager", "movefrom STOPPED: " + fragment);
                            }
                            fragment.performReallyStop();
                        }
                    case 2:
                        if (i < 2) {
                            if (f23a) {
                                Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                            }
                            if (fragment.mView != null && !this.o.isFinishing() && fragment.mSavedViewState == null) {
                                e(fragment);
                            }
                            fragment.mCalled = false;
                            fragment.performDestroyView();
                            if (!fragment.mCalled) {
                                throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDestroyView()");
                            }
                            if (fragment.mView != null && fragment.mContainer != null) {
                                Animation a2 = (this.n <= 0 || this.r) ? null : a(fragment, i2, false, i3);
                                if (a2 != null) {
                                    fragment.mAnimatingAway = fragment.mView;
                                    fragment.mStateAfterAnimating = i;
                                    a2.setAnimationListener(new m(this, fragment));
                                    fragment.mView.startAnimation(a2);
                                }
                                fragment.mContainer.removeView(fragment.mView);
                            }
                            fragment.mContainer = null;
                            fragment.mView = null;
                            fragment.mInnerView = null;
                        }
                        break;
                    case 1:
                        if (i < 1) {
                            if (this.r && fragment.mAnimatingAway != null) {
                                View view = fragment.mAnimatingAway;
                                fragment.mAnimatingAway = null;
                                view.clearAnimation();
                            }
                            if (fragment.mAnimatingAway != null) {
                                fragment.mStateAfterAnimating = i;
                                i = 1;
                            } else {
                                if (f23a) {
                                    Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                                }
                                if (!fragment.mRetaining) {
                                    fragment.mCalled = false;
                                    fragment.onDestroy();
                                    if (!fragment.mCalled) {
                                        throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDestroy()");
                                    }
                                }
                                fragment.mCalled = false;
                                fragment.onDetach();
                                if (!fragment.mCalled) {
                                    throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                                }
                                if (!z2) {
                                    if (fragment.mRetaining) {
                                        fragment.mActivity = null;
                                        fragment.mFragmentManager = null;
                                    } else {
                                        d(fragment);
                                    }
                                }
                            }
                        }
                        break;
                }
            }
        } else {
            if (fragment.mFromLayout && !fragment.mInLayout) {
                return;
            }
            if (fragment.mAnimatingAway != null) {
                fragment.mAnimatingAway = null;
                a(fragment, fragment.mStateAfterAnimating, 0, 0, true);
            }
            switch (fragment.mState) {
                case 0:
                    if (f23a) {
                        Log.v("FragmentManager", "moveto CREATED: " + fragment);
                    }
                    if (fragment.mSavedFragmentState != null) {
                        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
                        fragment.mTarget = a(fragment.mSavedFragmentState, "android:target_state");
                        if (fragment.mTarget != null) {
                            fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt("android:target_req_state", 0);
                        }
                        fragment.mUserVisibleHint = fragment.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
                        if (!fragment.mUserVisibleHint) {
                            fragment.mDeferStart = true;
                            if (i > 3) {
                                i = 3;
                            }
                        }
                    }
                    fragment.mActivity = this.o;
                    fragment.mFragmentManager = this.o.f10b;
                    fragment.mCalled = false;
                    fragment.onAttach(this.o);
                    if (!fragment.mCalled) {
                        throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onAttach()");
                    }
                    this.o.a(fragment);
                    if (!fragment.mRetaining) {
                        fragment.mCalled = false;
                        fragment.onCreate(fragment.mSavedFragmentState);
                        if (!fragment.mCalled) {
                            throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onCreate()");
                        }
                    }
                    fragment.mRetaining = false;
                    if (fragment.mFromLayout) {
                        fragment.mView = fragment.onCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
                        if (fragment.mView != null) {
                            fragment.mInnerView = fragment.mView;
                            fragment.mView = u.a(fragment.mView);
                            if (fragment.mHidden) {
                                fragment.mView.setVisibility(8);
                            }
                            fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                        } else {
                            fragment.mInnerView = null;
                        }
                    }
                case 1:
                    if (i > 1) {
                        if (f23a) {
                            Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
                        }
                        if (!fragment.mFromLayout) {
                            if (fragment.mContainerId != 0) {
                                viewGroup = (ViewGroup) this.o.findViewById(fragment.mContainerId);
                                if (viewGroup == null && !fragment.mRestored) {
                                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " for fragment " + fragment);
                                }
                            } else {
                                viewGroup = null;
                            }
                            fragment.mContainer = viewGroup;
                            fragment.mView = fragment.onCreateView(fragment.getLayoutInflater(fragment.mSavedFragmentState), viewGroup, fragment.mSavedFragmentState);
                            if (fragment.mView != null) {
                                fragment.mInnerView = fragment.mView;
                                fragment.mView = u.a(fragment.mView);
                                if (viewGroup != null) {
                                    Animation a3 = a(fragment, i2, true, i3);
                                    if (a3 != null) {
                                        fragment.mView.startAnimation(a3);
                                    }
                                    viewGroup.addView(fragment.mView);
                                }
                                if (fragment.mHidden) {
                                    fragment.mView.setVisibility(8);
                                }
                                fragment.onViewCreated(fragment.mView, fragment.mSavedFragmentState);
                            } else {
                                fragment.mInnerView = null;
                            }
                        }
                        fragment.mCalled = false;
                        fragment.onActivityCreated(fragment.mSavedFragmentState);
                        if (!fragment.mCalled) {
                            throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onActivityCreated()");
                        }
                        if (fragment.mView != null) {
                            fragment.restoreViewState();
                        }
                        fragment.mSavedFragmentState = null;
                    }
                    break;
                case 2:
                case 3:
                    if (i > 3) {
                        if (f23a) {
                            Log.v("FragmentManager", "moveto STARTED: " + fragment);
                        }
                        fragment.mCalled = false;
                        fragment.performStart();
                        if (!fragment.mCalled) {
                            throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onStart()");
                        }
                    }
                case 4:
                    if (i > 4) {
                        if (f23a) {
                            Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                        }
                        fragment.mCalled = false;
                        fragment.mResumed = true;
                        fragment.onResume();
                        if (!fragment.mCalled) {
                            throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onResume()");
                        }
                        fragment.mSavedFragmentState = null;
                        fragment.mSavedViewState = null;
                    }
                default:
                    fragment.mState = i;
            }
        }
        fragment.mState = i;
    }

    public void a(Fragment fragment, boolean z2) {
        if (this.g == null) {
            this.g = new ArrayList<>();
        }
        if (f23a) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        c(fragment);
        if (fragment.mDetached) {
            return;
        }
        this.g.add(fragment);
        fragment.mAdded = true;
        fragment.mRemoving = false;
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            this.p = true;
        }
        if (z2) {
            b(fragment);
        }
    }

    public void a(FragmentActivity fragmentActivity) {
        if (this.o != null) {
            throw new IllegalStateException();
        }
        this.o = fragmentActivity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        if (this.i == null) {
            this.i = new ArrayList<>();
        }
        this.i.add(bVar);
        e();
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        int size6;
        String str2 = str + "    ";
        if (this.f != null && (size6 = this.f.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size6; i++) {
                Fragment fragment = this.f.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        if (this.g != null && (size5 = this.g.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragment2 = this.g.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        if (this.j != null && (size4 = this.j.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                Fragment fragment3 = this.j.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        if (this.i != null && (size3 = this.i.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                b bVar = this.i.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(bVar.toString());
                bVar.a(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            if (this.k != null && (size2 = this.k.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    Object obj = (b) this.k.get(i5);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            if (this.l != null && this.l.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.l.toArray()));
            }
        }
        if (this.c != null && (size = this.c.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                Object obj2 = (Runnable) this.c.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.q);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.r);
        if (this.p) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.p);
        }
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.s);
        }
        if (this.h == null || this.h.size() <= 0) {
            return;
        }
        printWriter.print(str);
        printWriter.print("  mAvailIndices: ");
        printWriter.println(Arrays.toString(this.h.toArray()));
    }

    public boolean a() {
        return d();
    }

    boolean a(Handler handler, String str, int i, int i2) {
        if (this.i == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = this.i.size() - 1;
            if (size < 0) {
                return false;
            }
            this.i.remove(size).a(true);
            e();
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = this.i.size() - 1;
                while (size2 >= 0) {
                    b bVar = this.i.get(size2);
                    if ((str != null && str.equals(bVar.a())) || (i >= 0 && i == bVar.o)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        b bVar2 = this.i.get(size2);
                        if ((str == null || !str.equals(bVar2.a())) && (i < 0 || i != bVar2.o)) {
                            break;
                        }
                        size2--;
                    }
                }
                i3 = size2;
            }
            if (i3 == this.i.size() - 1) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int size3 = this.i.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.i.remove(size3));
            }
            int size4 = arrayList.size() - 1;
            int i4 = 0;
            while (i4 <= size4) {
                if (f23a) {
                    Log.v("FragmentManager", "Popping back stack state: " + arrayList.get(i4));
                }
                ((b) arrayList.get(i4)).a(i4 == size4);
                i4++;
            }
            e();
        }
        return true;
    }

    public boolean a(Menu menu) {
        if (this.g == null) {
            return false;
        }
        boolean z2 = false;
        for (int i = 0; i < this.g.size(); i++) {
            Fragment fragment = this.g.get(i);
            if (fragment != null && !fragment.mHidden && fragment.mHasMenu && fragment.mMenuVisible) {
                z2 = true;
                fragment.onPrepareOptionsMenu(menu);
            }
        }
        return z2;
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        boolean z2;
        ArrayList<Fragment> arrayList = null;
        if (this.g != null) {
            int i = 0;
            z2 = false;
            while (i < this.g.size()) {
                Fragment fragment = this.g.get(i);
                if (fragment != null && !fragment.mHidden && fragment.mHasMenu && fragment.mMenuVisible) {
                    z2 = true;
                    fragment.onCreateOptionsMenu(menu, menuInflater);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                }
                i++;
                z2 = z2;
            }
        } else {
            z2 = false;
        }
        if (this.j != null) {
            for (int i2 = 0; i2 < this.j.size(); i2++) {
                Fragment fragment2 = this.j.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.j = arrayList;
        return z2;
    }

    public boolean a(MenuItem menuItem) {
        if (this.g == null) {
            return false;
        }
        for (int i = 0; i < this.g.size(); i++) {
            Fragment fragment = this.g.get(i);
            if (fragment != null && !fragment.mHidden && fragment.mHasMenu && fragment.mMenuVisible && fragment.onOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void b(int i) {
        synchronized (this) {
            this.k.set(i, null);
            if (this.l == null) {
                this.l = new ArrayList<>();
            }
            if (f23a) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.l.add(Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Fragment fragment) {
        a(fragment, this.n, 0, 0, false);
    }

    public void b(Fragment fragment, int i, int i2) {
        if (f23a) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        if (fragment.mView != null) {
            Animation a2 = a(fragment, i, true, i2);
            if (a2 != null) {
                fragment.mView.startAnimation(a2);
            }
            fragment.mView.setVisibility(8);
        }
        if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
            this.p = true;
        }
        fragment.onHiddenChanged(true);
    }

    public void b(Menu menu) {
        if (this.g == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.g.size()) {
                return;
            }
            Fragment fragment = this.g.get(i2);
            if (fragment != null && !fragment.mHidden && fragment.mHasMenu && fragment.mMenuVisible) {
                fragment.onOptionsMenuClosed(menu);
            }
            i = i2 + 1;
        }
    }

    public boolean b() {
        r();
        a();
        return a(this.o.f9a, (String) null, -1, 0);
    }

    public boolean b(MenuItem menuItem) {
        if (this.g == null) {
            return false;
        }
        for (int i = 0; i < this.g.size(); i++) {
            Fragment fragment = this.g.get(i);
            if (fragment != null && !fragment.mHidden && fragment.mUserVisibleHint && fragment.onContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    void c() {
        if (this.f == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f.size()) {
                return;
            }
            Fragment fragment = this.f.get(i2);
            if (fragment != null) {
                a(fragment);
            }
            i = i2 + 1;
        }
    }

    void c(Fragment fragment) {
        if (fragment.mIndex >= 0) {
            return;
        }
        if (this.h == null || this.h.size() <= 0) {
            if (this.f == null) {
                this.f = new ArrayList<>();
            }
            fragment.setIndex(this.f.size());
            this.f.add(fragment);
        } else {
            fragment.setIndex(this.h.remove(this.h.size() - 1).intValue());
            this.f.set(fragment.mIndex, fragment);
        }
        if (f23a) {
            Log.v("FragmentManager", "Allocated fragment index " + fragment);
        }
    }

    public void c(Fragment fragment, int i, int i2) {
        if (f23a) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation a2 = a(fragment, i, true, i2);
                if (a2 != null) {
                    fragment.mView.startAnimation(a2);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.p = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    void d(Fragment fragment) {
        if (fragment.mIndex < 0) {
            return;
        }
        if (f23a) {
            Log.v("FragmentManager", "Freeing fragment index " + fragment);
        }
        this.f.set(fragment.mIndex, null);
        if (this.h == null) {
            this.h = new ArrayList<>();
        }
        this.h.add(Integer.valueOf(fragment.mIndex));
        this.o.a(fragment.mIndex);
        fragment.initState();
    }

    public void d(Fragment fragment, int i, int i2) {
        if (f23a) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (this.g != null) {
                this.g.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.p = true;
            }
            fragment.mAdded = false;
            a(fragment, 1, i, i2, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0083, code lost:
    
        r6.e = true;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0086, code lost:
    
        if (r1 >= r3) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0088, code lost:
    
        r6.d[r1].run();
        r6.d[r1] = null;
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean d() {
        if (this.e) {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        }
        if (Looper.myLooper() != this.o.f9a.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        boolean z2 = false;
        while (true) {
            synchronized (this) {
                if (this.c == null || this.c.size() == 0) {
                    break;
                }
                int size = this.c.size();
                if (this.d == null || this.d.length < size) {
                    this.d = new Runnable[size];
                }
                this.c.toArray(this.d);
                this.c.clear();
                this.o.f9a.removeCallbacks(this.w);
            }
            this.e = false;
            z2 = true;
        }
        if (this.t) {
            boolean z3 = false;
            for (int i = 0; i < this.f.size(); i++) {
                Fragment fragment = this.f.get(i);
                if (fragment != null && fragment.mLoaderManager != null) {
                    z3 |= fragment.mLoaderManager.a();
                }
            }
            if (!z3) {
                this.t = false;
                c();
            }
        }
        return z2;
    }

    void e() {
        if (this.m == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.m.size()) {
                return;
            }
            this.m.get(i2).a();
            i = i2 + 1;
        }
    }

    void e(Fragment fragment) {
        if (fragment.mInnerView == null) {
            return;
        }
        if (this.v == null) {
            this.v = new SparseArray<>();
        } else {
            this.v.clear();
        }
        fragment.mInnerView.saveHierarchyState(this.v);
        if (this.v.size() > 0) {
            fragment.mSavedViewState = this.v;
            this.v = null;
        }
    }

    public void e(Fragment fragment, int i, int i2) {
        if (f23a) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            this.g.add(fragment);
            fragment.mAdded = true;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.p = true;
            }
            a(fragment, this.n, i, i2, false);
        }
    }

    Bundle f(Fragment fragment) {
        Bundle bundle;
        if (this.u == null) {
            this.u = new Bundle();
        }
        fragment.onSaveInstanceState(this.u);
        if (this.u.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.u;
            this.u = null;
        }
        if (fragment.mView != null) {
            e(fragment);
        }
        if (fragment.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
        }
        if (!fragment.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<Fragment> f() {
        ArrayList<Fragment> arrayList = null;
        if (this.f != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.f.size()) {
                    break;
                }
                Fragment fragment = this.f.get(i2);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (f23a) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                    }
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Parcelable g() {
        int[] iArr;
        int size;
        int size2;
        boolean z2;
        BackStackState[] backStackStateArr = null;
        d();
        if (f24b) {
            this.q = true;
        }
        if (this.f == null || this.f.size() <= 0) {
            return null;
        }
        int size3 = this.f.size();
        FragmentState[] fragmentStateArr = new FragmentState[size3];
        int i = 0;
        boolean z3 = false;
        while (i < size3) {
            Fragment fragment = this.f.get(i);
            if (fragment == null) {
                z2 = z3;
            } else {
                if (fragment.mIndex < 0) {
                    String str = "Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex;
                    Log.e("FragmentManager", str);
                    a("  ", (FileDescriptor) null, new PrintWriter(new android.support.v4.b.b("FragmentManager")), new String[0]);
                    throw new IllegalStateException(str);
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.mState <= 0 || fragmentState.j != null) {
                    fragmentState.j = fragment.mSavedFragmentState;
                } else {
                    fragmentState.j = f(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            String str2 = "Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget;
                            Log.e("FragmentManager", str2);
                            a("  ", (FileDescriptor) null, new PrintWriter(new android.support.v4.b.b("FragmentManager")), new String[0]);
                            throw new IllegalStateException(str2);
                        }
                        if (fragmentState.j == null) {
                            fragmentState.j = new Bundle();
                        }
                        a(fragmentState.j, "android:target_state", fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.j.putInt("android:target_req_state", fragment.mTargetRequestCode);
                        }
                    }
                }
                if (f23a) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.j);
                }
                z2 = true;
            }
            i++;
            z3 = z2;
        }
        if (!z3) {
            if (!f23a) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        if (this.g == null || (size2 = this.g.size()) <= 0) {
            iArr = null;
        } else {
            iArr = new int[size2];
            for (int i2 = 0; i2 < size2; i2++) {
                iArr[i2] = this.g.get(i2).mIndex;
                if (iArr[i2] < 0) {
                    String str3 = "Failure saving state: active " + this.g.get(i2) + " has cleared index: " + iArr[i2];
                    Log.e("FragmentManager", str3);
                    a("  ", (FileDescriptor) null, new PrintWriter(new android.support.v4.b.b("FragmentManager")), new String[0]);
                    throw new IllegalStateException(str3);
                }
                if (f23a) {
                    Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.g.get(i2));
                }
            }
        }
        if (this.i != null && (size = this.i.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this, this.i.get(i3));
                if (f23a) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i3 + ": " + this.i.get(i3));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f11a = fragmentStateArr;
        fragmentManagerState.f12b = iArr;
        fragmentManagerState.c = backStackStateArr;
        return fragmentManagerState;
    }

    public void h() {
        this.q = false;
    }

    public void i() {
        this.q = false;
        a(1, false);
    }

    public void j() {
        this.q = false;
        a(2, false);
    }

    public void k() {
        this.q = false;
        a(4, false);
    }

    public void l() {
        this.q = false;
        a(5, false);
    }

    public void m() {
        a(4, false);
    }

    public void n() {
        this.q = true;
        a(3, false);
    }

    public void o() {
        a(2, false);
    }

    public void p() {
        this.r = true;
        d();
        a(0, false);
        this.o = null;
    }

    public void q() {
        if (this.g == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.g.size()) {
                return;
            }
            Fragment fragment = this.g.get(i2);
            if (fragment != null) {
                fragment.onLowMemory();
            }
            i = i2 + 1;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        android.support.v4.b.a.a(this.o, sb);
        sb.append("}}");
        return sb.toString();
    }
}
