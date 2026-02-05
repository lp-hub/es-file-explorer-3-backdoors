package com.estrongs.android.pop.app.compress;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class CompressionProxyActivity extends ESActivity {
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!com.estrongs.android.pop.m.p) {
            Intent intent = new Intent(this, (Class<?>) CompressionActivity.class);
            intent.fillIn(getIntent(), 3);
            try {
                startActivity(intent);
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
        }
        finish();
    }
}
