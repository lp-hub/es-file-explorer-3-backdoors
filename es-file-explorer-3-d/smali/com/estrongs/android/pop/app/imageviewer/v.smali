.class Lcom/estrongs/android/pop/app/imageviewer/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/r;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/r;Lcom/estrongs/android/pop/app/imageviewer/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/v;-><init>(Lcom/estrongs/android/pop/app/imageviewer/r;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->a(Lcom/estrongs/android/pop/app/imageviewer/r;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->b(Lcom/estrongs/android/pop/app/imageviewer/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->a(Lcom/estrongs/android/pop/app/imageviewer/r;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->a(Lcom/estrongs/android/pop/app/imageviewer/r;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/u;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/imageviewer/u;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/r;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_1
    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/u;->b:Lcom/estrongs/android/pop/app/imageviewer/t;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/u;->b:Lcom/estrongs/android/pop/app/imageviewer/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/u;->a:Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v2, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/t;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/v;->a:Lcom/estrongs/android/pop/app/imageviewer/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/imageviewer/r;->a(Lcom/estrongs/android/pop/app/imageviewer/r;)Ljava/util/ArrayList;

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
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
