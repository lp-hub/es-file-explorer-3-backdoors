.class public Lcom/estrongs/fs/b/q;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/k;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Lcom/estrongs/fs/b/s;

.field public e:Ljava/lang/String;

.field f:Ljava/lang/Long;

.field g:Ljava/lang/Long;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/q;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/q;->a:Lcom/estrongs/fs/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/fs/b/q;->c:Z

    new-instance v0, Lcom/estrongs/fs/b/s;

    invoke-direct {v0}, Lcom/estrongs/fs/b/s;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->d:Lcom/estrongs/fs/b/s;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/q;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/fs/b/q;->k:Z

    iput-object v2, p0, Lcom/estrongs/fs/b/q;->m:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->f:Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->g:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/q;->a:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/fs/b/q;->d()V

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x5

    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x4

    invoke-direct {p0, p2}, Lcom/estrongs/a/a;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/estrongs/fs/b/q;->a:Lcom/estrongs/fs/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/fs/b/q;->c:Z

    new-instance v0, Lcom/estrongs/fs/b/s;

    invoke-direct {v0}, Lcom/estrongs/fs/b/s;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->d:Lcom/estrongs/fs/b/s;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/q;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/fs/b/q;->k:Z

    iput-object v2, p0, Lcom/estrongs/fs/b/q;->m:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->f:Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->g:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/q;->a:Lcom/estrongs/fs/d;

    const-string v0, "source"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    const-string v0, "target"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->getTaskId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    const-string v1, "size"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->f:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/a/a/i;->i:I

    invoke-virtual {p0, v7}, Lcom/estrongs/fs/b/q;->setTaskStatus(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/b/q;->setTaskStatus(I)V

    goto :goto_0

    :cond_3
    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/b/q;->setTaskStatus(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v7}, Lcom/estrongs/fs/b/q;->setTaskStatus(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/q;Lcom/estrongs/a/a/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/b/q;->onProgress(Lcom/estrongs/a/a/i;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/b/q;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->hasProgressListener()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/estrongs/fs/b/q;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/q;->startTime:J

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/q;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "items_ori_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "source"

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "target"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "file_type"

    iget-object v1, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 13

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget v0, v0, Lcom/estrongs/a/a/i;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x4

    iput v1, v0, Lcom/estrongs/a/a/i;->i:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/q;->onProgress(Lcom/estrongs/a/a/i;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "size"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    new-instance v7, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v7}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    move v3, v5

    move v4, v5

    move-object v1, v2

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->taskStopped()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x14

    if-le v3, v0, :cond_3

    :cond_2
    :goto_1
    return v5

    :cond_3
    if-eqz v4, :cond_6

    :try_start_0
    const-class v0, Lcom/estrongs/a/a/b;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->getTaskId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v0, v8}, Lcom/estrongs/fs/b/q;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/b;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, v0, Lcom/estrongs/a/a/b;->d:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/b;->d:Z

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->requestStop()V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "unauthorized"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v3, 0x1

    if-eqz v1, :cond_4

    iput-boolean v5, v1, Lcom/estrongs/a/a/b;->e:Z

    :cond_4
    move v3, v0

    move v4, v6

    move-object v0, v2

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v1, "NEW_USERNAME"

    iget-object v8, v0, Lcom/estrongs/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NEW_PASSWORD"

    iget-object v8, v0, Lcom/estrongs/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v7, v1, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/estrongs/fs/impl/g/b;

    invoke-direct {v1}, Lcom/estrongs/fs/impl/g/b;-><init>()V

    iget-object v8, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v1, v8, v7}, Lcom/estrongs/fs/impl/g/b;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Lcom/estrongs/fs/g;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :goto_3
    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_0

    :cond_6
    :try_start_3
    new-instance v0, Lcom/estrongs/fs/impl/g/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/g/b;-><init>()V

    iget-object v8, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/estrongs/fs/impl/g/b;->a(Ljava/lang/String;)Lcom/estrongs/fs/g;
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_3

    :cond_7
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v3, 0x1

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    const/16 v2, 0x3a

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/fs/b/q;->l:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "target"

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->l:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "file_type"

    invoke-static {v0}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->getTaskId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v7, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    new-instance v0, Lcom/estrongs/fs/b/k;

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v3, Lcom/estrongs/a/a/i;->f:J

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/k;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;JZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/q;->k:Z

    iput-boolean v6, p0, Lcom/estrongs/fs/b/q;->canRestart:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/fs/b/q;->task_type:I

    const-string v0, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "size"

    invoke-interface {v1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;)V

    move v5, v6

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_b
    move-object v0, v2

    goto/16 :goto_5
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected executeHelper()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/a/a;->executeHelper()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/k;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/q;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    :cond_0
    return-void
.end method

.method public varargs getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/estrongs/a/a/c;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/estrongs/a/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v2, Lcom/estrongs/a/a/i;->d:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->h:J

    goto :goto_1

    :pswitch_3
    array-length v0, p2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "RBT"

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    iget-object v1, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v2, Lcom/estrongs/a/a/i;->f:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->f:J

    goto :goto_2

    :pswitch_4
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->d:Lcom/estrongs/fs/b/s;

    iput-boolean v5, v0, Lcom/estrongs/fs/b/s;->a:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected postTask()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestStop()V
    .locals 1

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->c(Lcom/estrongs/a/a;)V

    invoke-super {p0}, Lcom/estrongs/a/a;->requestStop()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->f:J

    invoke-super {p0}, Lcom/estrongs/a/a;->reset()V

    iget-boolean v2, p0, Lcom/estrongs/fs/b/q;->j:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->f:J

    :cond_0
    iput-boolean v3, p0, Lcom/estrongs/fs/b/q;->c:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/q;->k:Z

    return-void
.end method

.method public task()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    const-string v3, "http://t.cn/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Z)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0x12c

    if-le v4, v5, :cond_0

    const/16 v5, 0x190

    if-ge v4, v5, :cond_0

    const-string v4, "Location"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_2
    const-string v3, "http://dwz.cn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    :goto_1
    const-string v0, "http://www.estrongs.com/esshare?s="

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://www.estrongs.com/esshare?s="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v0, "http://dwz.cn"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v3}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :goto_2
    iput-object v0, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->d:Lcom/estrongs/fs/b/s;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/estrongs/fs/b/s;->a:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/q;->k:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    new-instance v3, Lcom/estrongs/a/q;

    const-string v4, "Error"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/q;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    move v0, v1

    :goto_3
    return v0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get FileObject for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/fs/b/q;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/q;->setTaskResult(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    const/4 v3, -0x1

    iput v3, v0, Lcom/estrongs/a/a/i;->i:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    move v0, v1

    goto :goto_3

    :cond_3
    :try_start_4
    new-instance v0, Lcom/estrongs/fs/b/r;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/b/q;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->start()V

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/q;->onProgress(Lcom/estrongs/a/a/i;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    const/4 v3, 0x2

    iput v3, v0, Lcom/estrongs/a/a/i;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/q;->onProgress(Lcom/estrongs/a/a/i;)V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->taskStopped()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    move v0, v1

    goto :goto_3

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/b/k;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    move v0, v1

    goto/16 :goto_3

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/estrongs/fs/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v3, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "target"

    invoke-virtual {p0, v4, v3}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/estrongs/fs/b/q;->m:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0}, Lcom/estrongs/fs/b/q;->summary()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-gez v3, :cond_5

    const-string v3, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    const/16 v3, 0x2710

    :try_start_7
    new-instance v4, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/q;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    move v0, v1

    goto/16 :goto_3

    :cond_8
    :try_start_8
    const-string v3, "title"

    iget-object v4, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "target"

    iget-object v4, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/q;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/fs/b/q;->m:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    throw v0

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v0, Lcom/estrongs/a/a/i;->c:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v3, Lcom/estrongs/a/a/i;->c:J

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->d:J

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v0, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v3, v6

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v3, Lcom/estrongs/a/a/i;->e:J

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->f:J

    :cond_b
    iget-object v0, p0, Lcom/estrongs/fs/b/q;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/q;->onProgress(Lcom/estrongs/a/a/i;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/fs/b/q;->d:Lcom/estrongs/fs/b/s;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/q;->setTaskResult(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/q;->c:Z

    move v0, v2

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_c
    move-object v0, v3

    goto/16 :goto_2

    :cond_d
    move-object v3, v0

    goto/16 :goto_1
.end method
