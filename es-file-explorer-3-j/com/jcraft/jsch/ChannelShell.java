package com.jcraft.jsch;

/* loaded from: classes.dex */
public class ChannelShell extends ChannelSession {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelShell() {
        this.x = true;
    }

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
            new RequestShell().a(l, this);
            if (this.j.f3312a != null) {
                this.k = new Thread(this);
                this.k.setName("Shell for " + l.k);
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
                throw new JSchException("ChannelShell");
            }
            throw new JSchException("ChannelShell", e);
        }
    }

    @Override // com.jcraft.jsch.ChannelSession, com.jcraft.jsch.Channel, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }
}
