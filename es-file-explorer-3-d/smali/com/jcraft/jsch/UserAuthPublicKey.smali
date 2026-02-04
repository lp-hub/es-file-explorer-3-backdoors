.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .locals 13

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    iget-object v8, v0, Lcom/jcraft/jsch/JSch;->c:Ljava/util/Vector;

    move-object v0, v1

    check-cast v0, [B

    check-cast v1, [B

    monitor-enter v8

    :try_start_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_0

    monitor-exit v8

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v9

    move v7, v2

    move-object v1, v0

    :goto_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_2

    :cond_1
    monitor-exit v8

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v10, 0x32

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v9}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v10, "ssh-connection"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v10, "publickey"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v5}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iput-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v10, 0x3c

    if-ne v5, v10, :cond_6

    :cond_4
    const/16 v10, 0x3c

    if-eq v5, v10, :cond_7

    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_6
    const/16 v10, 0x33

    if-eq v5, v10, :cond_4

    const/16 v10, 0x35

    if-ne v5, v10, :cond_4

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v10, v5}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move v5, v6

    :cond_8
    :try_start_1
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v1, :cond_b

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-nez v10, :cond_9

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "USERAUTH fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Passphrase for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/jcraft/jsch/UserInfo;->b(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "publickey"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v10}, Lcom/jcraft/jsch/UserInfo;->b()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    :cond_b
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v10

    if-eqz v10, :cond_c

    if-eqz v1, :cond_f

    :cond_c
    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Identity;->a([B)Z

    move-result v10

    if-eqz v10, :cond_f

    :goto_3
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->c([B)V

    const/4 v1, 0x0

    check-cast v1, [B

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_d

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v4

    :cond_d
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v10, 0x32

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v9}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v10, "ssh-connection"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v10, "publickey"

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v5, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->a()[B

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v10, v5, 0x4

    iget-object v11, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget v11, v11, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x5

    new-array v10, v10, [B

    const/4 v11, 0x0

    ushr-int/lit8 v12, v5, 0x18

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x1

    ushr-int/lit8 v12, v5, 0x10

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x2

    ushr-int/lit8 v12, v5, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    const/4 v11, 0x3

    int-to-byte v12, v5

    aput-byte v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v4, v11, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v11, 0x5

    add-int/lit8 v5, v5, 0x4

    iget-object v12, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget v12, v12, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v12, v12, -0x5

    invoke-static {v4, v11, v10, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v10}, Lcom/jcraft/jsch/Identity;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x34

    if-ne v0, v4, :cond_10

    monitor-exit v8

    move v0, v3

    goto/16 :goto_0

    :cond_f
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->c([B)V

    const/4 v1, 0x0

    check-cast v1, [B

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_8

    goto/16 :goto_3

    :cond_10
    const/16 v4, 0x35

    if-ne v0, v4, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v4, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    const/16 v4, 0x33

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method
