.class public Lcom/estrongs/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final TASK_STATUS_DONE:I = 0x4

.field public static final TASK_STATUS_NOT_START:I = 0x1

.field public static final TASK_STATUS_PAUSE:I = 0x3

.field public static final TASK_STATUS_RUNNING:I = 0x2

.field public static final TASK_STATUS_STOP:I = 0x5

.field private static id2task:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static tasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private async_cond:Landroid/os/ConditionVariable;

.field private async_thread:Ljava/lang/Thread;

.field protected canCancel:Z

.field protected canHide:Z

.field protected canPause:Z

.field protected canRestart:Z

.field private cond:Landroid/os/ConditionVariable;

.field private description:Ljava/lang/String;

.field private e:Lcom/estrongs/a/a/a;

.field protected endTime:J

.field expDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private hasNotifyStop:Z

.field private id:J

.field public inTestMode:Z

.field public notificationId:I

.field private postListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I

.field public processData:Lcom/estrongs/a/a/i;

.field private progessListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private request_task_status_change:Ljava/lang/Integer;

.field protected startTime:J

.field private statusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private summary:Lorg/json/JSONObject;

.field private task_hide:Z

.field private task_result:Lcom/estrongs/a/p;

.field private task_status:Ljava/lang/Integer;

.field protected task_type:I

.field public waitingDecision:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/a/a;->id2task:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/a/a/i;

    invoke-direct {v0}, Lcom/estrongs/a/a/i;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/a/a;->notificationId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/a/a;->id:J

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    iput-object v4, p0, Lcom/estrongs/a/a;->e:Lcom/estrongs/a/a/a;

    iput-boolean v2, p0, Lcom/estrongs/a/a;->task_hide:Z

    iput-object v4, p0, Lcom/estrongs/a/a;->async_thread:Ljava/lang/Thread;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->async_cond:Landroid/os/ConditionVariable;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->summary:Lorg/json/JSONObject;

    iput-wide v5, p0, Lcom/estrongs/a/a;->startTime:J

    iput-wide v5, p0, Lcom/estrongs/a/a;->endTime:J

    iput-boolean v2, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/a/a;->priority:I

    new-instance v0, Lcom/estrongs/a/p;

    invoke-direct {v0}, Lcom/estrongs/a/p;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;

    iput v2, p0, Lcom/estrongs/a/a;->task_type:I

    iput-boolean v3, p0, Lcom/estrongs/a/a;->canHide:Z

    iput-boolean v2, p0, Lcom/estrongs/a/a;->canPause:Z

    iput-boolean v3, p0, Lcom/estrongs/a/a;->canCancel:Z

    iput-boolean v2, p0, Lcom/estrongs/a/a;->canRestart:Z

    iput-boolean v2, p0, Lcom/estrongs/a/a;->waitingDecision:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/a/a;->expDatas:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/estrongs/a/a;->inTestMode:Z

    sget-object v0, Lcom/estrongs/a/a;->id2task:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/a/a;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    const-wide/16 v3, -0x1

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object p1, p0, Lcom/estrongs/a/a;->summary:Lorg/json/JSONObject;

    const-string v0, "task_id"

    iget-wide v1, p0, Lcom/estrongs/a/a;->id:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/a/a;->id:J

    const-string v0, "task_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/a/a;->task_type:I

    const-string v0, "restartable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/a/a;->canRestart:Z

    const-string v0, "task_desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/a;->description:Ljava/lang/String;

    const-string v0, "start_time"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/a/a;->startTime:J

    const-string v0, "end_time"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/a/a;->endTime:J

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/a/a;)Lcom/estrongs/a/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;

    return-object v0
.end method

.method static synthetic access$100(Lcom/estrongs/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/estrongs/a/a;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/a;->async_thread:Ljava/lang/Thread;

    return-object p1
.end method

.method public static existsTask(Ljava/lang/Class;)Z
    .locals 4

    sget-object v1, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentTask()Lcom/estrongs/a/a;
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    sget-object v0, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->isTaskHide()Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string v0, "finish"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string v0, "notStart"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string v0, "pause"

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const-string v0, "running"

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string v0, "error"

    goto :goto_0

    :cond_4
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getTask(J)Lcom/estrongs/a/a;
    .locals 2

    sget-object v0, Lcom/estrongs/a/a;->id2task:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    return-object v0
.end method

.method private static removeTask()Lcom/estrongs/a/a;
    .locals 4

    sget-object v1, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget-object v0, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static saveTask(Lcom/estrongs/a/a;)V
    .locals 5

    sget-object v1, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    sget-object v0, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sget-object v4, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRequestStatus(I)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private statusChangeNotify(II)V
    .locals 3

    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/a/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/k;

    invoke-interface {v0, p0, p1, p2}, Lcom/estrongs/a/a/k;->a(Lcom/estrongs/a/a;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static stopTasks(Ljava/lang/Class;)V
    .locals 4

    sget-object v1, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/a/a;->tasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requestStop()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static test(Landroid/app/Activity;Z)V
    .locals 4

    new-instance v0, Lcom/estrongs/a/c;

    invoke-direct {v0}, Lcom/estrongs/a/c;-><init>()V

    new-instance v1, Lcom/estrongs/a/d;

    invoke-direct {v1, p0}, Lcom/estrongs/a/d;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/estrongs/a/a;

    invoke-direct {v2}, Lcom/estrongs/a/a;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/estrongs/a/a;->inTestMode:Z

    invoke-virtual {v2, v0}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    invoke-virtual {v2, v1}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/estrongs/a/a;->execute()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/a/k;

    invoke-direct {v0, v2}, Lcom/estrongs/a/k;-><init>(Lcom/estrongs/a/a;)V

    invoke-virtual {v0}, Lcom/estrongs/a/k;->start()V

    goto :goto_0
.end method


# virtual methods
.method public addPostListener(Lcom/estrongs/a/a/j;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addProgressListener(Lcom/estrongs/a/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addProgressListeners(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/h;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public canCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/a/a;->canCancel:Z

    return v0
.end method

.method public canHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/a/a;->canHide:Z

    return v0
.end method

.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/a/a;->canPause:Z

    return v0
.end method

.method public canRestart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/a/a;->canRestart:Z

    return v0
.end method

.method public enableTaskHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/a/a;->task_hide:Z

    return-void
.end method

.method public execute()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/a/a;->execute(Z)V

    return-void
.end method

.method public execute(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    if-eqz p1, :cond_1

    new-instance v0, Lcom/estrongs/a/b;

    invoke-direct {v0, p0}, Lcom/estrongs/a/b;-><init>(Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/a/a;->async_thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/a/a;->async_thread:Ljava/lang/Thread;

    iget v1, p0, Lcom/estrongs/a/a;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/estrongs/a/a;->async_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/a/a;->executeHelper()V

    goto :goto_0
.end method

.method protected executeHelper()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x2710

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/a/a;->reset()V

    invoke-static {p0}, Lcom/estrongs/a/a;->saveTask(Lcom/estrongs/a/a;)V

    sget-object v1, Lcom/estrongs/a/a;->id2task:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/a/a;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/estrongs/a/a;->id2task:Ljava/util/Map;

    iget-wide v2, p0, Lcom/estrongs/a/a;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    invoke-virtual {p0}, Lcom/estrongs/a/a;->needSystemLock()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/m;->a()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/a/a;->task()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/a/a;->needSystemLock()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/m;->b()V

    :cond_2
    if-eqz v0, :cond_4

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-nez v0, :cond_3

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/estrongs/a/a;->id2task:Ljava/util/Map;

    iget-wide v1, p0, Lcom/estrongs/a/a;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/a/a;->removeTask()Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, p0, Lcom/estrongs/a/a;->e:Lcom/estrongs/a/a/a;

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/estrongs/a/a;->postTask()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v2, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v0, p0, v1}, Lcom/estrongs/a/a/j;->a(Lcom/estrongs/a/a;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/estrongs/a/q;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v4, v2}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/j;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {v0, p0, v1}, Lcom/estrongs/a/a/j;->a(Lcom/estrongs/a/a;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_6
    :try_start_9
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    iget-object v3, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    monitor-enter v3

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/j;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-interface {v0, p0, v1}, Lcom/estrongs/a/a/j;->a(Lcom/estrongs/a/a;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_7
    :try_start_c
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v2

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0
.end method

.method public forceResume()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/a/a;->waitingDecision:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/a/a;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/a/a;->e:Lcom/estrongs/a/a/a;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/estrongs/a/a/c;->a([Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, v0, Lcom/estrongs/a/a/c;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/a/a/c;->f:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/estrongs/a/a;->e:Lcom/estrongs/a/a/a;

    invoke-interface {v1, p0, v0}, Lcom/estrongs/a/a/a;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/c;)V

    invoke-virtual {p0}, Lcom/estrongs/a/a;->suspend()V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/a/a;->waitingDecision:Z

    return-object v0
.end method

.method public getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/estrongs/a/a/c;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/a/a;->expDatas:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/c;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/c;

    iget-object v2, p0, Lcom/estrongs/a/a;->expDatas:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/a/a/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/a/a;->startTime:J

    return-wide v0
.end method

.method public getTaskId()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/a/a;->id:J

    return-wide v0
.end method

.method public getTaskResult()Lcom/estrongs/a/p;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;

    return-object v0
.end method

.method public getTaskStatus()I
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTastType()I
    .locals 1

    iget v0, p0, Lcom/estrongs/a/a;->task_type:I

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/estrongs/a/a/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/a/a/c;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/a/a;->resume()V

    :cond_0
    return-void
.end method

.method protected hasProgressListener()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/a/a;->task_hide:Z

    return v0
.end method

.method protected needSystemLock()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onProgress(Lcom/estrongs/a/a/i;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    invoke-interface {v0, p0, p1}, Lcom/estrongs/a/a/h;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected postTask()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized recordSummary(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->summary:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removePostListener(Lcom/estrongs/a/a/j;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->postListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeProgressListener(Lcom/estrongs/a/a/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->progessListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->statusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestStop()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/estrongs/a/a;->setRequestStatus(I)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/a/a;->canRestart:Z

    iput-boolean v3, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/estrongs/a/a;->statusChangeNotify(II)V

    goto :goto_0
.end method

.method public requsestPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/estrongs/a/a;->setRequestStatus(I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    iput v1, v0, Lcom/estrongs/a/a/i;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/a/a;->setRequestStatus(I)V

    iget-object v0, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public varargs sendMessage(I[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setCanHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/a/a;->canHide:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/a/a;->description:Ljava/lang/String;

    const-string v0, "task_desc"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/a/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/a/a;->priority:I

    return-void
.end method

.method public setTaskDecisionListener(Lcom/estrongs/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/a;->e:Lcom/estrongs/a/a/a;

    return-void
.end method

.method public setTaskResult(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;

    iput p1, v0, Lcom/estrongs/a/p;->a:I

    iget-object v0, p0, Lcom/estrongs/a/a;->task_result:Lcom/estrongs/a/p;

    iput-object p2, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    return-void
.end method

.method public setTaskStatus(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/estrongs/a/a;->hasNotifyStop:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/a/a;->statusChangeNotify(II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized summary()Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/a/a;->summary:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public suspend()V
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    iget-object v0, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    invoke-virtual {p0, v1}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    goto :goto_0
.end method

.method public task()Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/a/a;->inTestMode:Z

    if-eqz v0, :cond_8

    move v3, v2

    :goto_0
    const/16 v0, 0x14

    if-ge v3, v0, :cond_8

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eq v3, v6, :cond_0

    if-eq v3, v7, :cond_0

    const/16 v0, 0x9

    if-ne v3, v0, :cond_2

    :cond_0
    const-class v0, Lcom/estrongs/a/a/e;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "/testfile"

    aput-object v5, v4, v1

    invoke-virtual {p0, v0, v4}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/e;

    iget v4, v0, Lcom/estrongs/a/a/e;->g:I

    if-ne v4, v8, :cond_1

    :cond_1
    iget v4, v0, Lcom/estrongs/a/a/e;->g:I

    if-ne v4, v2, :cond_5

    :cond_2
    const/16 v0, 0xc

    if-eq v3, v0, :cond_3

    const/16 v0, 0x10

    if-ne v3, v0, :cond_4

    :cond_3
    const-class v0, Lcom/estrongs/a/a/d;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "/testfile"

    aput-object v5, v4, v1

    invoke-virtual {p0, v0, v4}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/d;

    iget v4, v0, Lcom/estrongs/a/a/d;->g:I

    if-ne v4, v8, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    return v0

    :cond_5
    iget v0, v0, Lcom/estrongs/a/a/e;->g:I

    if-ne v0, v6, :cond_2

    new-instance v0, Lcom/estrongs/a/q;

    const-string v2, "/testfile"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v7, v0}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_2

    :cond_6
    iget v0, v0, Lcom/estrongs/a/a/d;->g:I

    if-ne v0, v6, :cond_4

    new-instance v0, Lcom/estrongs/a/q;

    const-string v2, "/testfile"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v7, v0}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public taskStopped()Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v2, v1

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/a/a;->task_status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    iget-object v2, p0, Lcom/estrongs/a/a;->cond:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    invoke-virtual {p0, v5}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    iget-object v2, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/estrongs/a/a;->request_task_status_change:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return v0

    :pswitch_1
    if-ne v2, v5, :cond_0

    const/4 v2, 0x3

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/estrongs/a/a;->setTaskStatus(I)V

    move v2, v0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/a/a;->setTaskResult(ILjava/lang/Object;)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v2

    :cond_2
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
