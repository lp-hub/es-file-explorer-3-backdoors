.class Lcom/jcraft/jsch/PortWatcher;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static f:Ljava/util/Vector;

.field private static g:Ljava/net/InetAddress;


# instance fields
.field a:Lcom/jcraft/jsch/Session;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field e:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/InetAddress;

    :try_start_0
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->g:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Lcom/jcraft/jsch/Session;)V
    .locals 7

    const/4 v3, 0x0

    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v6, v0, [Lcom/jcraft/jsch/PortWatcher;

    move v4, v3

    move v2, v3

    :goto_0
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v4, v0, :cond_0

    move v0, v3

    :goto_1
    if-lt v0, v2, :cond_1

    monitor-exit v5

    return-void

    :cond_0
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/PortWatcher;

    iget-object v1, v0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    if-ne v1, p0, :cond_2

    invoke-virtual {v0}, Lcom/jcraft/jsch/PortWatcher;->a()V

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v6, v2

    move v0, v1

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v2, v0

    goto :goto_0

    :cond_1
    aget-object v1, v6, v0

    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->f:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/Runnable;

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    iput-object p0, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/Runnable;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->d:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/PortWatcher;->a()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b()V

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->a(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Channel;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/jcraft/jsch/PortWatcher;->b:I

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->j(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->k(I)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->c()V

    iget v0, v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;->p:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
