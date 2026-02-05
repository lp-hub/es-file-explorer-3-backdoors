package com.estrongs.android.pop.app.diskusage;

import com.estrongs.android.view.br;
import com.estrongs.android.widget.bc;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements bc {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f676a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar) {
        this.f676a = eVar;
    }

    @Override // com.estrongs.android.widget.bc
    public boolean a() {
        File file;
        File file2;
        br brVar;
        br brVar2;
        File file3;
        this.f676a.ar();
        file = this.f676a.am;
        if (file == null) {
            return false;
        }
        e eVar = this.f676a;
        file2 = this.f676a.am;
        eVar.an = file2;
        brVar = this.f676a.z;
        if (brVar == null) {
            return false;
        }
        brVar2 = this.f676a.z;
        StringBuilder append = new StringBuilder().append("du://");
        file3 = this.f676a.an;
        brVar2.a(append.append(file3.getAbsolutePath()).toString(), true);
        return false;
    }
}
