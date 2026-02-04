.class Lcom/estrongs/android/ui/a/bm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/a/bl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/bl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/a/bm;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/bm;->a:Z

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iget v1, v1, Lcom/estrongs/android/ui/a/bl;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iget v1, v1, Lcom/estrongs/android/ui/a/bl;->b:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->e(Lcom/estrongs/android/ui/a/s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iget v1, v1, Lcom/estrongs/android/ui/a/bl;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iget v1, v1, Lcom/estrongs/android/ui/a/bl;->b:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bm;->b:Lcom/estrongs/android/ui/a/bl;

    iget-object v1, v1, Lcom/estrongs/android/ui/a/bl;->d:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->e(Lcom/estrongs/android/ui/a/s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
