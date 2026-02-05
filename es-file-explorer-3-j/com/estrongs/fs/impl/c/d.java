package com.estrongs.fs.impl.c;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
class d extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f3061a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar) {
        this.f3061a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", 10);
            if (intExtra != 12) {
                if (intExtra == 10) {
                    this.f3061a.j();
                }
            } else {
                String address = ((BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")).getAddress();
                str = this.f3061a.o;
                if (address.equals(str)) {
                    this.f3061a.j();
                }
            }
        }
    }
}
