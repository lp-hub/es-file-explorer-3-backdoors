package com.jcraft.jsch;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class Request {

    /* renamed from: a, reason: collision with root package name */
    private boolean f3334a = false;

    /* renamed from: b, reason: collision with root package name */
    private Session f3335b = null;
    private Channel c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Packet packet) {
        if (this.f3334a) {
            this.c.q = -1;
        }
        this.f3335b.b(packet);
        if (this.f3334a) {
            long currentTimeMillis = System.currentTimeMillis();
            long j = this.c.r;
            while (this.c.k() && this.c.q == -1) {
                try {
                    Thread.sleep(10L);
                } catch (Exception e) {
                }
                if (j > 0 && System.currentTimeMillis() - currentTimeMillis > j) {
                    this.c.q = 0;
                    throw new JSchException("channel request: timeout");
                }
            }
            if (this.c.q == 0) {
                throw new JSchException("failed to send channel request");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Session session, Channel channel) {
        this.f3335b = session;
        this.c = channel;
        if (channel.r > 0) {
            a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f3334a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f3334a;
    }
}
