.class Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
.super Lcom/jcraft/jsch/HostKey;


# instance fields
.field d:[B

.field e:[B

.field final synthetic f:Lcom/jcraft/jsch/KnownHosts;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->f:Lcom/jcraft/jsch/KnownHosts;

    invoke-direct {p0, p2, p3, p4}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    iput-boolean v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    iput-object v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    iput-object v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->a:Ljava/lang/String;

    const-string v1, "|1|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->a:Ljava/lang/String;

    const-string v1, "|1|"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->a:Ljava/lang/String;

    const-string v1, "|1|"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/jcraft/jsch/Util;->a([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v3, v0}, Lcom/jcraft/jsch/Util;->a([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    array-length v0, v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    array-length v0, v0

    if-eq v0, v5, :cond_2

    :cond_0
    iput-object v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    iput-object v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    goto :goto_0
.end method

.method constructor <init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;I[B)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/HostKey;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->f:Lcom/jcraft/jsch/KnownHosts;

    invoke-static {v0}, Lcom/jcraft/jsch/KnownHosts;->a(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;

    move-result-object v2

    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/MAC;->a([B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lcom/jcraft/jsch/MAC;->a([BII)V

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/jcraft/jsch/MAC;->a([BI)V

    iget-object v3, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    invoke-static {v3, v0}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    return v0
.end method

.method e()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->f:Lcom/jcraft/jsch/KnownHosts;

    invoke-static {v0}, Lcom/jcraft/jsch/KnownHosts;->a(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;

    move-result-object v1

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    if-nez v0, :cond_1

    sget-object v2, Lcom/jcraft/jsch/Session;->f:Lcom/jcraft/jsch/Random;

    monitor-enter v2

    :try_start_0
    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    array-length v4, v4

    invoke-interface {v2, v0, v3, v4}, Lcom/jcraft/jsch/Random;->a([BII)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    invoke-interface {v1, v0}, Lcom/jcraft/jsch/MAC;->a([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/jcraft/jsch/MAC;->a([BII)V

    invoke-interface {v1}, Lcom/jcraft/jsch/MAC;->a()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/jcraft/jsch/MAC;->a([BI)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "|1|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->d:[B

    array-length v2, v2

    invoke-static {v1, v5, v2}, Lcom/jcraft/jsch/Util;->b([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->e:[B

    array-length v2, v2

    invoke-static {v1, v5, v2}, Lcom/jcraft/jsch/Util;->b([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
