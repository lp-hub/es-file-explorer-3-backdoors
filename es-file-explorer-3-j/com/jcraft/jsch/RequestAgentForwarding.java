package com.jcraft.jsch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RequestAgentForwarding extends Request {
    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        a(false);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("auth-agent-req@openssh.com"));
        buffer.a((byte) (a() ? 1 : 0));
        a(packet);
        session.c = true;
    }
}
