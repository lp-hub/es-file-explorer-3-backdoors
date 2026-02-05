package com.jcraft.jsch;

/* loaded from: classes.dex */
class RequestExec extends Request {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f3338a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestExec(byte[] bArr) {
        this.f3338a = new byte[0];
        this.f3338a = bArr;
    }

    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("exec"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.e(this.f3338a.length + 4);
        buffer.b(this.f3338a);
        a(packet);
    }
}
