package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    protected List<com.estrongs.android.view.a.a> f1967a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f1968b;
    protected ViewGroup c;
    protected boolean d;
    protected boolean e;
    protected com.estrongs.android.ui.theme.al f;
    private int h;
    private int i;
    private boolean j = false;
    private boolean g = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(Context context, boolean z) {
        this.f1967a = new LinkedList();
        this.f1968b = context;
        this.d = z;
        this.e = com.estrongs.android.pop.utils.ca.a(context);
        this.f = com.estrongs.android.ui.theme.al.a(this.f1968b);
        this.f1967a = new ArrayList();
        this.c = new b(this, this.f1968b);
        ((LinearLayout) this.c).setOrientation(z ? 0 : 1);
        ((LinearLayout) this.c).setGravity(17);
    }

    public View a() {
        return this.c;
    }

    public com.estrongs.android.view.a.a a(int i) {
        try {
            return this.f1967a.get(i);
        } catch (Exception e) {
            return null;
        }
    }

    public void a(boolean z) {
        this.g = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
    }

    public boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    public void g() {
    }
}
