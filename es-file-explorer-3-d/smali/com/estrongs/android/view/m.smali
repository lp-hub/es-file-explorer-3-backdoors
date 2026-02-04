.class Lcom/estrongs/android/view/m;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field final synthetic b:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/m;->a:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/m;->a:Z

    return-void
.end method

.method public run()V
    .locals 6

    const v5, 0x7f0b0235

    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    iget-object v2, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    iget-object v2, v2, Lcom/estrongs/android/view/e;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/h;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Lcom/estrongs/io/archive/h;)Lcom/estrongs/io/archive/h;

    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->d(Lcom/estrongs/android/view/e;)V

    iget-boolean v0, p0, Lcom/estrongs/android/view/m;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->e(Lcom/estrongs/android/view/e;)Lcom/estrongs/io/archive/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->b()V

    iget-boolean v0, p0, Lcom/estrongs/android/view/m;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    iget-object v2, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-static {v2}, Lcom/estrongs/android/view/e;->e(Lcom/estrongs/android/view/e;)Lcom/estrongs/io/archive/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/io/archive/h;->h()Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Ljava/io/File;)Ljava/io/File;

    iget-boolean v0, p0, Lcom/estrongs/android/view/m;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->f(Lcom/estrongs/android/view/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ArchiveFileGridViewWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open the archive file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v2, p0, Lcom/estrongs/android/view/m;->a:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "NOT_SUPPORTED_ENC_ALG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NOT_SUPPORTED_ENC_ALG"

    iget-object v3, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/view/e;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-static {v1}, Lcom/estrongs/android/view/e;->f(Lcom/estrongs/android/view/e;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-static {v2}, Lcom/estrongs/android/view/e;->f(Lcom/estrongs/android/view/e;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    const-string v2, "NOT_SUPPORTED_ENC_ALG_STRENGTH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "NOT_SUPPORTED_ENC_ALG"

    iget-object v3, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    const v4, 0x7f0b0236

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/e;->m(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "not a WinZip AES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/m;->b:Lcom/estrongs/android/view/e;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/e;->m(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
