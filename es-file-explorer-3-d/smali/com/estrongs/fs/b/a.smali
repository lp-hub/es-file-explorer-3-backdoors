.class public Lcom/estrongs/fs/b/a;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:Landroid/content/pm/PackageManager;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field protected e:Z

.field f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/b/c;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    iput-object v0, p0, Lcom/estrongs/fs/b/a;->b:Landroid/content/pm/PackageManager;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->e:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->f:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/a;->b:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/estrongs/fs/b/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    iput-boolean p5, p0, Lcom/estrongs/fs/b/a;->g:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/a;->canRestart:Z

    const/16 v0, 0xb

    iput v0, p0, Lcom/estrongs/fs/b/a;->task_type:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    if-eq v0, v4, :cond_3

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v1, v0, :cond_3

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->p:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->n:Z

    const-string v0, ""

    move v1, v2

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    if-ne v1, v4, :cond_4

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/a;->a()V

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/estrongs/fs/b/a;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/a;->startTime:J

    :cond_2
    const-string v0, "start_time"

    iget-wide v1, p0, Lcom/estrongs/fs/b/a;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/a;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "file_type"

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_selected_count"

    iget-object v1, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    return-void
.end method

.method public task()Z
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    int-to-long v4, v3

    iput-wide v4, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/i;)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/fs/b/a;->b:Landroid/content/pm/PackageManager;

    invoke-static {v5, v4}, Lcom/estrongs/android/pop/utils/y;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/estrongs/fs/b/a;->b:Landroid/content/pm/PackageManager;

    invoke-static {v7, v4}, Lcom/estrongs/fs/impl/b/d;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    iput-object v5, v8, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v8}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/i;)V

    iget-object v8, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/c;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "item_paste_name"

    invoke-virtual {v0, v8, v7}, Lcom/estrongs/fs/impl/b/c;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/estrongs/fs/b/i;

    iget-object v8, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    new-instance v9, Lcom/estrongs/fs/impl/local/b;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/estrongs/fs/b/a;->d:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8, v0, v9}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/estrongs/fs/b/i;->execute(Z)V

    invoke-virtual {v7}, Lcom/estrongs/fs/b/i;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v7

    iget v7, v7, Lcom/estrongs/a/p;->a:I

    if-eqz v7, :cond_3

    move v0, v1

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Lcom/estrongs/fs/impl/b/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/estrongs/fs/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, p0, Lcom/estrongs/fs/b/a;->g:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v0, v5}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    iget-object v6, p0, Lcom/estrongs/fs/b/a;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v6, v5}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v6, "compress_level"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/estrongs/io/archive/i;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v0}, Lcom/estrongs/io/archive/i;-><init>(Ljava/lang/String;Lcom/estrongs/io/a/d;Ljava/util/Map;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Lcom/estrongs/io/archive/i;->a(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/fs/b/a;->taskStopped()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/a;->setTaskResult(ILjava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    add-int/lit8 v4, v2, 0x1

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/estrongs/a/a/i;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    add-int/lit8 v4, v2, 0x1

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/a;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/a;->onProgress(Lcom/estrongs/a/a/i;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/a;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v0, 0x1

    goto/16 :goto_0
.end method
