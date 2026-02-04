.class Lcom/estrongs/android/pop/app/cv;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OpenRecomm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OpenRecomm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->d(Lcom/estrongs/android/pop/app/OpenRecomm;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->e(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->d(Lcom/estrongs/android/pop/app/OpenRecomm;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->d(Lcom/estrongs/android/pop/app/OpenRecomm;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->d(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->d(Lcom/estrongs/android/pop/app/OpenRecomm;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->c(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->d(Lcom/estrongs/android/pop/app/OpenRecomm;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->d(Lcom/estrongs/android/pop/app/OpenRecomm;)Lcom/estrongs/android/ui/view/RecommendListView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->a(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/OpenRecomm;->a(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/OpenRecomm;->a(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/OpenRecomm;->a(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;

    move-result-object v3

    aget-object v4, v2, v1

    iget-object v4, v4, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/estrongs/android/pop/view/utils/t;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/OpenRecomm;->b(Lcom/estrongs/android/pop/app/OpenRecomm;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/OpenRecomm;->c(Lcom/estrongs/android/pop/app/OpenRecomm;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    new-instance v5, Lcom/estrongs/android/pop/view/utils/u;

    aget-object v6, v2, v1

    iget-object v6, v6, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    aget-object v7, v2, v1

    iget-object v7, v7, Lcom/estrongs/android/pop/view/utils/t;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/estrongs/android/pop/view/utils/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3, v5}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/utils/u;)V

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/OpenRecomm;->a(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/OpenRecomm;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cv;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1e241
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
