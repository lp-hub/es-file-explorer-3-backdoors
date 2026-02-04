.class public Lcom/estrongs/android/pop/app/editor/am;
.super Lcom/estrongs/android/pop/app/editor/a;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/Object;[BII)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public a()J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/Object;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->i(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/Object;JI)J

    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/impl/local/NativeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/local/NativeException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/estrongs/fs/c;->e:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->j(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->e(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/estrongs/fs/c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/am;->b:Ljava/lang/String;

    return-object v0
.end method
