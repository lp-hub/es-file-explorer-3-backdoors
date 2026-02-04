.class Lcom/estrongs/fs/impl/pcs/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/impl/pcs/e;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/pcs/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/pcs/f;->a:Lcom/estrongs/fs/impl/pcs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/impl/pcs/g;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/impl/pcs/g;-><init>(Lcom/estrongs/fs/impl/pcs/f;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
