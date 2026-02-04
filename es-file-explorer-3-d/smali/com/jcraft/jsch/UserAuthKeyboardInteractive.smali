.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
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

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    const/16 v2, 0x16

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/jcraft/jsch/Session;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p1, Lcom/jcraft/jsch/Session;->n:[B

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    move v0, v2

    move-object v2, v3

    :goto_1
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const-string v4, "ssh-connection"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const-string v4, "keyboard-interactive"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x1

    move v7, v0

    move-object v8, v2

    move v0, v3

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x34

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x35

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/16 v3, 0x33

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x3c

    if-ne v2, v0, :cond_11

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v11

    new-array v4, v11, [Ljava/lang/String;

    new-array v5, v11, [Z

    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-lt v6, v11, :cond_a

    const/4 v0, 0x0

    move-object v6, v0

    check-cast v6, [[B

    if-eqz v8, :cond_c

    array-length v0, v4

    const/4 v12, 0x1

    if-ne v0, v12, :cond_c

    const/4 v0, 0x0

    aget-boolean v0, v5, v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v12, "password:"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    new-array v6, v0, [[B

    const/4 v0, 0x0

    aput-object v8, v6, v0

    const/4 v0, 0x0

    check-cast v0, [B

    move-object v8, v0

    :cond_7
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    if-lez v11, :cond_10

    if-eqz v6, :cond_8

    array-length v0, v6

    if-eq v11, v0, :cond_10

    :cond_8
    if-nez v6, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v11, :cond_e

    :goto_5
    if-nez v6, :cond_9

    const/4 v7, 0x1

    :cond_9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v9

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_6
    aput-boolean v0, v5, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    if-gtz v11, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    :cond_d
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    check-cast v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/UIKeyboardInteractive;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    array-length v0, v2

    new-array v6, v0, [[B

    const/4 v0, 0x0

    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_7

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v3, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v11, :cond_9

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    aget-object v3, v6, v0

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v7, :cond_13

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "keyboard-interactive"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move v0, v7

    move-object v2, v8

    goto/16 :goto_1
.end method
