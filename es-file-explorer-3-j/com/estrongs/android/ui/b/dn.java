package com.estrongs.android.ui.b;

import android.app.Dialog;
import android.content.Context;
import android.text.Html;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TableRow;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.FileSystemException;
import de.aflx.sardine.util.SardineUtil;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dn extends com.estrongs.android.view.cq {

    /* renamed from: a, reason: collision with root package name */
    TextView f1743a;

    /* renamed from: b, reason: collision with root package name */
    TextView f1744b;
    protected com.estrongs.fs.g c;
    String d;
    String e;
    String f;
    String g;
    com.estrongs.fs.impl.local.m h;
    boolean i;
    public Dialog j;
    private TextView k;
    private TextView l;
    private TextView m;
    private String n;
    private dm o;
    private TextView p;
    private boolean q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dn(ESActivity eSActivity, com.estrongs.fs.g gVar) {
        super(eSActivity);
        boolean bE;
        boolean z = false;
        this.n = null;
        this.c = null;
        this.d = "";
        this.e = "";
        this.f = "";
        this.p = null;
        this.q = false;
        this.i = false;
        this.j = null;
        this.c = gVar;
        this.n = gVar.getAbsolutePath();
        this.d = n(C0000R.string.category_files).toString();
        this.e = n(C0000R.string.category_folders).toString();
        this.f = n(C0000R.string.property_bytes).toString();
        if (this.n == null) {
            return;
        }
        if (com.estrongs.android.util.ak.aO(this.c.getPath())) {
            this.i = true;
        } else {
            this.i = false;
        }
        if (gVar.getFileType() != null ? gVar.getFileType().c().toString().contains("server") : false) {
            a(true);
        } else {
            if (com.estrongs.android.util.ak.aO(this.n)) {
                try {
                    this.g = com.estrongs.fs.impl.local.d.d(this.n).p;
                } catch (Throwable th) {
                }
                bE = com.estrongs.android.util.ak.bE(this.n);
            } else {
                bE = false;
            }
            a(false);
            z = bE;
        }
        ((Button) l(C0000R.id.property_cp_location)).setOnClickListener(new Cdo(this, eSActivity));
        ((Button) l(C0000R.id.property_cp_full_location)).setOnClickListener(new dz(this, eSActivity));
        if (z) {
            l(C0000R.id.button_wraper).setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals(str)) {
                return i;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(com.estrongs.fs.impl.local.m mVar) {
        String str = (mVar.f3106a & 256) != 0 ? "r" : "-";
        String str2 = (mVar.f3106a & 128) != 0 ? str + "w" : str + "-";
        String str3 = (mVar.f3106a & 2048) != 0 ? (mVar.f3106a & 64) != 0 ? str2 + SardineUtil.CUSTOM_NAMESPACE_PREFIX : str2 + "S" : (mVar.f3106a & 64) != 0 ? str2 + "x" : str2 + "-";
        String str4 = (mVar.f3106a & 32) != 0 ? str3 + "r" : str3 + "-";
        String str5 = (mVar.f3106a & 16) != 0 ? str4 + "w" : str4 + "-";
        String str6 = (mVar.f3106a & 1024) != 0 ? (mVar.f3106a & 8) != 0 ? str5 + SardineUtil.CUSTOM_NAMESPACE_PREFIX : str5 + "S" : (mVar.f3106a & 8) != 0 ? str5 + "x" : str5 + "-";
        String str7 = (mVar.f3106a & 4) != 0 ? str6 + "r" : str6 + "-";
        String str8 = (mVar.f3106a & 2) != 0 ? str7 + "w" : str7 + "-";
        return (mVar.f3106a & 512) != 0 ? (mVar.f3106a & 1) != 0 ? str8 + "t" : str8 + "T" : (mVar.f3106a & 1) != 0 ? str8 + "x" : str8 + "-";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TextView textView, long j) {
        textView.setText(com.estrongs.fs.c.d.c(j) + " (" + com.estrongs.fs.c.d.d(j) + " " + this.f + ")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<com.estrongs.fs.b.x> list) {
        if (list != null) {
            long j = 0;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                com.estrongs.fs.b.x xVar = list.get(i3);
                i2 += xVar.e;
                i += xVar.d;
                j += xVar.c;
            }
            this.ad.runOnUiThread(new du(this, i, i2, j));
        }
    }

    private void a(boolean z) {
        TextView textView = (TextView) l(C0000R.id.property_file_name);
        ImageView imageView = (ImageView) l(C0000R.id.property_type_icon);
        TextView textView2 = (TextView) l(C0000R.id.property_type_text);
        TextView textView3 = (TextView) l(C0000R.id.property_location_text);
        TextView textView4 = (TextView) l(C0000R.id.property_size_text);
        TextView textView5 = (TextView) l(C0000R.id.property_created_text);
        TextView textView6 = (TextView) l(C0000R.id.property_modified_text);
        TextView textView7 = (TextView) l(C0000R.id.property_accessed_text);
        TextView textView8 = (TextView) l(C0000R.id.property_readable_text);
        TextView textView9 = (TextView) l(C0000R.id.property_writable_text);
        TextView textView10 = (TextView) l(C0000R.id.property_hidden_text);
        this.l = (TextView) l(C0000R.id.property_contains);
        View l = l(C0000R.id.property_contains_row);
        this.k = (TextView) l(C0000R.id.property_size);
        this.m = (TextView) l(C0000R.id.property_contains_summary);
        this.f1743a = (TextView) l(C0000R.id.property_root_owner_text);
        this.f1744b = (TextView) l(C0000R.id.property_root_group_text);
        if (com.estrongs.android.d.d.a(this.c)) {
            imageView.setImageDrawable(com.estrongs.android.d.d.e(this.c));
        } else {
            imageView.setImageDrawable(com.estrongs.android.d.d.d(this.c));
        }
        if (z) {
            b(false);
            if (com.estrongs.android.util.ak.aJ(this.n)) {
                textView.setText(com.estrongs.android.util.ak.a(true, this.n));
                try {
                    textView2.setText(com.estrongs.fs.impl.c.a.a(this.ad, this.n));
                } catch (FileSystemException e) {
                    e.printStackTrace();
                }
            } else {
                textView.setText(com.estrongs.android.pop.q.a(this.ad).c(this.n));
                textView2.setText(C0000R.string.location_server);
            }
            textView3.setText(com.estrongs.android.util.ak.bv(this.n));
            if (!com.estrongs.android.util.ak.an(this.n)) {
                textView4.setVisibility(8);
                this.k.setVisibility(8);
            } else if (com.estrongs.android.util.ak.am(this.n)) {
                textView4.setVisibility(0);
                textView4.setText(n(C0000R.string.left_size));
                this.k.setVisibility(0);
            }
            textView5.setText(C0000R.string.property_na);
            textView6.setText(C0000R.string.property_na);
            textView7.setText(C0000R.string.property_na);
            textView8.setText(C0000R.string.property_na);
            textView9.setText(C0000R.string.property_na);
            textView10.setText(C0000R.string.property_na);
            this.l.setText(C0000R.string.property_contains);
            return;
        }
        TableRow tableRow = (TableRow) l(C0000R.id.permission_readable_row);
        TableRow tableRow2 = (TableRow) l(C0000R.id.permission_writeable_row);
        TableRow tableRow3 = (TableRow) l(C0000R.id.permission_hidden_row);
        this.p = (TextView) l(C0000R.id.property_root_permission_text);
        if (!((com.estrongs.fs.impl.local.h.a((Context) this.ad, false) && com.estrongs.android.util.ak.aO(this.n) && !com.estrongs.android.util.ak.aZ(this.n)) || com.estrongs.android.util.ak.G(this.n)) || this.g == null) {
            tableRow.setVisibility(0);
            tableRow2.setVisibility(0);
            tableRow3.setVisibility(0);
            l(C0000R.id.permission_divider).setVisibility(0);
            b(false);
            if (com.estrongs.android.util.ak.aC(this.c.getPath())) {
                tableRow.setVisibility(8);
                tableRow2.setVisibility(8);
                tableRow3.setVisibility(8);
                l(C0000R.id.permission_divider).setVisibility(8);
            }
        } else {
            this.g = "asdfghjklmnop";
            tableRow.setVisibility(8);
            tableRow2.setVisibility(8);
            tableRow3.setVisibility(8);
            l(C0000R.id.permission_divider).setVisibility(8);
            this.h = com.estrongs.fs.impl.local.h.f(g());
            this.g = a(this.h);
            b(true);
            this.p.setText(this.g.substring(0, 3) + " " + this.g.substring(3, 6) + " " + this.g.substring(6, 9));
        }
        textView.setText(this.c.getName());
        textView2.setText(this.c.getFileType().a() ? C0000R.string.category_folder : C0000R.string.category_file);
        textView3.setText(Html.fromHtml("<a href=\"ss\">" + com.estrongs.android.util.ak.aY(com.estrongs.android.util.ak.bv(this.n)) + "</a>"));
        textView3.setClickable(true);
        if (!com.estrongs.android.util.ak.bE(this.n)) {
            textView3.setOnClickListener(new eb(this));
        }
        textView4.setVisibility(0);
        textView4.setText(n(C0000R.string.property_size));
        this.k.setVisibility(0);
        DateFormat I = com.estrongs.android.pop.q.a(this.ad).I();
        SimpleDateFormat simpleDateFormat = FileExplorerActivity.M ? new SimpleDateFormat(" HH:mm:ss") : new SimpleDateFormat(" hh:mm:ss a");
        if (this.c.createdTime() > 0) {
            textView5.setText(I.format(new Date(this.c.createdTime())) + simpleDateFormat.format(new Date(this.c.lastModified())));
        } else {
            textView5.setText(C0000R.string.property_na);
        }
        if (this.c.lastModified() > 0) {
            textView6.setText(I.format(new Date(this.c.lastModified())) + simpleDateFormat.format(new Date(this.c.lastModified())));
        } else {
            textView6.setText(C0000R.string.property_na);
        }
        if (this.c.lastModified() > 0) {
            textView7.setText(I.format(new Date(this.c.lastModified())) + simpleDateFormat.format(new Date(this.c.lastModified())));
        } else {
            textView7.setText(C0000R.string.property_na);
        }
        textView8.setText(this.c.hasPermission(0) ? C0000R.string.confirm_yes : C0000R.string.confirm_no);
        textView9.setText(this.c.hasPermission(0) ? C0000R.string.confirm_yes : C0000R.string.confirm_no);
        textView10.setText(C0000R.string.confirm_no);
        if (this.c.getFileType().a()) {
            this.l.setText(C0000R.string.property_contains);
        } else {
            l.setVisibility(8);
            long length = this.c.length();
            if (length <= 0) {
                this.k.setText(C0000R.string.property_na);
            } else {
                a(this.k, length);
            }
        }
        if (com.estrongs.android.util.ak.aO(this.c.getAbsolutePath())) {
            l(C0000R.id.property_create_row).setVisibility(0);
            if (com.estrongs.android.util.av.b(this.c)) {
                l(C0000R.id.property_accessed_row).setVisibility(0);
                o(C0000R.id.property_accessed_title).setText(C0000R.string.details_image_resolution);
                o(C0000R.id.property_accessed_text).setText(com.estrongs.android.ui.d.a.a(this.ad, this.c));
            }
        }
        LinearLayout linearLayout = (LinearLayout) l(C0000R.id.check_row);
        if (!e()) {
            linearLayout.setVisibility(8);
            l(C0000R.id.check_row_divider).setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
            l(C0000R.id.check_row_divider).setVisibility(0);
            ((Button) linearLayout.findViewById(C0000R.id.show_check_button)).setOnClickListener(new ec(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i) {
        new aq(this.ad).a(C0000R.string.owner_dialog_title).a(strArr, i, new dp(this, strArr)).c(true).b();
    }

    private void b(boolean z) {
        LinearLayout linearLayout = (LinearLayout) l(C0000R.id.permission_root_row);
        LinearLayout linearLayout2 = (LinearLayout) l(C0000R.id.owner_root_row);
        LinearLayout linearLayout3 = (LinearLayout) l(C0000R.id.group_root_row);
        if (!z) {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(8);
            linearLayout3.setVisibility(8);
            l(C0000R.id.root_row_divider).setVisibility(8);
            return;
        }
        this.f1743a.setText(com.estrongs.fs.impl.local.h.a(this.h.c));
        this.f1744b.setText(com.estrongs.fs.impl.local.h.b(this.h.f3107b));
        linearLayout.setVisibility(0);
        linearLayout2.setVisibility(0);
        linearLayout3.setVisibility(0);
        l(C0000R.id.root_row_divider).setVisibility(0);
        ((Button) l(C0000R.id.property_root_chg_perm_button)).setOnClickListener(new ed(this));
        ((Button) l(C0000R.id.property_root_chg_owner_button)).setOnClickListener(new ee(this));
        ((Button) l(C0000R.id.property_root_chg_group_button)).setOnClickListener(new ef(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String[] strArr, int i) {
        new aq(this.ad).a(C0000R.string.permission_group).a(strArr, i, new dq(this, strArr)).c(true).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String g() {
        String absolutePath = this.c.getAbsolutePath();
        return absolutePath.endsWith("/") ? absolutePath.substring(0, absolutePath.length() - 1) : absolutePath;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.ad).inflate(C0000R.layout.dialog_permission, (ViewGroup) null);
        TableRow tableRow = (TableRow) inflate.findViewById(C0000R.id.permission_owner_row);
        CheckBox checkBox = (CheckBox) tableRow.findViewById(C0000R.id.checkbox_readable);
        CheckBox checkBox2 = (CheckBox) tableRow.findViewById(C0000R.id.checkbox_writable);
        CheckBox checkBox3 = (CheckBox) tableRow.findViewById(C0000R.id.checkbox_executable);
        if ((this.h.f3106a & 256) != 0) {
            checkBox.setChecked(true);
        }
        if ((this.h.f3106a & 128) != 0) {
            checkBox2.setChecked(true);
        }
        if ((this.h.f3106a & 64) != 0) {
            checkBox3.setChecked(true);
        }
        TableRow tableRow2 = (TableRow) inflate.findViewById(C0000R.id.permission_group_row);
        CheckBox checkBox4 = (CheckBox) tableRow2.findViewById(C0000R.id.checkbox_readable);
        CheckBox checkBox5 = (CheckBox) tableRow2.findViewById(C0000R.id.checkbox_writable);
        CheckBox checkBox6 = (CheckBox) tableRow2.findViewById(C0000R.id.checkbox_executable);
        if ((this.h.f3106a & 32) != 0) {
            checkBox4.setChecked(true);
        }
        if ((this.h.f3106a & 16) != 0) {
            checkBox5.setChecked(true);
        }
        if ((this.h.f3106a & 8) != 0) {
            checkBox6.setChecked(true);
        }
        TableRow tableRow3 = (TableRow) inflate.findViewById(C0000R.id.permission_other_row);
        CheckBox checkBox7 = (CheckBox) tableRow3.findViewById(C0000R.id.checkbox_readable);
        CheckBox checkBox8 = (CheckBox) tableRow3.findViewById(C0000R.id.checkbox_writable);
        CheckBox checkBox9 = (CheckBox) tableRow3.findViewById(C0000R.id.checkbox_executable);
        if ((this.h.f3106a & 4) != 0) {
            checkBox7.setChecked(true);
        }
        if ((this.h.f3106a & 2) != 0) {
            checkBox8.setChecked(true);
        }
        if ((this.h.f3106a & 1) != 0) {
            checkBox9.setChecked(true);
        }
        CheckBox checkBox10 = (CheckBox) inflate.findViewById(C0000R.id.checkbox_setuid);
        CheckBox checkBox11 = (CheckBox) inflate.findViewById(C0000R.id.checkbox_setgid);
        CheckBox checkBox12 = (CheckBox) inflate.findViewById(C0000R.id.checkbox_setstk);
        if ((this.h.f3106a & 2048) != 0) {
            checkBox10.setChecked(true);
        }
        if ((this.h.f3106a & 1024) != 0) {
            checkBox11.setChecked(true);
        }
        if ((this.h.f3106a & 512) != 0) {
            checkBox12.setChecked(true);
        }
        new aq(this.ad).a(C0000R.string.privacy_permission_settings).a(inflate).c(C0000R.string.confirm_cancel, new eh(this)).b(C0000R.string.confirm_ok, new eg(this, checkBox9, checkBox8, checkBox7, checkBox6, checkBox5, checkBox4, checkBox3, checkBox2, checkBox, checkBox12, checkBox11, checkBox10)).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.o != null) {
            this.ad.runOnUiThread(new dt(this));
        }
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.file_property;
    }

    public void b() {
        if (this.o == null || this.o.getTaskStatus() == 4 || this.o.getTaskStatus() == 5) {
            return;
        }
        this.o.requestStop();
    }

    public void c() {
        if (this.c.getFileType().a() && com.estrongs.android.util.ak.aO(this.c.getAbsolutePath())) {
            LinkedList linkedList = new LinkedList();
            linkedList.add(this.c);
            this.o = new dr(this, linkedList, com.estrongs.fs.d.a());
            this.o.addProgressListener(new ds(this));
            if (com.estrongs.android.util.ak.aC(this.n)) {
                this.o.a(false);
            }
            this.o.execute();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        com.estrongs.android.ui.view.aa aaVar = new com.estrongs.android.ui.view.aa(this.ad, null, this.n);
        aaVar.a(new ea(this, new aq(this.ad).a(C0000R.string.lbl_file_checksum).a(aaVar.an()).d(C0000R.string.lbl_calculate, new dy(this, aaVar)).e(C0000R.string.action_save, new dx(this, aaVar)).f(C0000R.string.confirm_cancel, new dw(this, aaVar)).a(new dv(this, aaVar)).b()));
    }

    protected boolean e() {
        return com.estrongs.android.util.ak.aO(this.n) && new File(this.n).isFile();
    }

    public boolean f() {
        return this.q;
    }
}
