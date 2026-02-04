.class Lcom/estrongs/android/pop/app/ho;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommAcitivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a([Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->c(Lcom/estrongs/android/pop/app/RecommAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->c(Lcom/estrongs/android/pop/app/RecommAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ho;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1e241
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
