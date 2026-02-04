.class Lcom/estrongs/android/widget/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    iput-object p2, p0, Lcom/estrongs/android/widget/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    iget-object v2, p0, Lcom/estrongs/android/widget/j;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/estrongs/android/widget/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->b(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/view/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    iget-object v2, v2, Lcom/estrongs/android/widget/g;->b:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v4}, Lcom/estrongs/android/widget/g;->b(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/view/ar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/view/ar;->Q()Lcom/estrongs/fs/d;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/estrongs/fs/c/d;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/fs/d;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0b01b1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v1}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/widget/k;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/widget/k;-><init>(Lcom/estrongs/android/widget/j;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    instance-of v2, v0, Lcom/estrongs/fs/FileExistException;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v3}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b01b1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v1}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/widget/k;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/widget/k;-><init>(Lcom/estrongs/android/widget/j;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v3}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b01b1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/widget/j;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v2}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/widget/k;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/widget/k;-><init>(Lcom/estrongs/android/widget/j;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    throw v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method
