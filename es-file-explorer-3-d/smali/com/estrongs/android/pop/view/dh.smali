.class Lcom/estrongs/android/pop/view/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/dg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F()V

    sget-boolean v0, Lcom/estrongs/android/pop/m;->M:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->b()V

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->S()Landroid/net/LocalSocket;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->az()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/di;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/di;-><init>(Lcom/estrongs/android/pop/view/dh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
