package com.jcraft.jsch;

/* loaded from: classes.dex */
public class ChannelExec extends ChannelSession {
    byte[] t = new byte[0];

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
            n();
            new RequestExec(this.t).a(l, this);
            if (this.j.f3312a != null) {
                this.k = new Thread(this);
                this.k.setName("Exec thread " + l.g());
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
                throw new JSchException("ChannelExec");
            }
            throw new JSchException("ChannelExec", e);
        }
    }

    @Override // com.jcraft.jsch.ChannelSession, com.jcraft.jsch.Channel, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
