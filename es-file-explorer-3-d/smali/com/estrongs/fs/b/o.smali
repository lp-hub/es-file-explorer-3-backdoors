.class public Lcom/estrongs/fs/b/o;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;ZZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->c:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/o;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    iput v1, p0, Lcom/estrongs/fs/b/o;->i:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/o;->l:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/estrongs/fs/b/o;->m:J

    iput-boolean v2, p0, Lcom/estrongs/fs/b/o;->n:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/o;->a:Lcom/estrongs/fs/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/estrongs/fs/b/o;->d:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/fs/b/o;->task_type:I

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->m:Z

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->o:Z

    const-string v0, "source"

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/o;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/estrongs/fs/b/o;->canPause:Z

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/estrongs/fs/b/o;->c()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/fs/b/o;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    iput v3, p0, Lcom/estrongs/fs/b/o;->i:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/o;->l:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/estrongs/fs/b/o;->m:J

    iput-boolean v1, p0, Lcom/estrongs/fs/b/o;->n:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/o;->a:Lcom/estrongs/fs/d;

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p3, p0, Lcom/estrongs/fs/b/o;->d:Z

    iput v6, p0, Lcom/estrongs/fs/b/o;->task_type:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    if-eq v0, v5, :cond_3

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v2, v6, :cond_3

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-lez v5, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v1, v2, Lcom/estrongs/a/a/i;->m:Z

    iget-object v4, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    if-nez v0, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, v4, Lcom/estrongs/a/a/i;->l:Z

    iget-object v2, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v1, v2, Lcom/estrongs/a/a/i;->k:Z

    iget-object v2, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v1, v2, Lcom/estrongs/a/a/i;->n:Z

    iget-object v2, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    if-nez v0, :cond_6

    :goto_3
    iput-boolean v3, v2, Lcom/estrongs/a/a/i;->o:Z

    if-lez v5, :cond_1

    const-string v2, "source"

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/fs/b/o;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/estrongs/fs/b/o;->c()V

    :cond_2
    iput-boolean v1, p0, Lcom/estrongs/fs/b/o;->canPause:Z

    return-void

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/estrongs/fs/b/o;Lcom/estrongs/a/a/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/b/o;->onProgress(Lcom/estrongs/a/a/i;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/b/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/o;->l:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/.estrongs/recycle/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/estrongs/fs/b/o;->m:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/es_recycle_content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/o;->m:J

    iget-wide v0, p0, Lcom/estrongs/fs/b/o;->m:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/k/a;->a(J)V

    return-void
.end method

.method private d()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/fs/b/w;

    iget-object v3, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/o;->a:Lcom/estrongs/fs/d;

    invoke-direct {v1, v3, v4}, Lcom/estrongs/fs/b/w;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    iget-object v3, v1, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v0, v3, Lcom/estrongs/a/a/i;->k:Z

    invoke-virtual {p0}, Lcom/estrongs/fs/b/o;->getProgressListeners()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/b/w;->addProgressListeners(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/w;->execute(Z)V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/w;->getTaskStatus()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/fs/b/w;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    iget-object v1, v1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/o;->setTaskResult(ILjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/fs/b/w;->a()Ljava/util/List;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/x;

    iget-object v4, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v5, v4, Lcom/estrongs/a/a/i;->c:J

    iget v7, v0, Lcom/estrongs/fs/b/x;->d:I

    iget v8, v0, Lcom/estrongs/fs/b/x;->e:I

    add-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/estrongs/a/a/i;->c:J

    iget-object v4, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v5, v4, Lcom/estrongs/a/a/i;->e:J

    iget-wide v7, v0, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/estrongs/a/a/i;->e:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->l:Z

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/io/File;)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/estrongs/android/util/ak;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/estrongs/android/util/ak;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    iget-wide v7, p0, Lcom/estrongs/fs/b/o;->m:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.nomedia"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->g(Ljava/lang/String;)Z

    :cond_1
    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    :goto_1
    return v1

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    :goto_4
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    goto :goto_4

    :cond_8
    invoke-static {v6}, Lcom/estrongs/android/util/ak;->bE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v5, p0, Lcom/estrongs/fs/b/o;->n:Z

    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    goto/16 :goto_1

    :cond_a
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/b/o;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected postTask()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/estrongs/fs/b/o;->m:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/o;->n:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    const-string v1, "recycle://"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->c(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/estrongs/fs/b/o;->m:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/estrongs/fs/b/o;->m:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/k/a;->b(J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->c(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->c(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->c(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->c(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->c(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/o;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/estrongs/fs/impl/k/a;->a()V

    goto :goto_1
.end method

.method public task()Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/fs/b/o;->l:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/o;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v1, v0, Lcom/estrongs/a/a/i;->o:Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v4, v0, Lcom/estrongs/a/a/i;->c:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    iget-wide v4, v0, Lcom/estrongs/a/a/i;->e:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/o;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/estrongs/a/a/i;->e:J

    invoke-direct {p0}, Lcom/estrongs/fs/b/o;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/o;->onProgress(Lcom/estrongs/a/a/i;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/o;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/fs/b/p;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/p;-><init>(Lcom/estrongs/fs/b/o;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/p;->start()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->a:Lcom/estrongs/fs/d;

    iget-object v2, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/o;->c:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "item_count"

    invoke-interface {v0, v4}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    move-object v0, v3

    :goto_2
    if-nez v2, :cond_6

    if-nez v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v4, 0x7f0b01b4

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const/4 v1, 0x7

    new-instance v4, Lcom/estrongs/a/q;

    invoke-direct {v4, v0, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/fs/b/o;->setTaskResult(ILjava/lang/Object;)V

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/o;->l:Z

    move v0, v2

    goto/16 :goto_0

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    instance-of v5, v0, Lcom/estrongs/fs/impl/b/f;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/estrongs/fs/impl/b/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    move v2, v1

    goto/16 :goto_2

    :cond_9
    const-string v0, ""

    goto/16 :goto_3
.end method
