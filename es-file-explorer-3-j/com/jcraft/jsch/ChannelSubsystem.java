package com.jcraft.jsch;

/* loaded from: classes.dex */
public class ChannelSubsystem extends ChannelSession {
    boolean t = false;
    boolean E = false;
    boolean F = true;
    String G = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.jcraft.jsch.Channel
    public void b() {
        this.j.a(l().d);
        this.j.a(l().e);
    }

    @Override // com.jcraft.jsch.Channel
    public void d() {
        Session l = l();
        try {
            if (this.t) {
                new RequestX11().a(l, this);
            }
            if (this.E) {
                new RequestPtyReq().a(l, this);
            }
            new RequestSubsystem().a(l, this, this.G, this.F);
            if (this.j.f3312a != null) {
                this.k = new Thread(this);
                this.k.setName("Subsystem for " + l.k);
                if (l.j) {
                    this.k.setDaemon(l.j);
                }
                this.k.start();
            }
        } catch (Exception e) {
            if (e instanceof JSchException) {
                throw ((JSchException) e);
            }
            if (!(e instanceof Throwable)) {
                throw new JSchException("ChannelSubsystem");
            }
            throw new JSchException("ChannelSubsystem", e);
        }
    }

    @Override // com.jcraft.jsch.ChannelSession, com.jcraft.jsch.Channel, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
