.class public Lcom/estrongs/fs/b/at;
.super Lcom/estrongs/a/a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/estrongs/fs/d;

.field c:Ljava/lang/Long;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/estrongs/a/a/k;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/at;->c:Ljava/lang/Long;

    new-instance v1, Lcom/estrongs/fs/b/au;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/au;-><init>(Lcom/estrongs/fs/b/at;)V

    iput-object v1, p0, Lcom/estrongs/fs/b/at;->f:Lcom/estrongs/a/a/k;

    iput-object p1, p0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/at;->b:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/estrongs/fs/b/at;->canRestart:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/b/at;->canPause:Z

    const/16 v1, 0x15

    iput v1, p0, Lcom/estrongs/fs/b/at;->task_type:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v3, :cond_2

    const-string v0, " , "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v1, v0, :cond_2

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/fs/b/at;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    const v2, 0x7f0b00e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/at;->setDescription(Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Z)Lcom/estrongs/fs/b/at;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/estrongs/fs/b/at;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/b/at;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/fs/b/at;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/b/ew;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    const v3, 0x7f0b0081

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->execute()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/estrongs/fs/b/at;->f:Lcom/estrongs/a/a/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/at;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/at;->execute()V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    const-string v1, ""

    iget-object v2, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    if-ne v2, v5, :cond_3

    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "title"

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_ori_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/at;->getTaskId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    iget v2, p0, Lcom/estrongs/fs/b/at;->task_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "source"

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "target"

    iget-object v2, p0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-wide v0, p0, Lcom/estrongs/fs/b/at;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/at;->startTime:J

    :cond_2
    const-string v0, "start_time"

    iget-wide v1, p0, Lcom/estrongs/fs/b/at;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto/16 :goto_0

    :cond_4
    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/at;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/estrongs/a/p;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/at;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    return-object v0
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
    iget-object v1, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->h:J

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->e:J

    invoke-virtual {p0}, Lcom/estrongs/fs/b/at;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iget-object v2, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->f:J

    long-to-float v2, v2

    float-to-double v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/fs/b/at;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/estrongs/a/a/i;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/at;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public task()Z
    .locals 24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/estrongs/a/a/i;->c:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/estrongs/a/a/i;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    const v7, 0x7f0b00e5

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/b/at;->onProgress(Lcom/estrongs/a/a/i;)V

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v18

    new-instance v6, Lcom/estrongs/a/b/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-direct {v6, v3}, Lcom/estrongs/a/b/c;-><init>(Ljava/util/List;)V

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    invoke-virtual {v6}, Lcom/estrongs/a/b/c;->a()Lcom/estrongs/fs/g;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v4

    sget-object v7, Lcom/estrongs/fs/l;->b:Lcom/estrongs/fs/l;

    if-ne v4, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iget-wide v7, v4, Lcom/estrongs/a/a/i;->c:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/estrongs/a/a/i;->c:J

    invoke-interface {v3}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    add-long/2addr v3, v11

    :goto_2
    move-wide v11, v3

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iput-wide v11, v3, Lcom/estrongs/a/a/i;->e:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iget-object v6, v4, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/b/at;->onProgress(Lcom/estrongs/a/a/i;)V

    const-string v3, "size"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/fs/b/at;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v19, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/at;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    new-instance v16, Ljava/net/Socket;

    invoke-direct/range {v16 .. v16}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    new-instance v5, Ljava/net/InetSocketAddress;

    sget v6, Lcom/estrongs/a/b/d;->a:I

    invoke-direct {v5, v4, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v4, 0x2710

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "connect timeout!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    move-object/from16 v4, v16

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v5, 0x2710

    new-instance v6, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    const v8, 0x7f0b00e2

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/estrongs/fs/b/at;->setTaskResult(ILjava/lang/Object;)V

    :try_start_2
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_3
    :try_start_3
    new-instance v20, Ljava/io/DataInputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v21, Ljava/io/DataOutputStream;

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "Content-Type: application/file\r\n"

    const/4 v15, 0x0

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    const-string v3, "Content-Type: application/files\r\n"

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MYPOST /"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " HTTP/1.1\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Connection: Keep-Alive\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Files-Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Items-Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iget-wide v4, v4, Lcom/estrongs/a/a/i;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "User-Agent: Dalvik\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Host: localhost\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    if-eqz v15, :cond_4

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/io/DataOutputStream;->write([B)V

    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->available()I

    move-result v3

    if-nez v3, :cond_9

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-static {v3}, Lcom/estrongs/android/util/av;->b(Lcom/estrongs/fs/g;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-eqz v5, :cond_8

    :try_start_4
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v7, 0x40

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v4, v6

    div-int/2addr v4, v6

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v4, 0x0

    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-boolean v4, Lcom/estrongs/android/pop/m;->s:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_6
    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v4, 0x1

    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    div-int/lit8 v4, v6, 0x40

    iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: application/file\r\nAppend-Data: Thumbnail-Image\r\nImage-Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Image-Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length v3, v4

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v5, 0x0

    :goto_7
    :try_start_5
    array-length v6, v4

    if-ge v5, v6, :cond_7

    mul-int/lit8 v6, v5, 0x4

    aget v7, v4, v5

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v7, v4, v5

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v7, v4, v5

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    aget v7, v4, v5

    shr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v3, v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_7
    move-object v15, v3

    move-object/from16 v3, v17

    goto/16 :goto_5

    :catch_1
    move-exception v3

    move-object v3, v15

    :goto_8
    :try_start_6
    const-string v4, "Content-Type: application/file\r\n"

    move-object v15, v3

    move-object v3, v4

    goto/16 :goto_5

    :cond_8
    invoke-interface {v3}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->a()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "Content-Type: application/folder\r\n"

    goto/16 :goto_5

    :cond_9
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const-string v3, ""

    :cond_a
    :goto_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b

    const-string v3, "content-length"

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v3, v3, [B

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "OK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v3, 0x2710

    new-instance v4, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    const v6, 0x7f0b00e1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/fs/b/at;->setTaskResult(ILjava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\r\n\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_a

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_9

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/estrongs/fs/b/at;->c:Ljava/lang/Long;

    new-instance v10, Lcom/estrongs/a/b/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/fs/b/at;->d:Ljava/util/List;

    invoke-direct {v10, v3}, Lcom/estrongs/a/b/c;-><init>(Ljava/util/List;)V

    const/4 v4, 0x0

    move-wide v5, v13

    :cond_d
    :goto_a
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v10}, Lcom/estrongs/a/b/c;->a()Lcom/estrongs/fs/g;

    move-result-object v13

    if-nez v13, :cond_f

    const-string v3, "OVER\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_b
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_c
    const/4 v3, 0x1

    if-ne v4, v3, :cond_e

    const/16 v3, 0x2710

    new-instance v5, Lcom/estrongs/a/q;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/fs/b/at;->a:Landroid/app/Activity;

    const v7, 0x7f0b00e4

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/estrongs/fs/b/at;->setTaskResult(ILjava/lang/Object;)V

    :cond_e
    if-nez v4, :cond_13

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_f
    :try_start_9
    invoke-interface {v13}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v14

    invoke-interface {v13}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    const-string v7, "\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-interface {v13}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v7

    sget-object v8, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    if-ne v7, v8, :cond_10

    const-string v3, "folder\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_a

    :catch_2
    move-exception v3

    const/4 v4, 0x1

    goto :goto_b

    :cond_10
    const-string v7, "file\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    const-wide/16 v7, 0x0

    const/16 v9, 0x4000

    new-array v0, v9, [B

    move-object/from16 v17, v0

    move-wide v8, v7

    :goto_d
    if-eqz v18, :cond_11

    invoke-virtual/range {v18 .. v18}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v4, 0x2

    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/at;->processData:Lcom/estrongs/a/a/i;

    iget-wide v8, v7, Lcom/estrongs/a/a/i;->d:J

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    iput-wide v8, v7, Lcom/estrongs/a/a/i;->d:J

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_f
    if-eqz v4, :cond_d

    goto/16 :goto_b

    :cond_11
    cmp-long v7, v8, v14

    if-ltz v7, :cond_12

    :try_start_b
    const-string v7, "File end\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_e

    :catch_3
    move-exception v4

    :goto_10
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x1

    goto :goto_e

    :cond_12
    if-nez v3, :cond_14

    :try_start_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/fs/b/at;->b:Lcom/estrongs/fs/d;

    invoke-interface {v13}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    move-result-object v7

    :goto_11
    :try_start_d
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/16 v20, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V

    int-to-long v0, v3

    move-wide/from16 v22, v0

    add-long v8, v8, v22

    int-to-long v0, v3

    move-wide/from16 v22, v0

    add-long v5, v5, v22

    const/16 v3, 0x9

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v20, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x1

    invoke-interface {v13}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v22

    const/16 v22, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v20, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/a/a;->sendMessage(I[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object v3, v7

    goto/16 :goto_d

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_1

    :catch_4
    move-exception v3

    goto/16 :goto_4

    :catch_5
    move-exception v3

    goto/16 :goto_f

    :catch_6
    move-exception v3

    goto/16 :goto_c

    :catch_7
    move-exception v3

    move-object v4, v3

    move-object v3, v7

    goto/16 :goto_10

    :catch_8
    move-exception v3

    move-object v4, v5

    goto/16 :goto_3

    :catch_9
    move-exception v4

    goto/16 :goto_8

    :cond_14
    move-object v7, v3

    goto/16 :goto_11

    :cond_15
    move-object v3, v4

    goto/16 :goto_5

    :cond_16
    move-wide v3, v11

    goto/16 :goto_2
.end method
