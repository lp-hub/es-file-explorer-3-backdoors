package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class FragmentActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    final Handler f9a = new f(this);

    /* renamed from: b, reason: collision with root package name */
    final k f10b = new k();
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    android.support.v4.b.c<s> k;
    s l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s a(int i, boolean z, boolean z2) {
        if (this.k == null) {
            this.k = new android.support.v4.b.c<>();
        }
        s a2 = this.k.a(i);
        if (a2 != null) {
            a2.a(this);
            return a2;
        }
        if (!z2) {
            return a2;
        }
        s sVar = new s(this, z);
        this.k.b(i, sVar);
        return sVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f10b.l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        s a2;
        if (this.k == null || (a2 = this.k.a(i)) == null || a2.f) {
            return;
        }
        a2.h();
        this.k.c(i);
    }

    public void a(Fragment fragment) {
    }

    public void a(Fragment fragment, Intent intent, int i) {
        if (i == -1) {
            super.startActivityForResult(intent, -1);
        } else {
            if (((-65536) & i) != 0) {
                throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
            }
            super.startActivityForResult(intent, ((fragment.mIndex + 1) << 16) + (65535 & i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (this.f) {
            return;
        }
        this.f = true;
        this.g = z;
        this.f9a.removeMessages(1);
        d();
    }

    public Object b() {
        return null;
    }

    public void c() {
        if (Build.VERSION.SDK_INT >= 11) {
            a.a(this);
        } else {
            this.h = true;
        }
    }

    void d() {
        if (this.j) {
            this.j = false;
            if (this.l != null) {
                if (this.g) {
                    this.l.d();
                } else {
                    this.l.c();
                }
            }
        }
        this.f10b.o();
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (Build.VERSION.SDK_INT >= 11) {
        }
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.c);
        printWriter.print("mResumed=");
        printWriter.print(this.d);
        printWriter.print(" mStopped=");
        printWriter.print(this.e);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.f);
        printWriter.print(str2);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.j);
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.l)));
            printWriter.println(":");
            this.l.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
        this.f10b.a(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        int i3 = i >> 16;
        if (i3 == 0) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        int i4 = i3 - 1;
        if (this.f10b.f == null || i4 < 0 || i4 >= this.f10b.f.size()) {
            Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(i));
            return;
        }
        Fragment fragment = this.f10b.f.get(i4);
        if (fragment == null) {
            Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(i));
        } else {
            fragment.onActivityResult(65535 & i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f10b.b()) {
            return;
        }
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f10b.a(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.f10b.a(this);
        if (getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        h hVar = (h) getLastNonConfigurationInstance();
        if (hVar != null) {
            this.k = hVar.e;
        }
        if (bundle != null) {
            this.f10b.a(bundle.getParcelable("android:support:fragments"), hVar != null ? hVar.d : null);
        }
        this.f10b.i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu) | this.f10b.a(menu, getMenuInflater());
        if (Build.VERSION.SDK_INT >= 11) {
            return onCreatePanelMenu;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        Object[] objArr = 0;
        if (!"fragment".equals(str)) {
            return super.onCreateView(str, context, attributeSet);
        }
        String attributeValue = attributeSet.getAttributeValue(null, Name.LABEL);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f20a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        int id = 0 != 0 ? (objArr == true ? 1 : 0).getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment a2 = resourceId != -1 ? this.f10b.a(resourceId) : null;
        if (a2 == null && string != null) {
            a2 = this.f10b.a(string);
        }
        if (a2 == null && id != -1) {
            a2 = this.f10b.a(id);
        }
        if (k.f23a) {
            Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + a2);
        }
        if (a2 == null) {
            Fragment instantiate = Fragment.instantiate(this, attributeValue);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this.f10b;
            instantiate.onInflate(this, attributeSet, instantiate.mSavedFragmentState);
            this.f10b.a(instantiate, true);
            a2 = instantiate;
        } else {
            if (a2.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            a2.mInLayout = true;
            if (!a2.mRetaining) {
                a2.onInflate(this, attributeSet, a2.mSavedFragmentState);
            }
            this.f10b.b(a2);
        }
        if (a2.mView == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            a2.mView.setId(resourceId);
        }
        if (a2.mView.getTag() == null) {
            a2.mView.setTag(string);
        }
        return a2.mView;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a(false);
        this.f10b.p();
        if (this.l != null) {
            this.l.h();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 5 || i != 4 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i, keyEvent);
        }
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f10b.q();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case 0:
                return this.f10b.a(menuItem);
            case 6:
                return this.f10b.b(menuItem);
            default:
                return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case 0:
                this.f10b.b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.d = false;
        if (this.f9a.hasMessages(2)) {
            this.f9a.removeMessages(2);
            a();
        }
        this.f10b.m();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f9a.removeMessages(2);
        a();
        this.f10b.d();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return super.onPreparePanel(i, view, menu);
        }
        if (this.h) {
            this.h = false;
            menu.clear();
            onCreatePanelMenu(i, menu);
        }
        return (super.onPreparePanel(i, view, menu) || this.f10b.a(menu)) && menu.hasVisibleItems();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f9a.sendEmptyMessage(2);
        this.d = true;
        this.f10b.d();
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        boolean z;
        if (this.e) {
            a(true);
        }
        Object b2 = b();
        ArrayList<Fragment> f = this.f10b.f();
        boolean z2 = false;
        if (this.k != null) {
            int a2 = this.k.a() - 1;
            while (a2 >= 0) {
                s f2 = this.k.f(a2);
                if (f2.f) {
                    z = true;
                } else {
                    f2.h();
                    this.k.d(a2);
                    z = z2;
                }
                a2--;
                z2 = z;
            }
        }
        if (f == null && !z2 && b2 == null) {
            return null;
        }
        h hVar = new h();
        hVar.f21a = null;
        hVar.f22b = b2;
        hVar.c = null;
        hVar.d = f;
        hVar.e = this.k;
        return hVar;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable g = this.f10b.g();
        if (g != null) {
            bundle.putParcelable("android:support:fragments", g);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.e = false;
        this.f = false;
        this.f9a.removeMessages(1);
        if (!this.c) {
            this.c = true;
            this.f10b.j();
        }
        this.f10b.h();
        this.f10b.d();
        if (!this.j) {
            this.j = true;
            if (this.l != null) {
                this.l.b();
            } else if (!this.i) {
                this.l = a(-1, this.j, false);
            }
            this.i = true;
        }
        this.f10b.k();
        if (this.k != null) {
            for (int a2 = this.k.a() - 1; a2 >= 0; a2--) {
                s f = this.k.f(a2);
                f.e();
                f.g();
            }
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.e = true;
        this.f9a.sendEmptyMessage(1);
        this.f10b.n();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (i != -1 && ((-65536) & i) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, i);
    }
}
