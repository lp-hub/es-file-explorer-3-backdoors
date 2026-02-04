.class public Lcom/estrongs/android/ui/c/u;
.super Lcom/estrongs/android/view/ar;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/estrongs/a/l;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/c/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/u;->a:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/u;->b:Lcom/estrongs/a/l;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/u;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/u;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/u;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/c/u;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/c/u;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/c/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/u;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/c/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/u;->l:Z

    return v0
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->b:Lcom/estrongs/a/l;

    invoke-virtual {v0}, Lcom/estrongs/a/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    instance-of v2, v0, Lcom/estrongs/fs/b/z;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/a/a;->resume()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->b:Lcom/estrongs/a/l;

    invoke-virtual {v0}, Lcom/estrongs/a/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    instance-of v2, v0, Lcom/estrongs/fs/b/z;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->requsestPause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private p()I
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->b:Lcom/estrongs/a/l;

    invoke-virtual {v0}, Lcom/estrongs/a/l;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/u;->a:Ljava/util/List;

    new-instance v3, Lcom/estrongs/android/ui/c/k;

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/c/k;-><init>(Lcom/estrongs/a/a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/u;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;)Lcom/estrongs/android/ui/c/f;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/f;->a()Lcom/estrongs/a/a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/c/u;->w:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/fs/m;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/u;->x:Lcom/estrongs/fs/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/u;->b(Z)V

    return-void
.end method

.method public a_()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/u;->o()V

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/u;->p()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0383

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/u;->f(I)V

    :cond_0
    return-void
.end method

.method public b_()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/u;->o()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->w:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/estrongs/fs/g;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/u;->j()Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setSelector(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/ui/c/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/v;-><init>(Lcom/estrongs/android/ui/c/u;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/c/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/w;-><init>(Lcom/estrongs/android/ui/c/u;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/u;->e:Lcom/estrongs/android/widget/c;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/u;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/u;->e:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public j()Lcom/estrongs/fs/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/u;->n()V

    return-void
.end method
