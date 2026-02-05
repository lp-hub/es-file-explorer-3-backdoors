package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.content.Intent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TableLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.util.ak;
import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;

/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private Context f503a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.b.ag f504b;
    private String c;
    private TableLayout d;
    private Button e = null;
    private Button f = null;
    private p g = new p();
    private p h = new p();
    private Intent i;
    private ag j;

    public q(Context context, Intent intent) {
        this.f503a = context;
        this.i = intent;
        b();
    }

    private void a(List<String> list, String str) {
        File[] listFiles = new File(str).listFiles(new v(this));
        if (listFiles != null) {
            Arrays.sort(listFiles, com.estrongs.android.util.q.c);
            for (File file : listFiles) {
                if (!list.contains(file.getName())) {
                    list.add(file.getName());
                }
            }
        }
    }

    private void b() {
        this.d = (TableLayout) com.estrongs.android.pop.esclasses.e.a(this.f503a).inflate(C0000R.layout.search_advance_condition, (ViewGroup) null);
        this.f504b = new aq(this.f503a).a(C0000R.string.action_search).a(this.d).b(C0000R.string.confirm_ok, new s(this)).c(C0000R.string.confirm_cancel, new r(this)).a();
        c();
        d();
    }

    private void b(List<String> list, String str) {
        try {
            if (!str.endsWith("/")) {
                str = str + "/";
            }
            SmbFile[] listFiles = new SmbFile(com.estrongs.fs.impl.o.b.a(str)).listFiles();
            LinkedList linkedList = new LinkedList();
            if (listFiles != null) {
                for (SmbFile smbFile : listFiles) {
                    String name = smbFile.getName();
                    if (smbFile.isDirectory() && !list.contains(smbFile.getName())) {
                        linkedList.add(name.substring(0, name.length() - 1));
                    }
                }
            }
            Collections.sort(linkedList);
            list.addAll(linkedList);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (SmbException e2) {
            e2.printStackTrace();
        }
    }

    private void c() {
        String canonicalPath;
        this.c = e().getStringExtra("CURRENT_WORKING_PATH");
        try {
            if (ak.aO(this.c) && (canonicalPath = new File(this.c).getCanonicalPath()) != null && canonicalPath.length() > 0 && !this.c.equals(canonicalPath)) {
                this.c = canonicalPath;
            }
        } catch (Exception e) {
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("..");
        arrayList.add(this.f503a.getString(C0000R.string.view_label_current_path));
        if (ak.aO(this.c)) {
            a(arrayList, this.c);
        } else if (ak.F(this.c)) {
            b(arrayList, this.c);
        } else if (ak.H(this.c)) {
            c(arrayList, this.c);
        }
    }

    private void c(List<String> list, String str) {
        try {
            if (!str.endsWith("/")) {
                str = str + "/";
            }
            List<com.estrongs.fs.g> a2 = com.estrongs.fs.d.a(this.f503a).a(str);
            if (a2 != null) {
                ArrayList arrayList = new ArrayList();
                for (com.estrongs.fs.g gVar : a2) {
                    String name = gVar.getName();
                    if (gVar.getFileType().a() && !list.contains(gVar.getName())) {
                        arrayList.add(name);
                    }
                }
                Collections.sort(arrayList);
                list.addAll(arrayList);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void d() {
        this.e = (Button) this.d.findViewById(C0000R.id.search_size);
        this.f = (Button) this.d.findViewById(C0000R.id.search_date);
        this.e.setText(this.f503a.getResources().getStringArray(C0000R.array.search_condition_size)[0]);
        this.f.setText(this.f503a.getResources().getStringArray(C0000R.array.search_condition_date)[0]);
        new t(this, this.e, C0000R.array.search_condition_size, C0000R.string.search_size_scope_selection_title);
        new u(this, this.f, C0000R.array.search_condition_date, C0000R.string.search_date_scope_selection_title);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent e() {
        return this.i;
    }

    public q a(ag agVar) {
        this.j = agVar;
        return this;
    }

    public void a() {
        this.f504b.show();
    }

    public void a(Intent intent) {
        if (intent != null && this.j != null) {
            this.j.a(intent);
        }
        this.f504b.dismiss();
    }
}
