.class Lcom/estrongs/android/ui/pcs/at;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/as;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/as;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0484

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/at;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/as;->a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
