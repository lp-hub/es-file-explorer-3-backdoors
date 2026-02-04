.class public Lcom/estrongs/fs/b/i;
.super Lcom/estrongs/a/a;


# instance fields
.field private a:[B

.field private b:Z

.field protected c:Lcom/estrongs/fs/d;

.field protected d:I

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/b/k;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field k:Lcom/estrongs/fs/b/l;

.field l:Z

.field m:Z

.field public final n:Lcom/estrongs/fs/g;

.field protected o:Z

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:I

.field protected v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/estrongs/fs/b/w;

.field x:Ljava/lang/Long;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v1, p0, Lcom/estrongs/fs/b/i;->c:Lcom/estrongs/fs/d;

    iput v3, p0, Lcom/estrongs/fs/b/i;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    iput v3, p0, Lcom/estrongs/fs/b/i;->g:I

    iput v3, p0, Lcom/estrongs/fs/b/i;->h:I

    iput-boolean v3, p0, Lcom/estrongs/fs/b/i;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->j:Z

    new-instance v0, Lcom/estrongs/fs/b/l;

    invoke-direct {v0}, Lcom/estrongs/fs/b/l;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->k:Lcom/estrongs/fs/b/l;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/i;->l:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/i;->m:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/i;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->r:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->s:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->t:Ljava/util/Set;

    iput v2, p0, Lcom/estrongs/fs/b/i;->u:I

    iput-object v1, p0, Lcom/estrongs/fs/b/i;->a:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->v:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/i;->y:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/i;->z:Z

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->x:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/i;->c:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    iput v2, p0, Lcom/estrongs/fs/b/i;->g:I

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->v:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {p2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v4, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-object v0, v4, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    const-string v4, "item_paste_name"

    invoke-interface {p2, v4}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, "item_paste_name"

    invoke-interface {p2, v0}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    new-instance v4, Lcom/estrongs/fs/b/k;

    invoke-direct {v4, p2, v0, v5, v6}, Lcom/estrongs/fs/b/k;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->o:Z

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/b/i;->d:I

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, v1, Lcom/estrongs/a/a/i;->l:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->l:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->canRestart:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/fs/b/i;->task_type:I

    const-string v0, "title"

    invoke-interface {p2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/i;->h()V

    return-void

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move-object p4, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V
    .locals 12
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

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->c:Lcom/estrongs/fs/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/fs/b/i;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/fs/b/i;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/fs/b/i;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->j:Z

    new-instance v0, Lcom/estrongs/fs/b/l;

    invoke-direct {v0}, Lcom/estrongs/fs/b/l;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->k:Lcom/estrongs/fs/b/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->r:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->s:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->t:Ljava/util/Set;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/i;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->a:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->v:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->z:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->x:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/i;->c:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/b/i;->g:I

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->v:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    if-eq v0, v5, :cond_5

    const-string v0, " , "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    if-lt v2, v0, :cond_5

    const-string v0, "..."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v5, :cond_6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_3
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    const-string v7, "item_paste_name"

    invoke-interface {v0, v7}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    const-string v2, "item_paste_name"

    invoke-interface {v0, v2}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :cond_2
    iget-object v7, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    new-instance v8, Lcom/estrongs/fs/b/k;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v9, 0x0

    invoke-direct {v8, v0, v2, v9, v10}, Lcom/estrongs/fs/b/k;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;J)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->o:Z

    if-nez v0, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->o:Z

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/i;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v1, Lcom/estrongs/a/a/i;->l:Z

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->E(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/b/i;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->canRestart:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/fs/b/i;->task_type:I

    const-string v1, ""

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_7

    if-ne v1, v3, :cond_a

    :cond_7
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/i;->h()V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_5

    :cond_b
    move-object v2, v0

    goto/16 :goto_3

    :cond_c
    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/i;Lcom/estrongs/a/a/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/b/i;->onProgress(Lcom/estrongs/a/a/i;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/fs/b/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/fs/b/i;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->hasProgressListener()Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    iget-wide v1, p0, Lcom/estrongs/fs/b/i;->startTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/estrongs/fs/b/i;->startTime:J

    :cond_0
    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/i;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    iget v2, p0, Lcom/estrongs/fs/b/i;->task_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "source"

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "target"

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private i()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/fs/b/w;

    iget-object v3, p0, Lcom/estrongs/fs/b/i;->c:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4}, Lcom/estrongs/fs/b/w;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;)V

    iput-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->getProgressListeners()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/b/w;->addProgressListeners(Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/w;->execute(Z)V

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/w;->getTaskStatus()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/w;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    iget-object v1, v1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

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

    iget-object v4, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v5, v4, Lcom/estrongs/a/a/i;->c:J

    iget v7, v0, Lcom/estrongs/fs/b/x;->d:I

    iget v8, v0, Lcom/estrongs/fs/b/x;->e:I

    add-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/estrongs/a/a/i;->c:J

    iget-object v4, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v5, v4, Lcom/estrongs/a/a/i;->e:J

    iget-wide v7, v0, Lcom/estrongs/fs/b/x;->c:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/estrongs/a/a/i;->e:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->l:Z

    :cond_2
    const-string v0, "size"

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v1, Lcom/estrongs/a/a/i;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-wide/16 v1, -0x1

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iput-wide v1, v0, Lcom/estrongs/a/a/i;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->l:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/i;->m:Z

    return-void
.end method

.method public addProgressListener(Lcom/estrongs/a/a/h;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/w;->addProgressListener(Lcom/estrongs/a/a/h;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/i;->i:Z

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->a:[B

    return-object v0
.end method

.method public c()Ljava/util/List;
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

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->v:Ljava/util/List;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/i;->j:Z

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/i;->b:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->i:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/i;->y:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->j:Z

    return v0
.end method

.method public f()Lcom/estrongs/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    iget-object v0, v0, Lcom/estrongs/fs/b/w;->processData:Lcom/estrongs/a/a/i;

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->y:Z

    return v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v2, Lcom/estrongs/a/a/i;->d:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/i;->h:J

    goto :goto_1

    :pswitch_3
    array-length v0, p2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "RBT"

    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/estrongs/a/a/i;->f:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->x:Ljava/lang/Long;

    :goto_2
    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v2, Lcom/estrongs/a/a/i;->f:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, v2, Lcom/estrongs/a/a/i;->f:J

    goto :goto_2

    :pswitch_4
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_3
    iget-object v2, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iput-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    goto/16 :goto_1

    :pswitch_5
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->e:Ljava/util/HashMap;

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    iget v0, p0, Lcom/estrongs/fs/b/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/i;->h:I

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->k:Lcom/estrongs/fs/b/l;

    iput-boolean v5, v0, Lcom/estrongs/fs/b/l;->a:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected postTask()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->t:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/j/b;->b()Lcom/estrongs/fs/impl/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/j/b;->a(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/h/b;->b()Lcom/estrongs/fs/impl/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/h/b;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/p/b;->b()Lcom/estrongs/fs/impl/p/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/b;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bt;->b()V

    goto :goto_0
.end method

.method public removeProgressListener(Lcom/estrongs/a/a/h;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->w:Lcom/estrongs/fs/b/w;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/w;->removeProgressListener(Lcom/estrongs/a/a/h;)V

    :cond_0
    return-void
.end method

.method public task()Z
    .locals 14

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/a/a/i;->o:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/i;->z:Z

    const/high16 v2, 0x20000

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/16 v0, 0x1400

    :goto_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/b/i;->a:[B

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->k:Lcom/estrongs/fs/b/l;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/estrongs/fs/b/l;->a:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->o:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    new-instance v2, Lcom/estrongs/a/q;

    const-string v3, "Error"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    :cond_2
    :goto_1
    return v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_4
    const v0, 0x8000

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v0, Lcom/estrongs/a/a/i;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v2, v0, Lcom/estrongs/a/a/i;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->e:J

    invoke-direct {p0}, Lcom/estrongs/fs/b/i;->i()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/estrongs/a/a/i;->e:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_7

    :try_start_3
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v6, v0, Lcom/estrongs/a/a/i;->e:J

    mul-long v8, v4, v2

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    const/16 v0, 0x9

    new-instance v6, Lcom/estrongs/a/q;

    const-string v7, "Error"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v10, v10, Lcom/estrongs/a/a/i;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    new-instance v0, Lcom/estrongs/fs/b/j;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/j;-><init>(Lcom/estrongs/fs/b/i;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/j;->start()V

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v2, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/i;->onProgress(Lcom/estrongs/a/a/i;)V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    const/4 v2, 0x2

    iput v2, v0, Lcom/estrongs/a/a/i;->i:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->taskStopped()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v1, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_a
    :try_start_6
    iget-boolean v0, p0, Lcom/estrongs/fs/b/i;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-eqz v0, :cond_7

    :try_start_7
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v6, v0, Lcom/estrongs/a/a/i;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v8, v0, Lcom/estrongs/a/a/i;->f:J

    sub-long/2addr v6, v8

    mul-long v8, v4, v2

    cmp-long v0, v6, v8

    if-lez v0, :cond_7

    const/16 v0, 0x9

    new-instance v6, Lcom/estrongs/a/q;

    const-string v7, "Error"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v10, v10, Lcom/estrongs/a/a/i;->e:J

    iget-object v12, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v12, v12, Lcom/estrongs/a/a/i;->f:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, 0x2710

    new-instance v3, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_b
    :try_start_a
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/k;

    iget-object v1, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    const-string v3, "user_info"

    invoke-interface {v1, v3}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v1, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_c
    :try_start_b
    iget-object v1, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/estrongs/fs/b/k;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/b/k;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/fs/b/i;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_d

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/g;

    move-result-object v1

    if-eqz v1, :cond_e

    :cond_d
    new-instance v1, Lcom/estrongs/fs/n;

    iget-object v3, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/estrongs/fs/n;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v1, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_f
    :try_start_c
    iget-object v1, p0, Lcom/estrongs/fs/b/i;->e:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v3}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/estrongs/fs/n;

    iget-object v3, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    iget-object v4, p0, Lcom/estrongs/fs/b/i;->e:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/estrongs/fs/n;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_10
    new-instance v1, Lcom/estrongs/fs/n;

    iget-object v3, p0, Lcom/estrongs/fs/b/i;->n:Lcom/estrongs/fs/g;

    iget-object v0, v0, Lcom/estrongs/fs/b/k;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/estrongs/fs/n;-><init>(Lcom/estrongs/fs/g;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v2, v1, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    :cond_11
    throw v0

    :cond_12
    :try_start_d
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->c:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v1, Lcom/estrongs/a/a/i;->c:J

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->d:J

    :cond_13
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v0, v0, Lcom/estrongs/a/a/i;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-object v1, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    iget-wide v3, v1, Lcom/estrongs/a/a/i;->e:J

    iput-wide v3, v0, Lcom/estrongs/a/a/i;->f:J

    :cond_14
    iget-object v0, p0, Lcom/estrongs/fs/b/i;->processData:Lcom/estrongs/a/a/i;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/i;->onProgress(Lcom/estrongs/a/a/i;)V

    const-class v0, Lcom/estrongs/a/a/e;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/i;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/e;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/estrongs/fs/b/i;->h:I

    iget v1, p0, Lcom/estrongs/fs/b/i;->g:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_6
    const/4 v0, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/fs/b/i;->z:Z

    iget-boolean v1, p0, Lcom/estrongs/fs/b/i;->b:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v3, p0, Lcom/estrongs/fs/b/i;->u:I

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_1

    :cond_15
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/estrongs/fs/b/i;->k:Lcom/estrongs/fs/b/l;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/i;->setTaskResult(ILjava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_16
    move v0, v2

    goto/16 :goto_0
.end method
