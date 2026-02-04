.class Lcom/estrongs/android/ui/e/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/e/ea;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ea;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/eb;->b:Lcom/estrongs/android/ui/e/ea;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/eb;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/eb;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->d(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/eb;->b:Lcom/estrongs/android/ui/e/ea;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ea;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/ec;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ec;-><init>(Lcom/estrongs/android/ui/e/eb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/netfs/NetFsException;->printStackTrace()V

    goto :goto_0
.end method
