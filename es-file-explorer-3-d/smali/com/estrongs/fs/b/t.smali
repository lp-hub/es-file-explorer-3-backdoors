.class public Lcom/estrongs/fs/b/t;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field public b:Lcom/estrongs/fs/g;

.field public c:Ljava/lang/Throwable;

.field public d:Lcom/estrongs/android/pop/d;

.field e:Lcom/estrongs/fs/c/a/a;

.field f:Lcom/estrongs/fs/h;

.field g:Ljava/lang/Boolean;

.field h:Lcom/estrongs/android/util/TypedMap;

.field public i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/estrongs/fs/b/u;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/android/pop/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->c:Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->e:Lcom/estrongs/fs/c/a/a;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->f:Lcom/estrongs/fs/h;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->k:Lcom/estrongs/fs/b/u;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/t;->i:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/t;->a:Lcom/estrongs/fs/d;

    iput-object p2, p0, Lcom/estrongs/fs/b/t;->d:Lcom/estrongs/android/pop/d;

    return-void
.end method

.method private a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/t;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/fs/b/t;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/t;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/t;->k:Lcom/estrongs/fs/b/u;

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/t;->requestStop()V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->c:Ljava/lang/Throwable;

    aget-object v0, p1, v2

    check-cast v0, Lcom/estrongs/fs/g;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    aget-object v0, p1, v1

    check-cast v0, Lcom/estrongs/fs/c/a/a;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->e:Lcom/estrongs/fs/c/a/a;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->f:Lcom/estrongs/fs/h;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->g:Ljava/lang/Boolean;

    array-length v0, p1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    aget-object v0, p1, v4

    if-eqz v0, :cond_0

    aget-object v0, p1, v4

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->e(Ljava/lang/String;)Lcom/estrongs/fs/a/d;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/estrongs/fs/a/d;->a:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/a/b;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    invoke-super {p0, v1}, Lcom/estrongs/a/a;->execute(Z)V

    return v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/util/TypedMap;->EMPTY:Lcom/estrongs/android/util/TypedMap;

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/t;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/t;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/t;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/t;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/t;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected needSystemLock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public task()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->a:Lcom/estrongs/fs/d;

    invoke-virtual {v4, v2}, Lcom/estrongs/fs/d;->l(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v5, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "limit"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aL(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "partialListener"

    iget-object v5, p0, Lcom/estrongs/fs/b/t;->k:Lcom/estrongs/fs/b/u;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/estrongs/fs/b/t;->a:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    iget-object v5, p0, Lcom/estrongs/fs/b/t;->g:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/estrongs/fs/b/t;->f:Lcom/estrongs/fs/h;

    iget-object v7, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->k:Lcom/estrongs/fs/b/u;

    if-eqz v3, :cond_2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v3, "cacheStatus"

    invoke-virtual {v2, v3}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->e:Lcom/estrongs/fs/c/a/a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->e:Lcom/estrongs/fs/c/a/a;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/fs/b/t;->a()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    :goto_0
    return v0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-static {v0, v2}, Lcom/estrongs/android/util/ak;->b(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "get_data_from_cache"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const-string v2, "ALL_LOADED"

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/t;->setTaskResult(ILjava/lang/Object;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/t;->setTaskResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/t;->c:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_7
    move v2, v0

    :cond_8
    :try_start_2
    iget-object v3, p0, Lcom/estrongs/fs/b/t;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "cacheStatus"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->a:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/estrongs/fs/b/t;->f:Lcom/estrongs/fs/h;

    iget-object v7, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    :cond_9
    invoke-direct {p0}, Lcom/estrongs/fs/b/t;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->e:Lcom/estrongs/fs/c/a/a;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->e:Lcom/estrongs/fs/c/a/a;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_a
    iget-object v3, p0, Lcom/estrongs/fs/b/t;->k:Lcom/estrongs/fs/b/u;

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    invoke-interface {v3, p0, v4}, Lcom/estrongs/fs/b/u;->a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "loadFinished"

    invoke-virtual {v3, v4}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v2, "loadFinished"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "ALL_LOADED"

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/t;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_1

    :cond_c
    iget-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    const-string v4, "offset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->a:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/t;->b:Lcom/estrongs/fs/g;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/estrongs/fs/b/t;->f:Lcom/estrongs/fs/h;

    iget-object v7, p0, Lcom/estrongs/fs/b/t;->h:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/estrongs/fs/b/t;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-gtz v3, :cond_8

    goto :goto_2

    :cond_d
    :try_start_3
    iput-object v0, p0, Lcom/estrongs/fs/b/t;->c:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
