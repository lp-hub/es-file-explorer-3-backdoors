package com.jcraft.jsch;

/* loaded from: classes.dex */
class RequestWindowChange extends Request {

    /* renamed from: a, reason: collision with root package name */
    int f3343a = 80;

    /* renamed from: b, reason: collision with root package name */
    int f3344b = 24;
    int c = 640;
    int d = 480;

    RequestWindowChange() {
    }

    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("window-change"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.a(this.f3343a);
        buffer.a(this.f3344b);
        buffer.a(this.c);
        buffer.a(this.d);
        a(packet);
    }
}
