.class Lcom/estrongs/android/ui/h/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/h/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/h/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v3}, Lcom/estrongs/android/ui/h/h;->a(Lcom/estrongs/android/ui/h/h;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    iget-object v3, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v3}, Lcom/estrongs/android/ui/h/h;->b(Lcom/estrongs/android/ui/h/h;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v2}, Lcom/estrongs/android/ui/h/h;->c(Lcom/estrongs/android/ui/h/h;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/h/h;->c(Lcom/estrongs/android/ui/h/h;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/h;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->d(Lcom/estrongs/android/ui/h/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/h/i;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->e(Lcom/estrongs/android/ui/h/h;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0468

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
