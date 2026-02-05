package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.text.DecimalFormat;
import java.util.List;

/* loaded from: classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private o f1866a = null;

    /* renamed from: b, reason: collision with root package name */
    private ESActivity f1867b;
    private List<com.estrongs.fs.g> c;
    private String d;

    public l(ESActivity eSActivity, List<com.estrongs.fs.g> list, String str) {
        this.f1867b = eSActivity;
        this.c = list;
        this.d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(DialogInterface dialogInterface) {
        boolean z;
        int length;
        int i;
        String obj = this.f1866a.f.getText().toString();
        boolean z2 = (obj == null || "".equals(obj)) ? false : true;
        String str = (!z2 || obj.startsWith(".")) ? obj : "." + obj;
        if (this.f1866a.f1870a.isChecked()) {
            String obj2 = this.f1866a.d.getText().toString();
            if (obj2 == null || "".equals(obj2)) {
                length = String.valueOf(this.c.size()).length();
                i = 1;
            } else {
                i = Integer.parseInt(obj2);
                length = obj2.length();
            }
            String obj3 = this.f1866a.c.getText().toString();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < length; i2++) {
                sb.append("0");
            }
            DecimalFormat decimalFormat = new DecimalFormat(sb.toString());
            z = (obj3 == null || "".equals(obj3)) ? false : true;
            for (int i3 = 0; i3 < this.c.size(); i3++) {
                com.estrongs.fs.g gVar = this.c.get(i3);
                String bl = com.estrongs.android.util.ak.bl(gVar.getName());
                String bk = z2 ? str : com.estrongs.android.util.ak.bk(gVar.getName());
                if (bk == null) {
                    bk = "";
                }
                StringBuilder sb2 = new StringBuilder();
                if (z) {
                    bl = obj3;
                }
                gVar.putExtra("item_rename_new_name", sb2.append(bl).append(decimalFormat.format(i + i3)).append(bk).toString());
            }
        } else if (this.f1866a.f1871b.isChecked()) {
            String obj4 = this.f1866a.e.getText().toString();
            z = (obj4 == null || "".equals(obj4)) ? false : true;
            for (int i4 = 0; i4 < this.c.size(); i4++) {
                com.estrongs.fs.g gVar2 = this.c.get(i4);
                String bl2 = com.estrongs.android.util.ak.bl(gVar2.getName());
                String bk2 = z2 ? str : com.estrongs.android.util.ak.bk(gVar2.getName());
                if (bk2 == null) {
                    bk2 = "";
                }
                gVar2.putExtra("item_rename_new_name", (z ? obj4 : "") + bl2 + bk2);
            }
        }
        com.estrongs.fs.b.g gVar3 = new com.estrongs.fs.b.g(this.f1867b, this.c, this.d);
        gVar3.setDescription(this.f1867b.getString(C0000R.string.batch_rename));
        new ew(this.f1867b, this.f1867b.getString(C0000R.string.progress_renaming), gVar3).b(false).show();
        gVar3.execute();
        dialogInterface.dismiss();
    }

    public void a() {
        this.f1866a = new o(this, this.f1867b);
        aq a2 = new aq(this.f1867b).a(C0000R.string.batch_rename);
        a2.a(this.f1866a.an());
        a2.b(C0000R.string.confirm_ok, new m(this));
        a2.c(C0000R.string.confirm_cancel, new n(this));
        a2.b();
    }
}
