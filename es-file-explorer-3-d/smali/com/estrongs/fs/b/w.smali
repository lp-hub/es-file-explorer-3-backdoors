.class public Lcom/estrongs/fs/b/w;
.super Lcom/estrongs/a/a;


# static fields
.field public static e:I

.field public static f:I


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/estrongs/fs/d;

.field private d:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/x;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/b/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/fs/b/w;->e:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/fs/b/w;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/k;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    sget v0, Lcom/estrongs/fs/b/w;->e:I

    iput v0, p0, Lcom/estrongs/fs/b/w;->a:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/w;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/w;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/w;->g:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    iput-object p1, p0, Lcom/estrongs/fs/b/w;->c:Lcom/estrongs/fs/d;

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->m:Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/estrongs/a/a/i;->l:Z

    :cond_0
    const/16 v0, 0xa

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/w;->sendMessage(I[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    new-instance v3, Lcom/estrongs/fs/b/x;

    invoke-direct {v3}, Lcom/estrongs/fs/b/x;-><init>()V

    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/b/x;->a:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    iput-object v0, v3, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/estrongs/fs/b/w;->task_type:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/w;->canRestart:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/fs/b/w;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/d;",
            "Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    sget v0, Lcom/estrongs/fs/b/w;->e:I

    iput v0, p0, Lcom/estrongs/fs/b/w;->a:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/w;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/w;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/w;->g:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    iput-boolean p3, p0, Lcom/estrongs/fs/b/w;->d:Z

    iput-object p2, p0, Lcom/estrongs/fs/b/w;->c:Lcom/estrongs/fs/d;

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->m:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/estrongs/a/a/i;->l:Z

    :cond_0
    const/16 v0, 0xa

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/w;->sendMessage(I[Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    new-instance v3, Lcom/estrongs/fs/b/x;

    invoke-direct {v3}, Lcom/estrongs/fs/b/x;-><init>()V

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/fs/b/x;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    iput-object v0, v3, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;

    iget-boolean v0, p0, Lcom/estrongs/fs/b/w;->d:Z

    iput-boolean v0, v3, Lcom/estrongs/fs/b/x;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/estrongs/fs/b/w;->task_type:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/w;->canRestart:Z

    return-void
.end method

.method private a(Lcom/estrongs/fs/b/x;Lcom/estrongs/fs/b/x;)V
    .locals 4

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->c:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->c:J

    iget v0, p1, Lcom/estrongs/fs/b/x;->d:I

    iget v1, p2, Lcom/estrongs/fs/b/x;->d:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/b/x;->d:I

    iget v0, p1, Lcom/estrongs/fs/b/x;->e:I

    iget v1, p2, Lcom/estrongs/fs/b/x;->e:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/b/x;->e:I

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->f:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->f:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->g:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->g:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->h:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->h:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->i:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->i:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->j:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->j:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->k:J

    iget-wide v2, p2, Lcom/estrongs/fs/b/x;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->k:J

    return-void
.end method

.method private a(Lcom/estrongs/fs/b/x;Ljava/lang/String;J)V
    .locals 2

    invoke-static {p2}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/av;->A(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->i:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->i:J

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/av;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->g:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->g:J

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/av;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->h:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->h:J

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/estrongs/android/util/av;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->f:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->f:J

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/av;->h(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/av;->s(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/av;->w(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/av;->t(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/av;->k(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->j:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->j:J

    goto :goto_0

    :cond_5
    iget-wide v0, p1, Lcom/estrongs/fs/b/x;->k:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/x;->k:J

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
            "Lcom/estrongs/fs/b/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->g:Ljava/util/List;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/w;->b:Z

    return-void
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/a/a/i;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/w;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public task()Z
    .locals 15

    const-wide/16 v13, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p0}, Lcom/estrongs/fs/b/w;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/x;

    iget-boolean v1, v0, Lcom/estrongs/fs/b/x;->m:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/estrongs/fs/b/x;->p:Lcom/estrongs/fs/b/x;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/estrongs/fs/b/w;->a(Lcom/estrongs/fs/b/x;Lcom/estrongs/fs/b/x;)V

    :cond_1
    iput-boolean v5, v0, Lcom/estrongs/fs/b/x;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/estrongs/fs/b/x;->l:Z

    new-instance v7, Lcom/estrongs/fs/b/x;

    invoke-direct {v7}, Lcom/estrongs/fs/b/x;-><init>()V

    iget-object v3, v0, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->a()Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v5, v0, Lcom/estrongs/fs/b/x;->m:Z

    iget v1, v0, Lcom/estrongs/fs/b/x;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/fs/b/x;->d:I

    iget-object v1, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v1, Lcom/estrongs/a/a/i;->d:J

    add-long/2addr v3, v13

    iput-wide v3, v1, Lcom/estrongs/a/a/i;->d:J

    iget-object v1, v0, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v7, v3

    iput-wide v7, v0, Lcom/estrongs/fs/b/x;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v7, v0, Lcom/estrongs/a/a/i;->f:J

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/w;->onProgress(Lcom/estrongs/a/a/i;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_11

    iget-object v3, v0, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v2

    :goto_3
    iget v1, v0, Lcom/estrongs/fs/b/x;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/fs/b/x;->e:I

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/fs/b/w;->c:Lcom/estrongs/fs/d;

    iget-object v1, v0, Lcom/estrongs/fs/b/x;->a:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/estrongs/fs/b/x;->a:Ljava/lang/String;

    :goto_4
    const/4 v8, 0x1

    invoke-virtual {v4, v1, v8}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    if-nez v8, :cond_9

    iput-boolean v5, v0, Lcom/estrongs/fs/b/x;->m:Z

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    iget-object v3, v0, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->bn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_3

    :cond_8
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/estrongs/fs/b/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_4

    :cond_9
    move v4, v2

    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_e

    invoke-virtual {p0}, Lcom/estrongs/fs/b/w;->taskStopped()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/estrongs/fs/b/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v0, Lcom/estrongs/a/a/i;->d:J

    iget-wide v5, v7, Lcom/estrongs/fs/b/x;->c:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v0, Lcom/estrongs/a/a/i;->f:J

    iget v1, v7, Lcom/estrongs/fs/b/x;->d:I

    iget v5, v7, Lcom/estrongs/fs/b/x;->e:I

    add-int/2addr v1, v5

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/w;->onProgress(Lcom/estrongs/a/a/i;)V

    goto/16 :goto_1

    :cond_a
    :try_start_2
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    iget-object v9, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v9

    invoke-virtual {v9}, Lcom/estrongs/fs/l;->a()Z

    move-result v9

    if-eqz v9, :cond_c

    iget v9, v7, Lcom/estrongs/fs/b/x;->e:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Lcom/estrongs/fs/b/x;->e:I

    iget-object v9, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v10, v9, Lcom/estrongs/a/a/i;->d:J

    add-long/2addr v10, v13

    iput-wide v10, v9, Lcom/estrongs/a/a/i;->d:J

    iget-boolean v9, p0, Lcom/estrongs/fs/b/w;->b:Z

    if-eqz v9, :cond_b

    new-instance v9, Lcom/estrongs/fs/b/x;

    invoke-direct {v9}, Lcom/estrongs/fs/b/x;-><init>()V

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/estrongs/fs/b/x;->a:Ljava/lang/String;

    iput-object v0, v9, Lcom/estrongs/fs/b/x;->p:Lcom/estrongs/fs/b/x;

    iput-object v1, v9, Lcom/estrongs/fs/b/x;->b:Lcom/estrongs/fs/g;

    iput-boolean v3, v9, Lcom/estrongs/fs/b/x;->l:Z

    iget-object v1, v0, Lcom/estrongs/fs/b/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v1, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/w;->onProgress(Lcom/estrongs/a/a/i;)V

    :goto_6
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_c
    iget v9, v7, Lcom/estrongs/fs/b/x;->d:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Lcom/estrongs/fs/b/x;->d:I

    iget-object v9, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v10, v9, Lcom/estrongs/a/a/i;->d:J

    add-long/2addr v10, v13

    iput-wide v10, v9, Lcom/estrongs/a/a/i;->d:J

    invoke-interface {v1}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v9

    iget-wide v11, v7, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v11, v9

    iput-wide v11, v7, Lcom/estrongs/fs/b/x;->c:J

    iget v11, p0, Lcom/estrongs/fs/b/w;->a:I

    sget v12, Lcom/estrongs/fs/b/w;->f:I

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_d

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v1, v9, v10}, Lcom/estrongs/fs/b/w;->a(Lcom/estrongs/fs/b/x;Ljava/lang/String;J)V

    :cond_d
    iget-object v1, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    iget-wide v11, v1, Lcom/estrongs/a/a/i;->f:J

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/estrongs/a/a/i;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/w;->onProgress(Lcom/estrongs/a/a/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_6

    :cond_e
    invoke-direct {p0, v0, v7}, Lcom/estrongs/fs/b/w;->a(Lcom/estrongs/fs/b/x;Lcom/estrongs/fs/b/x;)V

    move v1, v2

    :goto_7
    iget-object v3, v0, Lcom/estrongs/fs/b/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Lcom/estrongs/fs/b/w;->h:Ljava/util/Stack;

    iget-object v4, v0, Lcom/estrongs/fs/b/x;->o:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    iput-boolean v5, v0, Lcom/estrongs/fs/b/x;->m:Z

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/fs/b/w;->setTaskResult(ILjava/lang/Object;)V

    move v2, v5

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_11
    move v3, v1

    goto/16 :goto_3
.end method
