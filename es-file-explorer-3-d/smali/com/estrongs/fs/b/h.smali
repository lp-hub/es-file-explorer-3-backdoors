.class public Lcom/estrongs/fs/b/h;
.super Lcom/estrongs/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/h;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/h;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public task()Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f0b0197

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/h;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/h;->onProgress(Lcom/estrongs/a/a/i;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/c/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method
