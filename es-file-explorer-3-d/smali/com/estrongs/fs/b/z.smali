.class public Lcom/estrongs/fs/b/z;
.super Lcom/estrongs/a/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lcom/estrongs/fs/impl/pcs/a;

.field protected d:Lcom/estrongs/fs/d;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Long;

.field private i:Ljava/lang/Long;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->b:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->d:Lcom/estrongs/fs/d;

    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->g:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->h:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->i:Ljava/lang/Long;

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    const-string v0, "pcs"

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/b/z;->a(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/z;->b()V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/fs/impl/pcs/a;

    const-string v1, "/apps/Downloads/"

    invoke-direct {v0, p2, p3, v1}, Lcom/estrongs/fs/impl/pcs/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/estrongs/a/a;-><init>(Lorg/json/JSONObject;)V

    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->b:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->d:Lcom/estrongs/fs/d;

    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->e:Z

    iput-boolean v4, p0, Lcom/estrongs/fs/b/z;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->g:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->h:Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->i:Ljava/lang/Long;

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    const-string v0, "pcs"

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    const-string v0, "user_info"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/impl/pcs/a;

    invoke-direct {v1, p2}, Lcom/estrongs/fs/impl/pcs/a;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/fs/b/z;->a(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V

    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/estrongs/fs/b/z;->setTaskStatus(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    const-string v1, "size"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->e:J

    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/estrongs/fs/b/z;->setTaskStatus(I)V

    goto :goto_0
.end method

.method private a(J)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/fs/b/z;->d:Lcom/estrongs/fs/d;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@pcs/files/apps/Downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/b/z;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/z;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/z;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/z;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/fs/b/z;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/estrongs/fs/b/z;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/z;->startTime:J

    :cond_0
    const-string v0, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/z;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "start_time"

    iget-wide v1, p0, Lcom/estrongs/fs/b/z;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "task_type"

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "restartable"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v1, v1, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "source"

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v1, v1, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "target"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v2, v2, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "user_info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Z
    .locals 12

    const-wide/16 v10, 0x1

    const/16 v9, 0x2710

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    const/4 v3, 0x4

    iput v3, v2, Lcom/estrongs/a/a/i;->i:I

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v2}, Lcom/estrongs/fs/b/z;->onProgress(Lcom/estrongs/a/a/i;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v2, v2, Lcom/estrongs/fs/impl/pcs/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v6, v6, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    const-string v7, "/apps/Downloads/"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/fs/impl/pcs/a;->a:Ljava/lang/String;

    const-string v2, "pcs_id"

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, v3, Lcom/estrongs/fs/impl/pcs/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/pcs/a;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/impl/pcs/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;I)V

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/impl/pcs/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/pcs/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "title"

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/pcs/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "target"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v4}, Lcom/estrongs/fs/impl/pcs/a;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/pcs/a;->length()J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;I)V

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/pcs/a;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/fs/b/z;->c()Z
    :try_end_1
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    return v0

    :catch_0
    move-exception v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/estrongs/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, v3, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v9, v1}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget v1, v1, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    invoke-virtual {p0, v1, v8}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x12c

    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/estrongs/fs/b/z;->a(J)V
    :try_end_2
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/estrongs/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query file info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, v3, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v9, v1}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x12c

    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/estrongs/fs/b/z;->a(J)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "size"

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/pcs/a;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v0, v2, Lcom/estrongs/a/a/i;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/pcs/a;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iput-wide v10, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/pcs/a;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->g:J

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v2, Lcom/estrongs/a/a/i;->g:J

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v2, v2, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    const/4 v2, 0x2

    iput v2, v0, Lcom/estrongs/a/a/i;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/z;->onProgress(Lcom/estrongs/a/a/i;)V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;)V

    move v0, v1

    goto/16 :goto_2

    :cond_8
    iget v1, v1, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    invoke-virtual {p0, v1, v8}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected executeHelper()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/a/a;->executeHelper()V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/z;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/l;->a:Lcom/estrongs/a/a/k;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/z;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    :cond_0
    return-void
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->h:J

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/z;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/fs/b/z;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v0, v3

    float-to-double v3, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    div-double/2addr v3, v5

    double-to-int v0, v3

    iput v0, v2, Lcom/estrongs/a/a/i;->b:I

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v0, Lcom/estrongs/a/a/i;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/z;->i:Ljava/lang/Long;

    iput-object v1, p0, Lcom/estrongs/fs/b/z;->h:Ljava/lang/Long;

    iget-object v1, p0, Lcom/estrongs/fs/b/z;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->f:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/z;->onProgress(Lcom/estrongs/a/a/i;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
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
    .locals 1

    invoke-super {p0}, Lcom/estrongs/a/a;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/z;->e:Z

    return-void
.end method

.method public task()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v0, v0, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    const-string v3, "http://t.cn/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Z)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_2
    const-string v3, "http://dwz.cn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v0}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

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

    if-eqz v0, :cond_a

    invoke-static {v3}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_2
    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iput-object v0, v3, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/z;->a()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    move v0, v1

    :goto_3
    return v0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/estrongs/fs/b/z;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/fs/b/aa;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/aa;-><init>(Lcom/estrongs/fs/b/z;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aa;->start()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    const/4 v3, 0x2

    iput v3, v0, Lcom/estrongs/a/a/i;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/z;->onProgress(Lcom/estrongs/a/a/i;)V

    move v3, v1

    :goto_4
    iget-boolean v0, p0, Lcom/estrongs/fs/b/z;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/fs/b/z;->d:Lcom/estrongs/fs/d;

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;)Z
    :try_end_4
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    const/4 v0, 0x5

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/z;->setTaskStatus(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    move v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    const/16 v3, 0x2710

    :try_start_7
    new-instance v4, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v4}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    move v0, v1

    goto :goto_3

    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/estrongs/fs/b/z;->l:Lcom/estrongs/fs/impl/pcs/PcsFileSystem;

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/fs/b/z;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/estrongs/fs/impl/pcs/PcsFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;I)V

    iget-object v0, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const-string v4, "status"

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/impl/pcs/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {v0, v4}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;I)I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/a/l;->c(Lcom/estrongs/a/a;)V

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/fs/b/z;->c()Z
    :try_end_8
    .catch Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_6
    :try_start_9
    iget-object v3, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-wide v4, v4, Lcom/estrongs/fs/impl/pcs/a;->d:J

    iput-wide v4, v3, Lcom/estrongs/a/a/i;->h:J

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-object v4, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v4, v4, Lcom/estrongs/a/a/i;->h:J

    iput-wide v4, v3, Lcom/estrongs/a/a/i;->f:J

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v3}, Lcom/estrongs/fs/b/z;->onProgress(Lcom/estrongs/a/a/i;)V

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v3, Lcom/estrongs/a/a/i;->f:J

    iget-object v5, p0, Lcom/estrongs/fs/b/z;->processData:Lcom/estrongs/a/a/i;

    iget-wide v5, v5, Lcom/estrongs/a/a/i;->e:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    const-string v4, "status"

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/impl/pcs/a;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    const-string v0, "end_time"

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/pcs/a;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/z;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    invoke-virtual {v3}, Lcom/estrongs/fs/impl/pcs/a;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    move v0, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_8

    :try_start_a
    iget v0, v0, Lcom/estrongs/fs/impl/pcs/PcsFileSystem$PcsFileSystemException;->errorCode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/z;->setTaskResult(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    move v0, v1

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v0, v3, 0x1

    goto :goto_6

    :cond_9
    const-wide/16 v3, 0x12c

    :try_start_b
    invoke-direct {p0, v3, v4}, Lcom/estrongs/fs/b/z;->a(J)V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/z;->taskStopped()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v3, v0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/z;->e:Z

    throw v0

    :catch_3
    move-exception v3

    goto/16 :goto_0

    :cond_a
    move-object v0, v3

    goto/16 :goto_2

    :cond_b
    move-object v3, v0

    goto/16 :goto_1
.end method
