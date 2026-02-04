.class public Lcom/estrongs/fs/b/y;
.super Lcom/estrongs/fs/b/i;


# instance fields
.field protected A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Lcom/estrongs/fs/b/o;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private I:I

.field private J:Z

.field private K:Lcom/estrongs/a/a;

.field private L:Z

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/g;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V

    iput-boolean v2, p0, Lcom/estrongs/fs/b/y;->y:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/y;->z:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->A:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    iput-object v1, p0, Lcom/estrongs/fs/b/y;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/fs/b/y;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->D:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->E:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->F:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->G:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->H:Ljava/util/List;

    iput v3, p0, Lcom/estrongs/fs/b/y;->I:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/y;->J:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/y;->L:Z

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/y;->y:Z

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/estrongs/fs/b/y;->canRestart:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/fs/b/y;->task_type:I

    const-string v0, "task_type"

    iget v1, p0, Lcom/estrongs/fs/b/y;->task_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/estrongs/fs/b/y;->z:Z

    goto :goto_0
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

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/y;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/a/a;->h(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/fs/b/y;->I:I

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

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->D:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/fs/b/y;->E:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/y;->F:Ljava/util/List;

    iget-object v5, p0, Lcom/estrongs/fs/b/y;->G:Ljava/util/List;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/fs/b/y;->a(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->taskStopped()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v3, v2, v0

    invoke-direct {p0, v3, p2, p3}, Lcom/estrongs/fs/b/y;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_5
    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "Move"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Move"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exist failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/y;->K:Lcom/estrongs/a/a;

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/y;->L:Z

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->D:Ljava/util/List;

    return-object v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/fs/b/i;->handleMessage(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->E:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->F:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->G:Ljava/util/List;

    return-object v0
.end method

.method protected postTask()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/fs/b/i;->postTask()V

    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->L:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->J:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->H:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->b(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->b(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->b(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->D:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->E:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->F:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public removeProgressListener(Lcom/estrongs/a/a/h;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/fs/b/i;->removeProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/o;->removeProgressListener(Lcom/estrongs/a/a/h;)V

    :cond_0
    return-void
.end method

.method public task()Z
    .locals 13

    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->o:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    new-instance v1, Lcom/estrongs/a/q;

    const-string v2, "Error"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->l:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->o:Z

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->y:Z

    if-eqz v0, :cond_17

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/i;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->taskStopped()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v5, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v8, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/i;)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/estrongs/android/util/aw;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {v8}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->K:Lcom/estrongs/a/a;

    if-nez v0, :cond_6

    const-class v9, Lcom/estrongs/a/a/e;

    const/4 v0, 0x4

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v8, v10, v0

    const/4 v0, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v0

    const/4 v11, 0x2

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    aput-object v0, v10, v11

    const/4 v0, 0x3

    iget-object v11, p0, Lcom/estrongs/fs/b/y;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v11, v8}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-virtual {p0, v9, v10}, Lcom/estrongs/fs/b/y;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/e;

    :goto_4
    iget v9, v0, Lcom/estrongs/a/a/e;->g:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v0, v5, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto/16 :goto_3

    :cond_6
    iget-object v9, p0, Lcom/estrongs/fs/b/y;->K:Lcom/estrongs/a/a;

    const-class v10, Lcom/estrongs/a/a/e;

    const/4 v0, 0x4

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v8, v11, v0

    const/4 v0, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v12, 0x2

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    aput-object v0, v11, v12

    const/4 v0, 0x3

    iget-object v12, p0, Lcom/estrongs/fs/b/y;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v12, v8}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-virtual {v9, v10, v11}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/e;

    goto :goto_4

    :cond_7
    iget v9, v0, Lcom/estrongs/a/a/e;->g:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/estrongs/fs/b/y;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/fs/n;

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->n:Lcom/estrongs/fs/g;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/n;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/i;)V

    invoke-direct {p0, v7, v8}, Lcom/estrongs/fs/b/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/y;->J:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v5, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    throw v0

    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->n:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v5, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->n:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z

    :cond_d
    :goto_8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/estrongs/fs/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :cond_f
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->A:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7, v8}, Lcom/estrongs/fs/b/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/y;->J:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/fs/n;

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->n:Lcom/estrongs/fs/g;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/estrongs/fs/n;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_9
    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/i;)V

    goto/16 :goto_2

    :cond_11
    iget v9, v0, Lcom/estrongs/a/a/e;->g:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_12

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v6, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v1, v5, v2}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_12
    :try_start_5
    iget v0, v0, Lcom/estrongs/a/a/e;->g:I

    const/4 v9, 0x5

    if-ne v0, v9, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-static {v8}, Lcom/estrongs/fs/c/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {p0, v1, v9}, Lcom/estrongs/fs/b/y;->sendMessage(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/y;->onProgress(Lcom/estrongs/a/a/i;)V

    move-object v1, v0

    goto/16 :goto_8

    :cond_13
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :cond_14
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/y;->I:I

    invoke-virtual {v0, v5, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    goto/16 :goto_5

    :cond_15
    iput-object v4, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->a()V

    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_17
    iget-boolean v0, p0, Lcom/estrongs/fs/b/y;->z:Z

    if-eqz v0, :cond_16

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->c:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->v:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/fs/b/y;->n:Lcom/estrongs/fs/g;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Lcom/estrongs/fs/g;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_18
    invoke-super {p0}, Lcom/estrongs/fs/b/i;->task()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/fs/b/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    const/16 v0, 0x2710

    new-instance v1, Lcom/estrongs/a/q;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/y;->setTaskResult(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/estrongs/fs/b/y;->C:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/estrongs/fs/b/y;->d:I

    if-nez v0, :cond_1d

    :cond_1c
    new-instance v0, Lcom/estrongs/fs/b/o;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->c:Lcom/estrongs/fs/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->C:Ljava/util/List;

    iput-object v1, v0, Lcom/estrongs/fs/b/o;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/a/a/i;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    iget-object v0, v0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/y;->getProgressListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/o;->addProgressListeners(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/o;->execute(Z)V

    iget-object v0, p0, Lcom/estrongs/fs/b/y;->A:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/y;->B:Lcom/estrongs/fs/b/o;

    iget-object v1, v1, Lcom/estrongs/fs/b/o;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
