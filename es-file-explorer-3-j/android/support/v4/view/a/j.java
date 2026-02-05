package android.support.v4.view.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class j implements n {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f62a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f63b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar, g gVar) {
        this.f63b = iVar;
        this.f62a = gVar;
    }

    @Override // android.support.v4.view.a.n
    public Object a(int i) {
        a a2 = this.f62a.a(i);
        if (a2 == null) {
            return null;
        }
        return a2.a();
    }

    @Override // android.support.v4.view.a.n
    public List<Object> a(String str, int i) {
        List<a> a2 = this.f62a.a(str, i);
        ArrayList arrayList = new ArrayList();
        int size = a2.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(a2.get(i2).a());
        }
        return arrayList;
    }

    @Override // android.support.v4.view.a.n
    public boolean a(int i, int i2, Bundle bundle) {
        return this.f62a.a(i, i2, bundle);
    }
}
