package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    private DataSetObservable f82a;

    public abstract int a();

    public CharSequence a(int i) {
        return null;
    }

    public Object a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public Object a(ViewGroup viewGroup, int i) {
        return a((View) viewGroup, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(DataSetObserver dataSetObserver) {
        this.f82a.registerObserver(dataSetObserver);
    }

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    public void a(View view) {
    }

    public void a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void a(ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    public void a(ViewGroup viewGroup, int i, Object obj) {
        a((View) viewGroup, i, obj);
    }

    public abstract boolean a(View view, Object obj);

    public float b(int i) {
        return 1.0f;
    }

    public Parcelable b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(DataSetObserver dataSetObserver) {
        this.f82a.unregisterObserver(dataSetObserver);
    }

    public void b(View view) {
    }

    public void b(View view, int i, Object obj) {
    }

    public void b(ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    public void b(ViewGroup viewGroup, int i, Object obj) {
        b((View) viewGroup, i, obj);
    }
}
