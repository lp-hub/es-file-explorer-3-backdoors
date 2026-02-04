.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;


# instance fields
.field private final A:I

.field private final B:I

.field private C:Lcom/jcraft/jsch/Buffer;

.field private D:Lcom/jcraft/jsch/Buffer;

.field private E:Lcom/jcraft/jsch/Packet;

.field private F:Lcom/jcraft/jsch/Buffer;

.field t:Z

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method constructor <init>()V
    .locals 4

    const/high16 v3, 0x20000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->u:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->v:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->w:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->x:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->y:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->z:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->A:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->B:I

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->t:Z

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->c(I)V

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->d(I)V

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->e(I)V

    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->d:[B

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->o:Z

    return-void
.end method

.method private a([B)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->c:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->l()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a([BII)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->i:I

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->D:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->E:Lcom/jcraft/jsch/Packet;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->k()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v3, p3

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->b:[B

    array-length v4, v4

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v3

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    iget v1, v0, Lcom/jcraft/jsch/Buffer;->d:I

    add-int/lit8 v1, v1, -0x4

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->l()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-object v4, v3, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    iget-object v4, v4, Lcom/jcraft/jsch/JSch;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->c()Lcom/jcraft/jsch/UserInfo;

    move-result-object v3

    const/16 v5, 0xb

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->j()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    monitor-enter v4

    move v3, v2

    move v1, v2

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->a([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :try_start_2
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v0

    if-eqz v0, :cond_10

    add-int/lit8 v0, v1, 0x1

    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v0

    if-nez v0, :cond_6

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    sget-object v1, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    const/16 v5, 0xd

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->C:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    monitor-enter v4

    :goto_5
    :try_start_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_9

    move-object v2, v1

    :goto_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    check-cast v0, [B

    if-eqz v2, :cond_8

    invoke-interface {v2, v6}, Lcom/jcraft/jsch/Identity;->b([B)[B

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->j()V

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->a(B)V

    :goto_7
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->d([B)V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->a([B)V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v7

    if-nez v7, :cond_b

    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_b
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v7

    invoke-static {v5, v7}, Lcom/jcraft/jsch/Util;->b([B[B)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v3, :cond_a

    :cond_c
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_d
    :goto_8
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v7

    if-nez v7, :cond_a

    move-object v2, v0

    goto :goto_6

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Passphrase for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/jcraft/jsch/UserInfo;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Lcom/jcraft/jsch/UserInfo;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    :try_start_5
    invoke-interface {v0, v7}, Lcom/jcraft/jsch/Identity;->a([B)Z
    :try_end_5
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_f
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->F:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    goto :goto_7

    :catch_1
    move-exception v7

    goto :goto_8

    :cond_10
    move v0, v1

    goto/16 :goto_3
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->n:Z

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->j()V

    goto :goto_0
.end method
