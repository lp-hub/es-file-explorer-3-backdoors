.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:I

.field private static t:Ljava/util/Vector;


# instance fields
.field b:I

.field c:I

.field d:[B

.field e:I

.field f:I

.field g:I

.field h:J

.field i:I

.field j:Lcom/jcraft/jsch/IO;

.field k:Ljava/lang/Thread;

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field private u:Lcom/jcraft/jsch/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/jcraft/jsch/Channel;->a:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/jcraft/jsch/Channel;->c:I

    const-string v0, "foo"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->d:[B

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    iget v0, p0, Lcom/jcraft/jsch/Channel;->e:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->f:I

    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->h:J

    iput v2, p0, Lcom/jcraft/jsch/Channel;->i:I

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->k:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->l:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->m:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->n:Z

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->o:Z

    iput v3, p0, Lcom/jcraft/jsch/Channel;->p:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->q:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->r:I

    iput v2, p0, Lcom/jcraft/jsch/Channel;->s:I

    sget-object v1, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/jcraft/jsch/Channel;->a:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->a:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->b:I

    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .locals 4

    sget-object v2, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    monitor-exit v2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget v3, v0, Lcom/jcraft/jsch/Channel;->b:I

    if-ne v3, p0, :cond_1

    iget-object v3, v0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_1

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 1

    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    goto :goto_0

    :cond_3
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    goto :goto_0

    :cond_4
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    goto :goto_0

    :cond_5
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    goto :goto_0

    :cond_6
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    goto :goto_0

    :cond_7
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/jcraft/jsch/Channel;)V
    .locals 2

    sget-object v1, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Lcom/jcraft/jsch/Session;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [Lcom/jcraft/jsch/Channel;

    sget-object v5, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/jcraft/jsch/Channel;

    move v4, v3

    move v2, v3

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    :goto_1
    if-lt v0, v2, :cond_1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/Channel;->t:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Channel;

    iget-object v1, v0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p0, :cond_2

    add-int/lit8 v1, v2, 0x1

    :try_start_2
    aput-object v0, v6, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    aget-object v1, v6, v0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/Channel;->c:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->c:I

    return-void
.end method

.method declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/jcraft/jsch/Buffer;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->a(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->a(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->g(I)V

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method a([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->a([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->r:I

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x64

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->d:[B

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->b:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->f:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v4, p0, Lcom/jcraft/jsch/Channel;->g:I

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    const/16 v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v2, "session is down"

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->o:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->j()V

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v7

    sub-long/2addr v7, v3

    cmp-long v7, v7, v5

    if-lez v7, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-wide/16 v7, 0x32

    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    :try_start_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v2, "channel is not opened."

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v2, "channel is not opened."

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_7
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method b(Lcom/jcraft/jsch/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    return-void
.end method

.method b([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->b([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->b(I)V

    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->e:I

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method d(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->f:I

    return-void
.end method

.method public e()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    new-instance v2, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v2, p0, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;Z)V

    return-object v0
.end method

.method e(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->g:I

    return-void
.end method

.method f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->b()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method declared-synchronized f(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->h:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->h:J

    iget v0, p0, Lcom/jcraft/jsch/Channel;->s:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()V
    .locals 3

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method g(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->i:I

    return-void
.end method

.method h()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->n:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->m:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->l:Z

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method h(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->p:I

    return-void
.end method

.method protected i(I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const-string v2, "open failed"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    sget-object v2, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->n:Z

    return v0
.end method

.method public j()V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    if-nez v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->o:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->l:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->k:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->j:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->a(Lcom/jcraft/jsch/Channel;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public k()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jcraft/jsch/Channel;->o:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public l()Lcom/jcraft/jsch/Session;
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->u:Lcom/jcraft/jsch/Session;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "session is not available"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected m()V
    .locals 3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->b:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->f:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget v2, p0, Lcom/jcraft/jsch/Channel;->g:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
