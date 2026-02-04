.class Lcom/estrongs/fs/b/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/ao;->a:Lcom/estrongs/fs/b/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->x()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/fs/b/ap;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/ap;-><init>(Lcom/estrongs/fs/b/ao;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/e;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->x()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/b/aq;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/aq;-><init>(Lcom/estrongs/fs/b/ao;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/a/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->a:Lcom/estrongs/fs/b/ah;

    invoke-static {v1}, Lcom/estrongs/fs/b/ah;->b(Lcom/estrongs/fs/b/ah;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0044

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/e;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->a:Lcom/estrongs/fs/b/ah;

    invoke-static {v2}, Lcom/estrongs/fs/b/ah;->b(Lcom/estrongs/fs/b/ah;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b01dd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/ao;->a:Lcom/estrongs/fs/b/ah;

    invoke-static {v2}, Lcom/estrongs/fs/b/ah;->e(Lcom/estrongs/fs/b/ah;)Lcom/estrongs/a/a/e;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/e;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/e;->show()V

    goto :goto_0
.end method
