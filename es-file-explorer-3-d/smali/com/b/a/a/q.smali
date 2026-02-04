.class public Lcom/b/a/a/q;
.super Lcom/b/a/a/p;

# interfaces
.implements Lcom/b/a/a/l;
.implements Lcom/b/a/a/o;


# direct methods
.method protected constructor <init>(Lcom/b/a/a/s;Lcom/b/a/a/j;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/p;-><init>(Lcom/b/a/a/s;Lcom/b/a/a/j;)V

    if-eqz p3, :cond_0

    iput-boolean v0, p0, Lcom/b/a/a/q;->g:Z

    iput-boolean v0, p0, Lcom/b/a/a/q;->f:Z

    :cond_0
    new-instance v0, Lcom/b/a/a/m;

    invoke-direct {v0, p0}, Lcom/b/a/a/m;-><init>(Lcom/b/a/a/k;)V

    iput-object v0, p0, Lcom/b/a/a/q;->l:Lcom/b/a/a/m;

    invoke-virtual {p0, p2, p3}, Lcom/b/a/a/q;->a(Lb/b/c;Z)V

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/q;->f:Z

    iput-boolean v0, p0, Lcom/b/a/a/q;->g:Z

    iput-boolean v0, p0, Lcom/b/a/a/q;->e:Z

    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/s;->a(ILcom/b/a/a/j;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    iget-boolean v0, p0, Lcom/b/a/a/q;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/b/a/a/q;->m:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/q;->m:Z

    iget-object v0, p0, Lcom/b/a/a/q;->l:Lcom/b/a/a/m;

    return-object v0
.end method

.method public a(Lcom/b/a/a/m;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/b/a/a/q;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/q;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/q;->l:Lcom/b/a/a/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/b/a/a/m;->a([BZ)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "server operation reply continue"

    invoke-static {v0}, Lcom/b/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/s;->a(ILcom/b/a/a/j;)V

    iput-object v3, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    invoke-virtual {p0}, Lcom/b/a/a/q;->f()Z

    goto :goto_0
.end method

.method public a(Z[B)V
    .locals 4

    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    iget-boolean v0, v0, Lcom/b/a/a/s;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/q;->f()Z

    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    iget-boolean v0, v0, Lcom/b/a/a/s;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client not requesting data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/b/a/a/t;->c()Lcom/b/a/a/j;

    move-result-object v2

    const/16 v0, 0x90

    const/16 v1, 0x48

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/b/a/a/q;->e:Z

    if-eqz v1, :cond_1

    const/16 v0, 0xa0

    :cond_1
    const/16 v1, 0x49

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    invoke-virtual {v2, v0, p2}, Lcom/b/a/a/j;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    invoke-static {v2, v0}, Lcom/b/a/a/j;->a(Lb/b/c;Lb/b/c;)Lb/b/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/s;->a(ILcom/b/a/a/j;)V

    iget-boolean v0, p0, Lcom/b/a/a/q;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/b/a/a/q;->f()Z

    :cond_3
    return-void

    :cond_4
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic b()Ljava/io/DataInputStream;
    .locals 1

    invoke-super {p0}, Lcom/b/a/a/p;->b()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lb/b/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/b/a/a/p;->b(Lb/b/c;)V

    return-void
.end method

.method public c()Ljava/io/OutputStream;
    .locals 3

    iget-boolean v0, p0, Lcom/b/a/a/q;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/q;->j:Lcom/b/a/a/n;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/q;->g:Z

    new-instance v0, Lcom/b/a/a/n;

    iget-object v1, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    iget v1, v1, Lcom/b/a/a/s;->d:I

    invoke-direct {v0, v1, p0}, Lcom/b/a/a/n;-><init>(ILcom/b/a/a/l;)V

    iput-object v0, p0, Lcom/b/a/a/q;->j:Lcom/b/a/a/n;

    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    const/16 v1, 0x90

    iget-object v2, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/s;->a(ILcom/b/a/a/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/q;->c:Lcom/b/a/a/j;

    iget-object v0, p0, Lcom/b/a/a/q;->j:Lcom/b/a/a/n;

    return-object v0
.end method

.method public bridge synthetic d()Ljava/io/DataOutputStream;
    .locals 1

    invoke-super {p0}, Lcom/b/a/a/p;->d()Ljava/io/DataOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/q;->j:Lcom/b/a/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/q;->j:Lcom/b/a/a/n;

    invoke-virtual {v0}, Lcom/b/a/a/n;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/q;->j:Lcom/b/a/a/n;

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/q;->l:Lcom/b/a/a/m;

    invoke-virtual {v0}, Lcom/b/a/a/m;->close()V

    invoke-super {p0}, Lcom/b/a/a/p;->e()V

    return-void
.end method

.method protected f()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    invoke-virtual {v0}, Lcom/b/a/a/s;->f()[B

    move-result-object v3

    aget-byte v0, v3, v2

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const-string v5, "server operation got final packet"

    invoke-static {v5}, Lcom/b/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/b/a/a/q;->f:Z

    :cond_0
    sparse-switch v4, :sswitch_data_0

    iput-boolean v1, p0, Lcom/b/a/a/q;->h:Z

    const-string v1, "server operation invalid request"

    invoke-static {v4}, Lcom/b/a/a/v;->c(I)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v4

    invoke-static {v1, v2, v3, v4}, Lcom/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/b/a/a/q;->a:Lcom/b/a/a/s;

    const/16 v2, 0xc0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/s;->a(ILcom/b/a/a/j;)V

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/b/a/a/q;->g:Z

    :cond_2
    aget-byte v1, v3, v2

    const/4 v2, 0x3

    invoke-static {v1, v3, v2}, Lcom/b/a/a/j;->a(B[BI)Lcom/b/a/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/q;->b:Lb/b/c;

    invoke-static {v2, v1}, Lcom/b/a/a/j;->a(Lb/b/c;Lb/b/c;)Lb/b/c;

    invoke-virtual {p0, v1, v0}, Lcom/b/a/a/q;->a(Lb/b/c;Z)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/b/a/a/q;->g()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x83 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic h()Lb/b/c;
    .locals 1

    invoke-super {p0}, Lcom/b/a/a/p;->h()Lb/b/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()I
    .locals 1

    invoke-super {p0}, Lcom/b/a/a/p;->i()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, Lcom/b/a/a/p;->j()Z

    move-result v0

    return v0
.end method
