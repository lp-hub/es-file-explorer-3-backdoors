package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class AppCheckUpdateList extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    TextView f337a;

    /* renamed from: b, reason: collision with root package name */
    TextView f338b;
    com.estrongs.android.ui.b.f c = null;
    private HashMap<String, String> d;
    private HashMap<String, Drawable> e;
    private f f;

    private void a() {
        ListView listView = (ListView) findViewById(C0000R.id.ignore_list);
        this.d = new HashMap<>();
        this.e = new HashMap<>();
        com.estrongs.android.pop.q.a(this, this.d);
        Object[] array = this.d.keySet().toArray();
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = getPackageManager();
        for (Object obj : array) {
            String str = (String) obj;
            Drawable drawable = null;
            try {
                drawable = packageManager.getApplicationIcon(str);
            } catch (PackageManager.NameNotFoundException e) {
            }
            if (drawable != null) {
                this.e.put(str, drawable);
                arrayList.add(str);
            }
        }
        this.f = new f(this, this, arrayList);
        listView.setAdapter((ListAdapter) this.f);
        listView.setCacheColorHint(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        a();
    }

    public void a(Context context) {
        if (this.c == null) {
            this.c = new com.estrongs.android.ui.b.f(context);
        } else {
            this.c.a(true);
        }
        this.c.setOnDismissListener(new e(this));
        this.c.show();
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.app_check_list);
        this.f337a = (TextView) findViewById(C0000R.id.title);
        this.f337a.setText(C0000R.string.app_add_check_list);
        this.f338b = (TextView) findViewById(C0000R.id.header);
        this.f338b.setText(C0000R.string.app_check_list_clear_all);
        setTitle(C0000R.string.app_update_setttings_title);
        ((Button) findViewById(C0000R.id.clearAll)).setOnClickListener(new c(this));
        findViewById(C0000R.id.add_ignore_list).setOnClickListener(new d(this));
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
