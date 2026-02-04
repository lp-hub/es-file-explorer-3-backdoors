.class public Lcom/estrongs/android/pop/app/editor/d;
.super Lcom/estrongs/android/pop/app/editor/a;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    const-string v0, "rw"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "r"

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a([BII)I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    const-string v0, "rw"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "r"

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "fail to open file."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/io/OutputStream;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
