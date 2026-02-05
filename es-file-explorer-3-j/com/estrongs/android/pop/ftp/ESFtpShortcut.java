package com.estrongs.android.pop.ftp;

import android.os.Bundle;
import com.estrongs.android.ftp.k;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class ESFtpShortcut extends ESActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        int i = extras != null ? extras.getInt("mode") : 1;
        try {
            k a2 = k.a();
            a2.a(this, new a(this, i, a2));
        } catch (Exception e) {
            e.printStackTrace();
        }
        finish();
    }
}
