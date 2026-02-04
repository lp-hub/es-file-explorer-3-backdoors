.class Lcom/estrongs/android/ui/pcs/bj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bj;->a:Lcom/estrongs/android/ui/pcs/bi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bj;->a:Lcom/estrongs/android/ui/pcs/bi;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->n(Lcom/estrongs/android/ui/pcs/bb;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bj;->a:Lcom/estrongs/android/ui/pcs/bi;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/bi;->a(Lcom/estrongs/android/ui/pcs/bi;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bj;->a:Lcom/estrongs/android/ui/pcs/bi;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/bi;->b(Lcom/estrongs/android/ui/pcs/bi;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bj;->a:Lcom/estrongs/android/ui/pcs/bi;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/bi;->c(Lcom/estrongs/android/ui/pcs/bi;ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
