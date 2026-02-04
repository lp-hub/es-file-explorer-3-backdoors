.class public abstract Lcom/estrongs/android/d/i;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/d/k;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/Thread;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/d/i;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/d/i;->c:Ljava/util/Map;

    const-string v0, "ThumnailLoader"

    iput-object v0, p0, Lcom/estrongs/android/d/i;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/d/i;->f:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/d/i;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/d/i;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/d/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/d/i;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/d/i;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/i;->c:Ljava/util/Map;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/d/i;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/d/i;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/d/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/d/l;-><init>(Lcom/estrongs/android/d/i;Lcom/estrongs/android/d/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/estrongs/android/d/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/d/i;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/d/i;->d:Z

    iget-object v1, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/d/i;->e:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ILcom/estrongs/fs/g;Landroid/widget/ImageView;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/i;->e:Ljava/lang/Thread;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/d/i;->c()V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/estrongs/android/d/k;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/d/k;-><init>(ILcom/estrongs/fs/g;Landroid/widget/ImageView;)V

    iget-object v2, p0, Lcom/estrongs/android/d/i;->c:Ljava/util/Map;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/d/i;->c:Ljava/util/Map;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract a(Lcom/estrongs/android/d/k;)Z
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/d/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/d/k;->g:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract b(Lcom/estrongs/android/d/k;)Z
.end method
