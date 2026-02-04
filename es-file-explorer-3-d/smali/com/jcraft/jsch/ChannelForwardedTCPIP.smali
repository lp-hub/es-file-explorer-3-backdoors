.class public Lcom/jcraft/jsch/ChannelForwardedTCPIP;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field static t:Ljava/util/Vector;


# instance fields
.field u:Lcom/jcraft/jsch/SocketFactory;

.field v:Ljava/lang/String;

.field w:I

.field x:I

.field private y:Ljava/net/Socket;

.field private z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/high16 v1, 0x20000

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c(I)V

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->e(I)V

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->o:Z

    return-void
.end method

.method static a(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V
    .locals 5

    const/4 v1, 0x0

    sget-object v4, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    check-cast v0, [Ljava/lang/Object;

    move v3, v1

    :goto_0
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v3, v1, :cond_1

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_3

    monitor-exit v4

    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-eq v2, p0, :cond_2

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    if-nez p1, :cond_5

    const/4 v0, 0x4

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    if-nez v0, :cond_4

    const-string v0, "0.0.0.0"

    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :try_start_1
    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    const-string v3, "cancel-tcpip-forward"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move-object v0, p1

    goto :goto_3
.end method

.method static a(Lcom/jcraft/jsch/Session;I)[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    sget-object v3, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v3

    move v2, v0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    monitor-exit v3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eq v1, p0, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b(Lcom/jcraft/jsch/Session;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    return-void
.end method

.method static c(Lcom/jcraft/jsch/Session;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [I

    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [I

    move v4, v3

    move v2, v3

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_0

    monitor-exit v5

    move v0, v3

    :goto_1
    if-lt v0, v2, :cond_1

    return-void

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-ne v1, p0, :cond_2

    add-int/lit8 v1, v2, 0x1

    const/4 v7, 0x1

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v2

    move v0, v1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    aget v1, v6, v0

    invoke-static {p0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->b(Lcom/jcraft/jsch/Session;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method a(Lcom/jcraft/jsch/Buffer;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->d()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(J)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->g(I)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->c()I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->l()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    :goto_0
    sget-object v5, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    monitor-enter v5

    move v3, v1

    :goto_1
    :try_start_1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_1

    :cond_0
    :goto_2
    monitor-exit v5

    return-void

    :catch_0
    move-exception v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->t:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eq v1, v2, :cond_3

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    iput v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    aget-object v1, v0, v1

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    :goto_3
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    check-cast v0, Lcom/jcraft/jsch/SocketFactory;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    const/4 v1, 0x3

    :try_start_2
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 6

    const/4 v4, 0x1

    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    new-instance v2, Lcom/jcraft/jsch/Channel$PassiveInputStream;

    const v3, 0x8000

    invoke-direct {v2, p0, v0, v3}, Lcom/jcraft/jsch/Channel$PassiveInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;Z)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->e()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->a(Lcom/jcraft/jsch/ChannelForwardedTCPIP;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->x:I

    invoke-static {v0, v1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->a(Lcom/jcraft/jsch/Session;I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/ForwardedTCPIPDaemon;->a([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->z:Lcom/jcraft/jsch/ForwardedTCPIPDaemon;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->k:Ljava/lang/Thread;

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->i:I

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->k:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j()V

    :goto_3
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    iget v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->a(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->y:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->i(I)V

    iput-boolean v4, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j()V

    goto :goto_3

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->u:Lcom/jcraft/jsch/SocketFactory;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->v:Ljava/lang/String;

    iget v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->w:I

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SocketFactory;->a(Ljava/lang/String;I)Ljava/net/Socket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_4

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->j:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    const/16 v4, 0xe

    iget-object v5, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0xe

    add-int/lit8 v5, v5, -0x20

    add-int/lit8 v5, v5, -0x14

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->g()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->a()V

    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->n:Z

    if-nez v3, :cond_0

    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget v3, p0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->c:I

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->l()Lcom/jcraft/jsch/Session;

    move-result-object v3

    invoke-virtual {v3, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method
