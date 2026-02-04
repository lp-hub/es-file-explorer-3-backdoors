.class Lcom/estrongs/android/ui/pcs/ck;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/cj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ck;->a:Lcom/estrongs/android/ui/pcs/cj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ck;->a:Lcom/estrongs/android/ui/pcs/cj;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/cj;->a(Lcom/estrongs/android/ui/pcs/cj;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ck;->a:Lcom/estrongs/android/ui/pcs/cj;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/cj;->b(Lcom/estrongs/android/ui/pcs/cj;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ck;->a:Lcom/estrongs/android/ui/pcs/cj;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/cj;->b(Lcom/estrongs/android/ui/pcs/cj;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
