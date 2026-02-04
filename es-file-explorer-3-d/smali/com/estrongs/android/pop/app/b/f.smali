.class public Lcom/estrongs/android/pop/app/b/f;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/Observer;


# static fields
.field protected static a:I


# instance fields
.field public b:Lcom/estrongs/android/pop/app/b/h;

.field private c:[I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/estrongs/android/pop/app/b/c;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lcom/estrongs/android/pop/app/b/f;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/app/b/c;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/app/b/f;->d:I

    iput v0, p0, Lcom/estrongs/android/pop/app/b/f;->e:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->f:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->h:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/f;->c:[I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/f;->g:Lcom/estrongs/android/pop/app/b/c;

    new-instance v0, Lcom/estrongs/android/pop/app/b/h;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/f;->b:Lcom/estrongs/android/pop/app/b/h;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->h:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->f:Z

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/f;->c:[I

    aget v3, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/f;->g:Lcom/estrongs/android/pop/app/b/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/c;->a()Ljava/util/Vector;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/c;->c()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/f;->f:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/pop/app/b/f;->e:I

    iget v1, p0, Lcom/estrongs/android/pop/app/b/f;->d:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    const-wide/16 v0, 0x258

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :goto_2
    iget v5, p0, Lcom/estrongs/android/pop/app/b/f;->e:I

    iget v6, p0, Lcom/estrongs/android/pop/app/b/f;->d:I

    sub-int/2addr v5, v6

    sget v6, Lcom/estrongs/android/pop/app/b/f;->a:I

    if-le v5, v6, :cond_3

    const-wide/16 v5, 0x4b0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :cond_3
    new-instance v5, Lcom/estrongs/android/pop/app/b/g;

    invoke-direct {v5, v0, v3}, Lcom/estrongs/android/pop/app/b/g;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, p0}, Lcom/estrongs/android/pop/app/b/g;->addObserver(Ljava/util/Observer;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget v0, p0, Lcom/estrongs/android/pop/app/b/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/f;->e:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/f;->setChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/f;->notifyObservers()V

    iput v2, p0, Lcom/estrongs/android/pop/app/b/f;->e:I

    iput v2, p0, Lcom/estrongs/android/pop/app/b/f;->d:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/b/f;->f:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/b/f;->h:Z

    return-void
.end method

.method public declared-synchronized update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/app/b/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/b/f;->d:I

    instance-of v0, p1, Lcom/estrongs/android/pop/app/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/f;->b:Lcom/estrongs/android/pop/app/b/h;

    invoke-virtual {v3, v0, v1, v2}, Lcom/estrongs/android/pop/app/b/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/f;->setChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/f;->b:Lcom/estrongs/android/pop/app/b/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/b/f;->notifyObservers(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
