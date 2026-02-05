package com.estrongs.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import b.a.a.e;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class a implements e {

    /* renamed from: a, reason: collision with root package name */
    private BluetoothSocket f2943a;

    /* renamed from: b, reason: collision with root package name */
    private BluetoothDevice f2944b;

    public a(BluetoothSocket bluetoothSocket) {
        this.f2943a = bluetoothSocket;
        this.f2944b = bluetoothSocket.getRemoteDevice();
    }

    @Override // b.a.a.c
    public InputStream a() {
        return this.f2943a.getInputStream();
    }

    @Override // b.a.a.c
    public DataInputStream b() {
        return new DataInputStream(a());
    }

    @Override // b.a.a.d
    public OutputStream c() {
        return this.f2943a.getOutputStream();
    }

    @Override // b.a.a.d
    public DataOutputStream d() {
        return new DataOutputStream(c());
    }

    @Override // b.a.a.a
    public void e() {
        if (this.f2943a != null) {
            this.f2943a.close();
        }
    }
}
