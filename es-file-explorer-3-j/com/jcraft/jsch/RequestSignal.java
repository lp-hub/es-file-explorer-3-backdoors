package com.jcraft.jsch;

/* loaded from: classes.dex */
class RequestSignal extends Request {

    /* renamed from: a, reason: collision with root package name */
    private String f3341a = "KILL";

    RequestSignal() {
    }

    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("signal"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.b(Util.b(this.f3341a));
        a(packet);
    }
}
