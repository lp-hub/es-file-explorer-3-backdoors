package com.estrongs.fs.b;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;

/* loaded from: classes.dex */
public class h extends com.estrongs.a.a {
    @Override // com.estrongs.a.a
    public boolean canPause() {
        return false;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                this.processData.d += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                onProgress(this.processData);
                return;
            case 2:
                this.processData.f += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                onProgress(this.processData);
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        this.processData.e = -1L;
        this.processData.f196a = FexApplication.a().getString(C0000R.string.wait_toast_bt_scan);
        onProgress(this.processData);
        com.estrongs.fs.impl.c.a.a(FexApplication.a());
        return true;
    }
}
