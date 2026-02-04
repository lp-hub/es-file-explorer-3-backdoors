.class Lcom/estrongs/android/pop/view/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/f;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/f;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/f;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/f;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->d()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/f;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->f()V

    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->g()V

    :goto_0
    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->d()V

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/c/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/RemoteSynchronizer;->e()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/estrongs/android/util/ax;->c()Lcom/estrongs/android/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ax;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
