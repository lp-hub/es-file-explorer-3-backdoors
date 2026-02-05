package com.jcraft.jsch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RequestEnv extends Request {

    /* renamed from: a, reason: collision with root package name */
    byte[] f3336a = new byte[0];

    /* renamed from: b, reason: collision with root package name */
    byte[] f3337b = new byte[0];

    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("env"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.b(this.f3336a);
        buffer.b(this.f3337b);
        a(packet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr, byte[] bArr2) {
        this.f3336a = bArr;
        this.f3337b = bArr2;
    }
}
