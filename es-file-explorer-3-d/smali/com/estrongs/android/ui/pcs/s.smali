.class Lcom/estrongs/android/ui/pcs/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/d;->l(Lcom/estrongs/android/ui/pcs/d;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/d;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->m(Lcom/estrongs/android/ui/pcs/d;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/s;->a:Lcom/estrongs/android/ui/pcs/d;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_2

    :goto_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/estrongs/android/ui/pcs/d;->b(Lcom/estrongs/android/ui/pcs/d;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
