.class Lcom/estrongs/android/pop/app/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    check-cast p2, Lcom/estrongs/android/pop/app/q;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/q;->a()Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/ek;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->z()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->o()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/ek;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0, v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->b()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    iget-wide v1, v0, Lcom/estrongs/android/pop/app/a/ag;->a:J

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->d()V

    move-object v1, v0

    :goto_1
    move v2, v3

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/a/ag;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/estrongs/android/pop/app/a/aj;->a(Lcom/estrongs/android/pop/app/a/ag;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->b()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/a/ag;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->d()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;IZ)V

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v7, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/av;

    invoke-interface {v0, v6}, Lcom/estrongs/android/widget/av;->c(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)I

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)Z

    goto/16 :goto_3

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->n()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v7, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v7, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->h()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    move v0, v3

    :cond_c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v7, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v2, 0x7f0b0268

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/AudioPlayerService;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-void
.end method
