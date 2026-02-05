package com.estrongs.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Looper;
import b.b.g;
import com.b.a.a.h;
import com.b.a.a.i;
import com.b.a.a.u;
import java.io.IOException;
import java.util.UUID;

/* loaded from: classes.dex */
public class c {
    /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b.b.b a(BluetoothDevice bluetoothDevice, UUID uuid) {
        BluetoothSocket createRfcommSocketToServiceRecord = bluetoothDevice.createRfcommSocketToServiceRecord(uuid);
        try {
            createRfcommSocketToServiceRecord.connect();
        } catch (Exception e) {
            try {
                createRfcommSocketToServiceRecord.close();
            } catch (Exception e2) {
            }
            try {
                createRfcommSocketToServiceRecord = (BluetoothSocket) bluetoothDevice.getClass().getMethod("createRfcommSocket", Integer.TYPE).invoke(bluetoothDevice, 1);
                try {
                    Thread.sleep(200L);
                } catch (Exception e3) {
                }
                try {
                    createRfcommSocketToServiceRecord.connect();
                } catch (Exception e4) {
                    createRfcommSocketToServiceRecord.close();
                    createRfcommSocketToServiceRecord = null;
                    if (createRfcommSocketToServiceRecord == null) {
                        e.printStackTrace();
                        throw new IOException("bluetooth connect error");
                    }
                    return new h(new a(createRfcommSocketToServiceRecord), new i());
                }
            } catch (Exception e5) {
                createRfcommSocketToServiceRecord = null;
            }
            if (createRfcommSocketToServiceRecord == null) {
            }
        }
        return new h(new a(createRfcommSocketToServiceRecord), new i());
    }

    public static g a(String str, UUID uuid) {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            throw new IOException("not support bluetooth");
        }
        return new u(new b(defaultAdapter.listenUsingRfcommWithServiceRecord(str, uuid)), new i());
    }
}
