package com.jcraft.jsch;

/* loaded from: classes.dex */
public class RequestSftp extends Request {
    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestSftp() {
        a(true);
    }

    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("subsystem"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.b(Util.b("sftp"));
        a(packet);
    }
}
