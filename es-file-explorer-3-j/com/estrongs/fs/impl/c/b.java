package com.estrongs.fs.impl.c;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.fs.l;
import java.util.List;

/* loaded from: classes.dex */
final class b extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        String b2;
        l b3;
        List list;
        List list2;
        z = a.f;
        if (!z) {
            a.d();
            return;
        }
        String action = intent.getAction();
        if (!"android.bluetooth.device.action.FOUND".equals(action)) {
            if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                boolean unused = a.f = false;
                return;
            }
            return;
        }
        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        String name = bluetoothDevice.getName();
        String str = "bt://" + (name != null ? name + "\n" : "") + bluetoothDevice.getAddress() + "/";
        b2 = a.b(context, bluetoothDevice);
        String address = name != null ? name : bluetoothDevice.getAddress();
        b3 = a.b(bluetoothDevice);
        f fVar = new f(str, b3, address, b2);
        list = a.e;
        if (!list.contains(fVar)) {
            list2 = a.e;
            list2.add(fVar);
        }
        com.estrongs.fs.a.b.a().a(str);
    }
}
