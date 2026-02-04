.class Lcom/estrongs/fs/b/af;
.super Ljava/lang/Thread;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/estrongs/fs/b/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ae;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/fs/b/af;->c:Lcom/estrongs/fs/b/ae;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/estrongs/fs/b/af;->a:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/fs/b/af;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/af;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/a/b/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hostname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/af;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    new-instance v3, Ljava/net/InetSocketAddress;

    sget v4, Lcom/estrongs/a/b/d;->a:I

    invoke-direct {v3, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v1, 0x7d0

    invoke-virtual {v2, v3, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "connect timeout!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v4

    div-int/2addr v3, v4

    aget-object v2, v2, v3

    iget v3, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v4

    rem-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/fs/b/af;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/af;->c:Lcom/estrongs/fs/b/ae;

    invoke-static {v0}, Lcom/estrongs/fs/b/ae;->a(Lcom/estrongs/fs/b/ae;)J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    return-void

    :cond_0
    const/16 v1, 0x2710

    :try_start_2
    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET /hostname HTTP/1.1\r\nConnection: Keep-Alive\r\nAccept-Encoding: gzip\r\nUser-Agent: Dalvik\r\nHost: localhost\r\nContent-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "\r\n"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v4, Lcom/estrongs/a/b/d;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v4, "200 OK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    if-eqz v1, :cond_7

    :try_start_3
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v5

    div-int/2addr v4, v5

    aget-object v3, v3, v4

    iget v4, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v5

    rem-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/fs/b/af;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    :goto_3
    iget-object v1, p0, Lcom/estrongs/fs/b/af;->c:Lcom/estrongs/fs/b/ae;

    invoke-static {v1}, Lcom/estrongs/fs/b/ae;->a(Lcom/estrongs/fs/b/ae;)J

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    :cond_3
    const-string v5, "Server: ES Name Response Server"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_5

    :try_start_6
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v4

    div-int/2addr v3, v4

    aget-object v2, v2, v3

    iget v3, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v4

    rem-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/fs/b/af;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :goto_5
    iget-object v0, p0, Lcom/estrongs/fs/b/af;->c:Lcom/estrongs/fs/b/ae;

    invoke-static {v0}, Lcom/estrongs/fs/b/ae;->a(Lcom/estrongs/fs/b/ae;)J

    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_5
    :try_start_7
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v3

    div-int/2addr v2, v3

    aget-object v0, v0, v2

    iget v2, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x0

    aput-object v3, v0, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :cond_6
    :try_start_8
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v3

    div-int/2addr v2, v3

    aget-object v0, v0, v2

    iget v2, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v3

    rem-int/2addr v2, v3

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_7
    :try_start_9
    invoke-static {}, Lcom/estrongs/fs/b/ae;->a()[[Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v4

    div-int/2addr v3, v4

    aget-object v1, v1, v3

    iget v3, p0, Lcom/estrongs/fs/b/af;->b:I

    invoke-static {}, Lcom/estrongs/fs/b/ae;->b()I

    move-result v4

    rem-int/2addr v3, v4

    const/4 v4, 0x0

    aput-object v4, v1, v3

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2
.end method
