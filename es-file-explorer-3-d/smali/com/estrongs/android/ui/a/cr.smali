.class Lcom/estrongs/android/ui/a/cr;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cr;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, v2, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cr;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/a/cp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cr;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/cp;->c()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
