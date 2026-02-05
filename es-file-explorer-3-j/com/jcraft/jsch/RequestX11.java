package com.jcraft.jsch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RequestX11 extends Request {
    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("x11-req"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.a((byte) 0);
        buffer.b(Util.b("MIT-MAGIC-COOKIE-1"));
        buffer.b(ChannelX11.c(session));
        buffer.a(0);
        a(packet);
        session.f3346b = true;
    }
}
