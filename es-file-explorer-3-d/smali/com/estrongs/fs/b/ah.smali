.class public Lcom/estrongs/fs/b/ah;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/net/Socket;

.field private e:J

.field private f:Landroid/app/Activity;

.field private g:Lcom/estrongs/fs/b/as;

.field private h:Lcom/estrongs/a/a/e;

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/b/as;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Lcom/estrongs/a/a/e;

    invoke-direct {v0}, Lcom/estrongs/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ah;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ah;->j:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ah;->a:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    iget-object v0, p2, Lcom/estrongs/fs/b/as;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/estrongs/fs/b/as;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/estrongs/fs/b/as;->j:Ljava/net/Socket;

    iput-object v0, p0, Lcom/estrongs/fs/b/ah;->d:Ljava/net/Socket;

    iget-wide v0, p2, Lcom/estrongs/fs/b/as;->e:J

    iput-wide v0, p0, Lcom/estrongs/fs/b/ah;->e:J

    iput-object p2, p0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ah;->canRestart:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ah;->canPause:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/fs/b/ah;->task_type:I

    iput-boolean p3, p0, Lcom/estrongs/fs/b/ah;->i:Z

    invoke-direct {p0}, Lcom/estrongs/fs/b/ah;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ah;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/Object;Z)Lcom/estrongs/fs/b/ah;
    .locals 3

    check-cast p1, Lcom/estrongs/fs/b/as;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/fs/b/as;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/b/ah;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/estrongs/fs/b/ah;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/b/as;Z)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p0}, Lcom/estrongs/fs/b/ah;->a(Landroid/app/Activity;)Lcom/estrongs/fs/b/ar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/ar;->a(Z)Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ar;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ah;->execute()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/fs/b/ah;->execute()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ah;)Lcom/estrongs/fs/b/as;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ah;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/ah;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/fs/b/ah;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/fs/b/ah;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/fs/b/ah;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/fs/b/ah;)Lcom/estrongs/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    return-object v0
.end method

.method private e()V
    .locals 3

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/ah;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_selected_count"

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget v1, v1, Lcom/estrongs/fs/b/as;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget-object v1, v1, Lcom/estrongs/fs/b/as;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "target"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "size"

    iget-wide v1, p0, Lcom/estrongs/fs/b/ah;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ah;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)Lcom/estrongs/fs/b/ar;
    .locals 2

    new-instance v0, Lcom/estrongs/fs/b/ar;

    const v1, 0x7f0b0076

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/estrongs/fs/b/ar;-><init>(Lcom/estrongs/fs/b/ah;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget v1, v1, Lcom/estrongs/fs/b/as;->c:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget v1, v1, Lcom/estrongs/fs/b/as;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/fs/b/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/ao;-><init>(Lcom/estrongs/fs/b/ah;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->h:J

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->e:J

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ah;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    iget-object v2, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->f:J

    long-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/estrongs/a/a/i;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ah;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public task()Z
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting for recving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/ah;->onProgress(Lcom/estrongs/a/a/i;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget-wide v3, v3, Lcom/estrongs/fs/b/as;->e:J

    iput-wide v3, v2, Lcom/estrongs/a/a/i;->e:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget-object v3, v3, Lcom/estrongs/fs/b/as;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget v2, v2, Lcom/estrongs/fs/b/as;->c:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    iget-object v4, v3, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget v3, v3, Lcom/estrongs/fs/b/as;->d:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/estrongs/a/a/i;->c:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/estrongs/a/a/i;->d:J

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->d:Ljava/net/Socket;

    const v4, 0xf4240

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/fs/b/ah;->a:Ljava/lang/Long;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x2

    move v4, v2

    :goto_1
    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->g:Lcom/estrongs/fs/b/as;

    iget-boolean v2, v2, Lcom/estrongs/fs/b/as;->k:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/ah;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->L()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/fs/b/ai;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/fs/b/ai;-><init>(Lcom/estrongs/fs/b/ah;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_3
    if-nez v4, :cond_16

    const/4 v2, 0x1

    :goto_4
    return v2

    :catch_0
    move-exception v2

    const/16 v3, 0x2710

    new-instance v4, Lcom/estrongs/a/q;

    const-string v5, "Sender disconnected."

    invoke-direct {v4, v5, v2}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/fs/b/ah;->setTaskResult(ILjava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/estrongs/fs/b/ah;->i:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/estrongs/fs/b/ah;->j:Z

    if-nez v5, :cond_4

    const-wide/16 v5, 0xc8

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "OVER"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v9

    goto :goto_1

    :cond_5
    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "folder"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x2f

    invoke-virtual {v13, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_6

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_7
    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    monitor-enter v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v4, :cond_17

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/a/a/e;->a:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/fs/b/ah;->d()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    iget-boolean v4, v2, Lcom/estrongs/a/a/e;->f:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/fs/b/ah;->h:Lcom/estrongs/a/a/e;

    iget v2, v2, Lcom/estrongs/a/a/e;->g:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    const/4 v2, 0x1

    :goto_5
    move v10, v2

    move v11, v4

    :goto_6
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v2, 0x4000

    new-array v14, v2, [B

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    const-wide/16 v4, 0x0

    :goto_7
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v9, 0x2

    move v2, v9

    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/ah;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v6, Lcom/estrongs/a/a/i;->d:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/estrongs/a/a/i;->d:J

    if-eqz v2, :cond_f

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move v4, v2

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    if-nez v10, :cond_a

    if-nez v6, :cond_a

    :try_start_8
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    :cond_a
    cmp-long v2, v4, v15

    if-ltz v2, :cond_b

    invoke-static {v12}, Lcom/estrongs/a/b/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move v2, v9

    goto :goto_8

    :cond_b
    array-length v2, v14

    int-to-long v0, v2

    move-wide/from16 v17, v0

    add-long v17, v17, v4

    cmp-long v2, v17, v15

    if-lez v2, :cond_c

    const/4 v2, 0x0

    sub-long v17, v15, v4

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v14, v2, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    :goto_a
    if-gtz v2, :cond_d

    move v2, v9

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v12, v14}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    goto :goto_a

    :cond_d
    if-nez v10, :cond_e

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v14, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_e
    int-to-long v0, v2

    move-wide/from16 v17, v0

    add-long v4, v4, v17

    int-to-long v0, v2

    move-wide/from16 v17, v0

    add-long v7, v7, v17

    const/16 v2, 0x9

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v2, 0x2

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/estrongs/fs/b/ah;->e:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v9

    goto/16 :goto_8

    :cond_f
    cmp-long v4, v15, v4

    if-eqz v4, :cond_10

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/d;->j(Ljava/lang/String;)V

    const/16 v4, 0x2f

    invoke-virtual {v13, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/ah;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_11
    move v4, v11

    move v9, v2

    move v2, v10

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v5, 0x7f0b0031

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Lcom/estrongs/fs/b/ah;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/ah;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    check-cast v3, Lcom/estrongs/fs/b/ah;

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ah;->c()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const v6, 0x7f0b0357

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/estrongs/android/pop/FexApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v7

    const-class v8, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "title"

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "message"

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "openfileOrFolder"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/FexApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_13
    check-cast v3, Lcom/estrongs/fs/b/ah;

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ah;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_14
    const/4 v2, 0x1

    if-ne v4, v2, :cond_15

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    const v6, 0x7f0b00e7

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/b/ah;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/ah;->f:Landroid/app/Activity;

    const v6, 0x7f0b00e6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/b/ah;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_4

    :catch_4
    move-exception v6

    goto/16 :goto_9

    :catch_5
    move-exception v2

    goto/16 :goto_3

    :cond_17
    move v10, v2

    move v11, v4

    goto/16 :goto_6
.end method
