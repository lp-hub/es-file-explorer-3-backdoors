.class Lcom/estrongs/android/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/i;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/d/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/d/i;Lcom/estrongs/android/d/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/d/l;-><init>(Lcom/estrongs/android/d/i;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-static {v0}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/i;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-static {v0}, Lcom/estrongs/android/d/i;->b(Lcom/estrongs/android/d/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-static {v0}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-static {v0}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/i;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/k;

    iput-object v0, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v0, v0, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v0, v0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/k;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    iput-object v2, v1, Lcom/estrongs/android/d/k;->d:Lcom/estrongs/fs/g;

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v2, v2, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/fs/g;

    invoke-static {v2, v4}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/fs/g;Z)Lcom/estrongs/fs/g;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/d/k;->d:Lcom/estrongs/fs/g;

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->d:Lcom/estrongs/fs/g;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v4, v1, v4

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v3, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v3, v3, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v3, v3, Lcom/estrongs/android/d/k;->d:Lcom/estrongs/fs/g;

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    aget-boolean v1, v1, v4

    iput-boolean v1, v2, Lcom/estrongs/android/d/k;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v1, v1, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    iget-object v1, v1, Lcom/estrongs/android/d/k;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    iget-object v2, v2, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/d/i;->b(Lcom/estrongs/android/d/k;)Z

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-static {v1}, Lcom/estrongs/android/d/i;->c(Lcom/estrongs/android/d/i;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/d/i;->a:Lcom/estrongs/android/d/k;

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/d/l;->a:Lcom/estrongs/android/d/i;

    invoke-static {v0}, Lcom/estrongs/android/d/i;->a(Lcom/estrongs/android/d/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
