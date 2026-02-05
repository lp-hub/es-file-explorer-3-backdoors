package com.estrongs.android.ui.view;

import android.app.Activity;
import android.os.AsyncTask;
import android.text.ClipboardManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.view.cq;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.text.MessageFormat;

/* loaded from: classes.dex */
public class aa extends cq {

    /* renamed from: a, reason: collision with root package name */
    protected CheckBox f2590a;

    /* renamed from: b, reason: collision with root package name */
    protected CheckBox f2591b;
    protected TextView c;
    protected TextView d;
    protected String e;
    protected AsyncTask<Void, Void, Void> f;
    protected boolean g;
    protected View h;
    protected View i;
    protected String j;
    protected String k;

    public aa(Activity activity, ViewGroup viewGroup, String str) {
        super(activity, viewGroup, true);
        this.j = null;
        this.k = null;
        this.e = str;
        com.estrongs.android.ui.theme.al.a(activity);
        ClipboardManager clipboardManager = (ClipboardManager) activity.getSystemService("clipboard");
        ((TextView) l(C0000R.id.fileName)).setText(com.estrongs.android.util.ak.d(str));
        this.c = (TextView) l(C0000R.id.md5);
        this.d = (TextView) l(C0000R.id.sha);
        this.f2590a = (CheckBox) l(C0000R.id.cbxMd5);
        this.f2591b = (CheckBox) l(C0000R.id.cbxSha);
        this.h = l(C0000R.id.pasteMD5);
        this.h.setEnabled(false);
        this.h.setOnClickListener(new ab(this, clipboardManager));
        this.i = l(C0000R.id.pasteSha);
        this.i.setEnabled(false);
        this.i.setOnClickListener(new ac(this, clipboardManager));
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.file_checksum;
    }

    public void b() {
        boolean z;
        if (this.f2590a.isChecked()) {
            this.f2590a.setEnabled(false);
            z = true;
        } else {
            z = false;
        }
        if (this.f2591b.isChecked()) {
            this.f2591b.setEnabled(false);
            z |= true;
        }
        if (z) {
            f();
        } else {
            z.a(this.ad, MessageFormat.format(this.ad.getString(C0000R.string.msg_one_item_selected_at_least), "(MD5,SHA-1)"), 1).show();
        }
    }

    public void c() {
        PrintWriter printWriter;
        File parentFile = new File(this.e).getParentFile();
        String str = com.estrongs.android.util.ak.d(this.e) + ".checksum";
        String str2 = "";
        try {
            printWriter = new PrintWriter(new FileOutputStream(new File(parentFile, str)));
            try {
                try {
                    printWriter.println(this.ad.getString(C0000R.string.property_file_header) + this.e);
                    if (this.j != null) {
                        printWriter.println("MD5: " + this.j);
                        str2 = "MD5,";
                    }
                    if (this.k != null) {
                        printWriter.println("SHA-1: " + this.k);
                        str2 = str2 + "SHA-1,";
                    }
                    com.estrongs.fs.c.d.a(printWriter);
                    if (str2.endsWith(",")) {
                        str2 = str2.substring(0, str2.length() - 1);
                    }
                    z.a(this.ad, MessageFormat.format(this.ad.getString(C0000R.string.msg_checksum_saved), str2, str), 1).show();
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    z.a(this.ad, ((Object) this.ad.getText(C0000R.string.save_failed_msg)) + ". " + e.getMessage(), 1).show();
                    com.estrongs.fs.c.d.a(printWriter);
                }
            } catch (Throwable th) {
                th = th;
                com.estrongs.fs.c.d.a(printWriter);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            printWriter = null;
        } catch (Throwable th2) {
            th = th2;
            printWriter = null;
            com.estrongs.fs.c.d.a(printWriter);
            throw th;
        }
    }

    public void d() {
        e();
        if (this.ag != null) {
            this.ag.a(true);
        }
    }

    public void e() {
        this.g = true;
        if (this.f != null) {
            this.f.cancel(true);
        }
    }

    protected void f() {
        if (this.f != null) {
            this.f.cancel(true);
        }
        this.f = new ad(this);
        this.f.execute(new Void[0]);
    }
}
