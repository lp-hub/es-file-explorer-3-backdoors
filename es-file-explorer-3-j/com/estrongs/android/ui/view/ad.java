package com.estrongs.android.ui.view;

import android.app.Activity;
import android.os.AsyncTask;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ aa d;

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.c.e f2596a = null;

    /* renamed from: b, reason: collision with root package name */
    protected com.estrongs.fs.c.e f2597b = null;
    private Exception e = null;
    protected com.estrongs.a.b.b c = new ae(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(aa aaVar) {
        this.d = aaVar;
    }

    protected com.estrongs.fs.c.e a(String str) {
        try {
            return new com.estrongs.fs.c.f(str);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        if (this.d.f2590a.isChecked() && this.d.j == null) {
            this.f2596a = a("MD5");
        }
        if (this.d.f2591b.isChecked() && this.d.k == null) {
            this.f2597b = a("SHA-1");
        }
        try {
            com.estrongs.fs.c.d.a(this.d.e, this.c, new af(this));
        } catch (IOException e) {
            this.e = e;
            e.printStackTrace();
        }
        if (this.f2596a != null) {
            this.d.j = this.f2596a.toString();
        }
        if (this.f2597b == null) {
            return null;
        }
        this.d.k = this.f2597b.toString();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Void r5) {
        Activity activity;
        Activity activity2;
        if (this.e == null) {
            if (this.d.j != null) {
                this.d.c.setText(this.d.j);
                this.d.h.setEnabled(true);
            }
            if (this.d.k != null) {
                this.d.d.setText(this.d.k);
                this.d.i.setEnabled(true);
                return;
            }
            return;
        }
        if (this.d.f2590a.isChecked()) {
            TextView textView = this.d.c;
            activity2 = this.d.ad;
            textView.setText(activity2.getString(C0000R.string.calc_failed_msg));
        }
        if (this.d.f2591b.isChecked()) {
            TextView textView2 = this.d.d;
            activity = this.d.ad;
            textView2.setText(activity.getString(C0000R.string.calc_failed_msg));
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        this.e = null;
        if (this.d.f2590a.isChecked() && this.d.j == null) {
            this.d.c.setText(C0000R.string.msg_computing);
        }
        if (this.d.f2591b.isChecked() && this.d.k == null) {
            this.d.d.setText(C0000R.string.msg_computing);
        }
    }
}
