package com.jcraft.jsch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RequestPtyReq extends Request {

    /* renamed from: a, reason: collision with root package name */
    private String f3339a = "vt100";

    /* renamed from: b, reason: collision with root package name */
    private int f3340b = 80;
    private int c = 24;
    private int d = 640;
    private int e = 480;
    private byte[] f = Util.f3353a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, int i3, int i4) {
        this.f3340b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    @Override // com.jcraft.jsch.Request
    public void a(Session session, Channel channel) {
        super.a(session, channel);
        Buffer buffer = new Buffer();
        Packet packet = new Packet(buffer);
        packet.a();
        buffer.a((byte) 98);
        buffer.a(channel.a());
        buffer.b(Util.b("pty-req"));
        buffer.a((byte) (a() ? 1 : 0));
        buffer.b(Util.b(this.f3339a));
        buffer.a(this.f3340b);
        buffer.a(this.c);
        buffer.a(this.d);
        buffer.a(this.e);
        buffer.b(this.f);
        a(packet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f3339a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr) {
        this.f = bArr;
    }
}
