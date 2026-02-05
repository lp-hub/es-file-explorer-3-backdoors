package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.view.br;
import com.estrongs.android.widget.az;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f678a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(e eVar) {
        this.f678a = eVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        boolean z;
        long j2;
        com.estrongs.android.ui.a.g gVar;
        Activity activity;
        br brVar;
        b bVar;
        az azVar;
        az azVar2;
        az azVar3;
        az azVar4;
        az azVar5;
        String m;
        az azVar6;
        long j3;
        az p;
        br brVar2;
        File file;
        int i2 = i - 1;
        try {
            z = this.f678a.l;
            if (z) {
                this.f678a.c(i2);
                return;
            }
            j2 = this.f678a.al;
            if (j2 == 0) {
                gVar = this.f678a.aE;
                File file2 = (File) gVar.getItem(i2);
                if (!file2.isDirectory()) {
                    activity = this.f678a.ad;
                    AppRunner.a(activity, file2.getAbsolutePath(), file2.getAbsolutePath());
                    return;
                }
                this.f678a.an = file2;
                brVar = this.f678a.z;
                if (brVar != null) {
                    brVar2 = this.f678a.z;
                    StringBuilder append = new StringBuilder().append("du://");
                    file = this.f678a.an;
                    brVar2.a(append.append(file.getAbsolutePath()).toString(), false);
                }
                bVar = this.f678a.ao;
                com.estrongs.fs.c.a a2 = bVar.a(file2);
                this.f678a.au = 0L;
                azVar = this.f678a.ar;
                if (azVar == null) {
                    e eVar = this.f678a;
                    p = this.f678a.p();
                    eVar.ar = p;
                }
                azVar2 = this.f678a.ar;
                if (azVar2 != null) {
                    azVar3 = this.f678a.ar;
                    azVar3.a();
                    azVar4 = this.f678a.ar;
                    azVar4.a(a2.b());
                    azVar5 = this.f678a.ar;
                    m = this.f678a.m(C0000R.string.msg_counting_file_size);
                    azVar5.setMessage(m);
                    azVar6 = this.f678a.ar;
                    j3 = this.f678a.au;
                    azVar6.b(j3);
                }
                this.f678a.g();
            }
        } catch (Exception e) {
        }
    }
}
