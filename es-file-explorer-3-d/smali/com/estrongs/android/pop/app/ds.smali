.class Lcom/estrongs/android/pop/app/ds;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->j()I

    move-result v2

    if-gtz v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ei;->a()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/app/dt;

    invoke-direct {v2, p0, v0, v1}, Lcom/estrongs/android/pop/app/dt;-><init>(Lcom/estrongs/android/pop/app/ds;II)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/dt;->start()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()V

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/app/du;

    invoke-direct {v2, p0, v1, v0}, Lcom/estrongs/android/pop/app/du;-><init>(Lcom/estrongs/android/pop/app/ds;II)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/du;->start()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ds;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ds;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ds;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/dv;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/dv;-><init>(Lcom/estrongs/android/pop/app/ds;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/dv;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->p()I

    move-result v0

    int-to-long v0, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ei;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/estrongs/android/pop/app/ei;->a(I)V

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    int-to-long v0, v2

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ei;

    move-result-object v2

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/ei;->b(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ei;->a()V

    goto/16 :goto_1

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v2, 0x7f0b0261

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v2, 0x7f0b0262

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/v;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/az;

    move-result-object v0

    const-string v1, "playlist_edit"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b()V

    const-string v0, "playlist_edit"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/az;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/az;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/az;

    move-result-object v0

    const-string v1, "playlist"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/v;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/v;->getCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto/16 :goto_0

    :sswitch_a
    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->E()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/v;->a()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/ag;)Z

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_1
        0x8 -> :sswitch_6
        0x124f81 -> :sswitch_8
        0x124f82 -> :sswitch_9
        0x124f83 -> :sswitch_a
    .end sparse-switch
.end method
