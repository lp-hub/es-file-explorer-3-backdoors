.class final Lcom/estrongs/android/ui/e/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/m;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/m;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ca;->a:Lcom/estrongs/fs/b/m;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ca;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ca;->a:Lcom/estrongs/fs/b/m;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/m;->requestStop()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ca;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/e/cb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/cb;-><init>(Lcom/estrongs/android/ui/e/ca;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
