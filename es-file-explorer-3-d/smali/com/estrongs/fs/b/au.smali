.class Lcom/estrongs/fs/b/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/at;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/at;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    iget-object v1, v1, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/fs/b/av;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/fs/b/av;-><init>(Lcom/estrongs/fs/b/au;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/at;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    iget-object v0, v0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/fs/b/aw;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/fs/b/aw;-><init>(Lcom/estrongs/fs/b/au;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/estrongs/fs/b/au;->a:Lcom/estrongs/fs/b/at;

    iget-object v1, v1, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/fs/b/ax;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/fs/b/ax;-><init>(Lcom/estrongs/fs/b/au;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
