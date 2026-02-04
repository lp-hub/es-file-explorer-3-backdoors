.class Lcom/estrongs/android/ui/b/fh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->k(Lcom/estrongs/android/ui/b/ew;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->k(Lcom/estrongs/android/ui/b/ew;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/a/a;->waitingDecision:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->j(Lcom/estrongs/android/ui/b/ew;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->n(Lcom/estrongs/android/ui/b/ew;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->n(Lcom/estrongs/android/ui/b/ew;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/fh;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method
