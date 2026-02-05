package com.estrongs.android.pop;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.util.ak;
import com.estrongs.android.view.ar;

/* loaded from: classes.dex */
public class EnableOEMConfig extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            if (action.equals("android.intent.action.MEDIA_MOUNTED") || action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                try {
                    b.a();
                    ar.af();
                    ak.b();
                    ak.e();
                } catch (Exception e) {
                }
            }
        }
    }
}
