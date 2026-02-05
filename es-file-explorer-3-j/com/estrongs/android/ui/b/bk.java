package com.estrongs.android.ui.b;

import android.app.Activity;
import android.app.Dialog;
import android.text.Html;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bk extends com.estrongs.android.view.cq {

    /* renamed from: a, reason: collision with root package name */
    TextView f1663a;

    /* renamed from: b, reason: collision with root package name */
    TextView f1664b;
    String c;
    String d;
    String e;
    public Dialog f;
    boolean g;
    private String h;
    private String i;
    private List<com.estrongs.fs.g> j;
    private dm k;
    private String l;
    private com.estrongs.android.ui.theme.al m;
    private boolean n;

    public bk(Activity activity, List<com.estrongs.fs.g> list, String str) {
        super(activity);
        this.h = null;
        this.i = null;
        this.j = new ArrayList();
        this.c = "";
        this.d = "";
        this.e = "";
        this.l = null;
        this.n = false;
        this.f = null;
        this.m = com.estrongs.android.ui.theme.al.a(activity);
        this.l = str;
        this.c = n(C0000R.string.category_files).toString();
        this.d = n(C0000R.string.category_folders).toString();
        this.e = n(C0000R.string.property_bytes).toString();
        if (list == null || list.size() <= 1) {
            return;
        }
        this.j.addAll(list);
        this.i = com.estrongs.android.util.ak.aY(this.j.get(0).getAbsolutePath());
        this.h = com.estrongs.android.util.ak.bv(this.i);
        if (com.estrongs.android.util.ak.aO(this.j.get(0).getPath())) {
            this.n = true;
        } else {
            this.n = false;
        }
        this.g = com.estrongs.android.util.ak.bE(this.i);
        d();
        Button button = (Button) l(C0000R.id.property_cp_location);
        button.setOnClickListener(new bl(this, activity));
        if (this.g) {
            button.setVisibility(8);
        }
        a(new int[]{C0000R.id.property_location_title, C0000R.id.property_contains, C0000R.id.property_contains_summary, C0000R.id.property_size_text, C0000R.id.property_size}, new int[]{C0000R.string.property_location, C0000R.string.property_contains, C0000R.string.property_na, C0000R.string.property_size, C0000R.string.property_na});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TextView textView, long j) {
        if (j <= 0) {
            textView.setText("N/A");
        } else {
            textView.setText(com.estrongs.fs.c.d.c(j) + " (" + com.estrongs.fs.c.d.d(j) + " " + this.e + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.estrongs.fs.b.x> list) {
        int i = 0;
        if (list == null) {
            return;
        }
        int i2 = 0;
        int i3 = 0;
        long j = 0;
        while (true) {
            int i4 = i;
            if (i4 >= list.size()) {
                this.ad.runOnUiThread(new bq(this, i2 + " " + this.c + ", " + i3 + " " + this.d, j));
                return;
            } else {
                com.estrongs.fs.b.x xVar = list.get(i4);
                i3 += xVar.e;
                i2 += xVar.d;
                j += xVar.c;
                i = i4 + 1;
            }
        }
    }

    private void d() {
        TextView textView = (TextView) l(C0000R.id.property_file_name);
        TextView textView2 = (TextView) l(C0000R.id.property_location_text);
        this.f1663a = (TextView) l(C0000R.id.property_size);
        this.f1664b = (TextView) l(C0000R.id.property_contains_summary);
        textView.setText(m(C0000R.string.multi_files_title));
        if (this.j.size() <= 1 || com.estrongs.fs.c.d.b(new com.estrongs.fs.m(this.l))) {
            textView2.setText("N/A");
            ((Button) l(C0000R.id.property_cp_location)).setVisibility(8);
            return;
        }
        textView2.setText(Html.fromHtml("<a href=\"ss\">" + this.h + "</a>"));
        if (this.g) {
            return;
        }
        textView2.setClickable(true);
        textView2.setOnClickListener(new bm(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.k != null) {
            this.ad.runOnUiThread(new bp(this));
        }
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.multi_files_property;
    }

    public void b() {
        if (this.k == null || this.k.getTaskStatus() == 4 || this.k.getTaskStatus() == 5) {
            return;
        }
        this.k.requestStop();
    }

    public void c() {
        long length;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        long j = 0;
        for (com.estrongs.fs.g gVar : this.j) {
            if (!gVar.getAbsolutePath().equals("/sys") && !gVar.getAbsolutePath().equals("/sys/") && !gVar.getAbsolutePath().equals("/proc") && !gVar.getAbsolutePath().equals("/proc/")) {
                arrayList.add(gVar);
                if (gVar.getFileType().a()) {
                    i++;
                    length = j;
                } else {
                    i2++;
                    length = j + gVar.length();
                }
                i2 = i2;
                i = i;
                j = length;
            }
        }
        if (!com.estrongs.android.util.ak.aO(this.h)) {
            this.f1664b.setText(i2 + " " + this.c + ", " + i + " " + this.d);
            a(this.f1663a, j);
            return;
        }
        this.k = new bn(this, arrayList, com.estrongs.fs.d.a(), true);
        this.k.addProgressListener(new bo(this));
        dm dmVar = this.k;
        dmVar.c = i + dmVar.c;
        this.k.f1742b += i2;
        dm dmVar2 = this.k;
        dmVar2.d = j + dmVar2.d;
        this.k.execute();
    }
}
