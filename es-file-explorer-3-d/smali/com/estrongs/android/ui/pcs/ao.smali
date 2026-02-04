.class Lcom/estrongs/android/ui/pcs/ao;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/estrongs/android/ui/pcs/an;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/estrongs/android/ui/pcs/an;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/an;->c:Lcom/estrongs/android/ui/pcs/x;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/estrongs/android/ui/pcs/an;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/estrongs/android/ui/pcs/an;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/an;->b(Lcom/estrongs/android/ui/pcs/an;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/estrongs/android/ui/pcs/an;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/an;->a(Lcom/estrongs/android/ui/pcs/an;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
