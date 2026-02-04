.class Lcom/jcraft/jsch/IdentityFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Identity;


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:[B

.field private d:Lcom/jcraft/jsch/HASH;

.field private e:[B

.field private f:Lcom/jcraft/jsch/Cipher;

.field private g:[B

.field private h:[B

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:I

.field private p:I

.field private q:[B

.field private r:Z


# virtual methods
.method public a([B)Z
    .locals 10

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->b()I

    move-result v6

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v0, v0

    div-int/2addr v0, v6

    mul-int v4, v0, v6

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v0, v0

    rem-int/2addr v0, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    new-array v7, v0, [B

    const/4 v0, 0x0

    check-cast v0, [B

    iget v4, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-nez v4, :cond_7

    move v4, v1

    :goto_2
    add-int v5, v4, v6

    array-length v8, v7

    if-le v5, v8, :cond_4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v5, v5

    invoke-static {v7, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:Z

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-interface {v5, v0, v8, v9}, Lcom/jcraft/jsch/HASH;->a([BII)V

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x0

    array-length v8, p1

    invoke-interface {v0, p1, v5, v8}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    iget-object v8, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v0, v0

    if-le v0, v3, :cond_6

    move v0, v3

    :goto_4
    invoke-interface {v5, v8, v9, v0}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    invoke-interface {v0}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v5

    const/4 v0, 0x0

    array-length v8, v5

    invoke-static {v5, v0, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    add-int/2addr v0, v4

    move v4, v0

    move-object v0, v5

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v0, v0

    goto :goto_4

    :cond_7
    iget v3, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-ne v3, v2, :cond_1

    move-object v3, v0

    move v0, v1

    :goto_5
    add-int v4, v0, v6

    array-length v5, v7

    if-le v4, v5, :cond_8

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    array-length v5, v5

    invoke-static {v7, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    :cond_8
    if-eqz v3, :cond_9

    :try_start_1
    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x0

    array-length v8, v3

    invoke-interface {v4, v3, v5, v8}, Lcom/jcraft/jsch/HASH;->a([BII)V

    :cond_9
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-interface {v3, p1, v4, v5}, Lcom/jcraft/jsch/HASH;->a([BII)V

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->d:Lcom/jcraft/jsch/HASH;

    invoke-interface {v3}, Lcom/jcraft/jsch/HASH;->c()[B

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    add-int/2addr v0, v4

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a()[B
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->q:[B

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->e()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->f()[B

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ssh-rsa"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ssh-dss"

    goto :goto_0
.end method

.method public b([B)[B
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IdentityFile;->c([B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IdentityFile;->d([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->a:Ljava/lang/String;

    return-object v0
.end method

.method c([B)[B
    .locals 4

    :try_start_0
    const-string v0, "signature.rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->b([B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureRSA;->a([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureRSA;->b()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-rsa"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v2, "ssh-rsa"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:Z

    return v0
.end method

.method d([B)[B
    .locals 5

    :try_start_0
    const-string v0, "signature.dss"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->a()V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/SignatureDSA;->b([B[B[B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/SignatureDSA;->a([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/SignatureDSA;->b()[B

    move-result-object v0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-dss"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    array-length v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v2, "ssh-dss"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->b:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const-string v1, "ssh-rsa"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v1, "ssh-rsa"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const-string v1, "ssh-dss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const-string v1, "ssh-dss"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->b:[B

    goto :goto_0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->j()V

    return-void
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/IdentityFile;->i()Z

    move-result v0

    goto :goto_0
.end method

.method h()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :goto_0
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-ne v0, v7, :cond_6

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    array-length v2, v4

    add-int/lit8 v1, v1, 0x4

    if-eq v2, v1, :cond_5

    move v0, v6

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-ne v0, v7, :cond_2

    move v0, v6

    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    if-eqz v0, :cond_4

    move v0, v7

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move v0, v7

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    move v0, v6

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1c

    and-int/lit8 v0, v0, 0x7f

    move v1, v0

    move v3, v6

    move v0, v8

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_8

    :goto_4
    aget-byte v1, v4, v0

    if-eq v1, v8, :cond_9

    move v0, v6

    goto :goto_1

    :cond_8
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v3

    move v3, v0

    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_a

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_5
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_13

    :cond_a
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_b

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_6
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_14

    :cond_b
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->l:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_c

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_7
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_15

    :cond_c
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->m:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_d

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_8
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_16

    :cond_d
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_e

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_9
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_17

    :cond_e
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_f

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_a
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_18

    :cond_f
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_10

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_b
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_19

    :cond_10
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_11

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_c
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_1a

    :cond_11
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_12

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_d
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_1b

    :cond_12
    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    move v0, v7

    goto/16 :goto_1

    :cond_13
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_5

    :cond_14
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_6

    :cond_15
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_7

    :cond_16
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_8

    :cond_17
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_9

    :cond_18
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_a

    :cond_19
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_b

    :cond_1a
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_c

    :cond_1b
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_d

    :cond_1c
    move v0, v8

    goto/16 :goto_4
.end method

.method i()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityFile;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    :goto_0
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-ne v0, v7, :cond_6

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v1

    array-length v2, v4

    add-int/lit8 v1, v1, 0x4

    if-eq v2, v1, :cond_5

    move v0, v6

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/IdentityFile;->p:I

    if-ne v0, v7, :cond_2

    move v0, v6

    :goto_2
    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/jcraft/jsch/Cipher;->a(I[B[B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v0, v0

    new-array v4, v0, [B

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->f:Lcom/jcraft/jsch/Cipher;

    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->a([BII[BI)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    if-eqz v0, :cond_4

    move v0, v7

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->h()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    move v0, v7

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    move v0, v6

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_16

    and-int/lit8 v0, v0, 0x7f

    move v1, v0

    move v3, v6

    move v0, v8

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_8

    :goto_4
    aget-byte v1, v4, v0

    if-eq v1, v8, :cond_9

    move v0, v6

    goto :goto_1

    :cond_8
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v3

    move v3, v0

    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_a

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_5
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_10

    :cond_a
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_b

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_6
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_11

    :cond_b
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->g:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_c

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_7
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_12

    :cond_c
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->h:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_d

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_8
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_13

    :cond_d
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->i:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_e

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_9
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_14

    :cond_e
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->j:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_f

    and-int/lit8 v0, v0, 0x7f

    move v2, v0

    move v0, v6

    :goto_a
    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_15

    :cond_f
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    move v0, v7

    goto/16 :goto_1

    :cond_10
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_5

    :cond_11
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_6

    :cond_12
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_7

    :cond_13
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_8

    :cond_14
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_9

    :cond_15
    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    move v1, v2

    move v2, v3

    goto :goto_a

    :cond_16
    move v0, v8

    goto/16 :goto_4
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->e:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->k:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->n:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->b:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityFile;->c:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    return-void
.end method
