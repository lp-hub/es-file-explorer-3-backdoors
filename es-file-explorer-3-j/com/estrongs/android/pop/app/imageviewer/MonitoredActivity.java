package com.estrongs.android.pop.app.imageviewer;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MonitoredActivity extends NoSearchActivity {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<aj> f928a = new ArrayList<>();

    public void a(aj ajVar) {
        if (this.f928a.contains(ajVar)) {
            return;
        }
        this.f928a.add(ajVar);
    }

    public void b(aj ajVar) {
        this.f928a.remove(ajVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Iterator<aj> it = this.f928a.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Iterator<aj> it = this.f928a.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Iterator<aj> it = this.f928a.iterator();
        while (it.hasNext()) {
            it.next().c(this);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Iterator<aj> it = this.f928a.iterator();
        while (it.hasNext()) {
            it.next().d(this);
        }
    }
}
