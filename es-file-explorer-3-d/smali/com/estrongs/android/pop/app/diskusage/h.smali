.class Lcom/estrongs/android/pop/app/diskusage/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/diskusage/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/e;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/estrongs/android/view/ae;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->o(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/ae;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->o(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/i;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/diskusage/i;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/view/ae;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->p(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    new-instance v3, Lcom/estrongs/android/pop/app/diskusage/b;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/diskusage/e;->q(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/pop/app/diskusage/b;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/android/pop/app/diskusage/b;)Lcom/estrongs/android/pop/app/diskusage/b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/b;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/e;->k(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/android/pop/app/diskusage/b;->i:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/diskusage/e;->a:Lcom/estrongs/fs/c/b;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Lcom/estrongs/fs/c/b;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/e;->s(Lcom/estrongs/android/pop/app/diskusage/e;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->a(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/android/pop/app/diskusage/e;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/b;->b(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/b;->a([Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->o(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->t(Lcom/estrongs/android/pop/app/diskusage/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->g(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->r(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/e;->u(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/b;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->v(Lcom/estrongs/android/pop/app/diskusage/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->w(Lcom/estrongs/android/pop/app/diskusage/e;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->y(Lcom/estrongs/android/pop/app/diskusage/e;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/j;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
