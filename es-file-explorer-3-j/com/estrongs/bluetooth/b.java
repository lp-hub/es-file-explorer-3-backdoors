package com.estrongs.bluetooth;

import android.bluetooth.BluetoothServerSocket;
import b.a.a.e;
import b.a.a.f;
import java.io.IOException;

/* loaded from: classes.dex */
public class b implements f {

    /* renamed from: a, reason: collision with root package name */
    private BluetoothServerSocket f2945a;

    public b(BluetoothServerSocket bluetoothServerSocket) {
        this.f2945a = bluetoothServerSocket;
    }

    @Override // b.a.a.f
    public e a() {
        try {
            return new a(this.f2945a.accept());
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // b.a.a.a
    public void e() {
        this.f2945a.close();
    }
}
