package com.jcraft.jsch;

/* loaded from: classes.dex */
class RequestShell extends Request {
    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("shell"));
        buffer.a((byte) (a() ? 1 : 0));
        a(packet);
    }
}
