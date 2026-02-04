.class Lcom/estrongs/android/pop/app/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/ab;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/a/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/a/ab;Lcom/estrongs/android/pop/app/a/ac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/a/ae;-><init>(Lcom/estrongs/android/pop/app/a/ab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/ab;->a(Lcom/estrongs/android/pop/app/a/ab;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/ab;->b(Lcom/estrongs/android/pop/app/a/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/ab;->a(Lcom/estrongs/android/pop/app/a/ab;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/ab;->a(Lcom/estrongs/android/pop/app/a/ab;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ad;

    iput-object v0, v2, Lcom/estrongs/android/pop/app/a/ab;->a:Lcom/estrongs/android/pop/app/a/ad;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ab;->a:Lcom/estrongs/android/pop/app/a/ad;

    iget-object v1, v0, Lcom/estrongs/android/pop/app/a/ad;->b:Lcom/estrongs/android/pop/app/a/af;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/ab;->a:Lcom/estrongs/android/pop/app/a/ad;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/a/ab;->a(Lcom/estrongs/android/pop/app/a/ad;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/af;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/ab;->a:Lcom/estrongs/android/pop/app/a/ad;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/a/ab;->b(Lcom/estrongs/android/pop/app/a/ad;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/ab;->c(Lcom/estrongs/android/pop/app/a/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/app/a/ab;->a:Lcom/estrongs/android/pop/app/a/ad;

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/ae;->a:Lcom/estrongs/android/pop/app/a/ab;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/ab;->a(Lcom/estrongs/android/pop/app/a/ab;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
