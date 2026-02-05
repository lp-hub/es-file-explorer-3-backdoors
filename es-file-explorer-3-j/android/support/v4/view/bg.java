package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg extends a {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ViewPager f73b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(ViewPager viewPager) {
        this.f73b = viewPager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001f, code lost:
    
        if (r1.a() > 1) goto L6;
     */
    @Override // android.support.v4.view.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(View view, android.support.v4.view.a.a aVar) {
        x xVar;
        x xVar2;
        x xVar3;
        int i;
        int i2;
        x xVar4;
        int i3;
        int i4;
        x xVar5;
        x xVar6;
        boolean z = true;
        super.a(view, aVar);
        aVar.a(ViewPager.class.getName());
        xVar = this.f73b.g;
        if (xVar != null) {
            xVar6 = this.f73b.g;
        }
        z = false;
        aVar.a(z);
        xVar2 = this.f73b.g;
        if (xVar2 != null) {
            i3 = this.f73b.h;
            if (i3 >= 0) {
                i4 = this.f73b.h;
                xVar5 = this.f73b.g;
                if (i4 < xVar5.a() - 1) {
                    aVar.a(4096);
                }
            }
        }
        xVar3 = this.f73b.g;
        if (xVar3 != null) {
            i = this.f73b.h;
            if (i > 0) {
                i2 = this.f73b.h;
                xVar4 = this.f73b.g;
                if (i2 < xVar4.a()) {
                    aVar.a(8192);
                }
            }
        }
    }

    @Override // android.support.v4.view.a
    public boolean a(View view, int i, Bundle bundle) {
        x xVar;
        int i2;
        int i3;
        x xVar2;
        int i4;
        x xVar3;
        int i5;
        int i6;
        x xVar4;
        int i7;
        if (super.a(view, i, bundle)) {
            return true;
        }
        switch (i) {
            case 4096:
                xVar3 = this.f73b.g;
                if (xVar3 != null) {
                    i5 = this.f73b.h;
                    if (i5 >= 0) {
                        i6 = this.f73b.h;
                        xVar4 = this.f73b.g;
                        if (i6 < xVar4.a() - 1) {
                            ViewPager viewPager = this.f73b;
                            i7 = this.f73b.h;
                            viewPager.a(i7 + 1);
                            return true;
                        }
                    }
                }
                return false;
            case 8192:
                xVar = this.f73b.g;
                if (xVar != null) {
                    i2 = this.f73b.h;
                    if (i2 > 0) {
                        i3 = this.f73b.h;
                        xVar2 = this.f73b.g;
                        if (i3 < xVar2.a()) {
                            ViewPager viewPager2 = this.f73b;
                            i4 = this.f73b.h;
                            viewPager2.a(i4 - 1);
                            return true;
                        }
                    }
                }
                return false;
            default:
                return false;
        }
    }

    @Override // android.support.v4.view.a
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        accessibilityEvent.setClassName(ViewPager.class.getName());
    }
}
