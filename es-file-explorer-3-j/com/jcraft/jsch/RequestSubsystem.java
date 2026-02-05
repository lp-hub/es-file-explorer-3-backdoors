package com.jcraft.jsch;

/* loaded from: classes.dex */
public class RequestSubsystem extends Request {

    /* renamed from: a, reason: collision with root package name */
    private String f3342a = null;

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
        buffer.b(Util.b(this.f3342a));
        a(packet);
    }

    public void a(Session session, Channel channel, String str, boolean z) {
        a(z);
        this.f3342a = str;
        a(session, channel);
    }
}
