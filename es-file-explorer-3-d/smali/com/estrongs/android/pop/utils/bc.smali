.class final Lcom/estrongs/android/pop/utils/bc;
.super Lcom/estrongs/fs/b/y;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/fs/g;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;Landroid/app/Activity;Lcom/estrongs/fs/g;)V
    .locals 0

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bc;->a:Landroid/app/Activity;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bc;->b:Lcom/estrongs/fs/g;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/b/y;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V

    return-void
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->A:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "item_count"

    invoke-interface {v0, v3}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/g;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/estrongs/fs/b/o;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bc;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/b/o;->execute(Z)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->b:Lcom/estrongs/fs/g;

    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->b:Lcom/estrongs/fs/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/g;)I

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bc;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bc;->a:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/utils/bd;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/utils/bd;-><init>(Lcom/estrongs/android/pop/utils/bc;Lcom/estrongs/android/view/ar;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public task()Z
    .locals 1

    invoke-super {p0}, Lcom/estrongs/fs/b/y;->task()Z

    move-result v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/bc;->l()V

    return v0
.end method
