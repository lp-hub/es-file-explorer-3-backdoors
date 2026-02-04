.class Lcom/estrongs/android/pop/view/bk;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/fs/d;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/view/bk;->c:Z

    iput-object p5, p0, Lcom/estrongs/android/pop/view/bk;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v5, 0x7f0b01b1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b01e4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/bk;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0222

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/view/bk;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v3, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->e:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
