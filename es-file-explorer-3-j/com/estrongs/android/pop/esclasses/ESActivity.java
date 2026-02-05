package com.estrongs.android.pop.esclasses;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ESActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private static List<Activity> f1121a = new ArrayList();

    public static Activity x() {
        Activity activity;
        synchronized (f1121a) {
            int size = f1121a.size();
            activity = size > 0 ? f1121a.get(size - 1) : null;
        }
        return activity;
    }

    public void a(Runnable runnable) {
        runOnUiThread(runnable);
    }

    public void a(String str, int i) {
        runOnUiThread(new b(this, str, i));
    }

    public void b(String str) {
        a(str, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable c(int i) {
        return getResources().getDrawable(i);
    }

    public void c(int i, int i2) {
        a(getString(i), i2);
    }

    public void d(int i) {
        c(i, 0);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public synchronized Resources getResources() {
        return i.a(super.getResources());
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            i.a(super.getResources()).a();
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((i) getResources()).a();
        try {
            c.a(this);
        } catch (Exception e) {
        }
        synchronized (f1121a) {
            f1121a.add(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (f1121a) {
            int size = f1121a.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (f1121a.get(i).equals(this)) {
                    f1121a.remove(i);
                    break;
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        FexApplication.a().d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        FexApplication.a().c();
        synchronized (f1121a) {
            int size = f1121a.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (f1121a.get(i).equals(this)) {
                    f1121a.remove(i);
                    break;
                }
                i++;
            }
            f1121a.add(this);
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        getWindow().setContentView(i);
        new f(this).a(i, getWindow().peekDecorView());
    }
}
