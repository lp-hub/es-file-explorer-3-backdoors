.class public Lcom/estrongs/fs/b/ab;
.super Lcom/estrongs/a/a;


# instance fields
.field private a:Lcom/estrongs/fs/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/ab;->j:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->k:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/ab;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    iput-object p4, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->p:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->n:Z

    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v1, v7, v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ab;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/fs/b/ab;->j:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->h(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/ab;->j:I

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->e(Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/lang/String;)I

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->b(Ljava/lang/String;)I

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->b(Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected postTask()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/a/a;->postTask()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->a()V

    :cond_0
    return-void
.end method

.method public task()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ab;->onProgress(Lcom/estrongs/a/a/i;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ab;->onProgress(Lcom/estrongs/a/a/i;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Lcom/estrongs/fs/g;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_5

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ab;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ab;->k:Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->a()V

    :cond_3
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    iget v2, p0, Lcom/estrongs/fs/b/ab;->j:I

    invoke-virtual {v0, v1, v6, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;Ljava/lang/String;I)V

    :cond_4
    move v0, v7

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ab;->onProgress(Lcom/estrongs/a/a/i;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ab;->setTaskResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ab;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ab;->k:Z

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->a()V

    :cond_7
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    iget v2, p0, Lcom/estrongs/fs/b/ab;->j:I

    invoke-virtual {v0, v1, v7, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;Ljava/lang/String;I)V

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v6, v7

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, 0x2710

    new-instance v2, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/ab;->setTaskResult(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v6, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ab;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ab;->k:Z

    :cond_8
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->a()V

    :cond_9
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    iget v2, p0, Lcom/estrongs/fs/b/ab;->j:I

    invoke-virtual {v0, v1, v7, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;Ljava/lang/String;I)V

    move v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v6, v0

    :goto_2
    if-eqz v7, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/ab;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-boolean v8, p0, Lcom/estrongs/fs/b/ab;->k:Z

    :cond_a
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->a()V

    :cond_b
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/g;

    iget v2, p0, Lcom/estrongs/fs/b/ab;->j:I

    invoke-virtual {v0, v1, v7, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/g;Ljava/lang/String;I)V

    :cond_c
    throw v6

    :catchall_1
    move-exception v0

    move v7, v6

    move-object v6, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move v7, v6

    move-object v6, v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_d
    move v0, v6

    goto/16 :goto_0

    :cond_e
    move v0, v6

    goto/16 :goto_0
.end method
