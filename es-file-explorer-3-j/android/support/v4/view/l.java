package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

/* loaded from: classes.dex */
final class l extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f79a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(m mVar) {
        this.f79a = mVar;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f79a.a(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        return (AccessibilityNodeProvider) this.f79a.a(view);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f79a.b(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f79a.a(view, accessibilityNodeInfo);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f79a.c(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f79a.a(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.f79a.a(view, i, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i) {
        this.f79a.a(view, i);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f79a.d(view, accessibilityEvent);
    }
}
