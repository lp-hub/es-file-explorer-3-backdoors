.class Lcom/estrongs/android/pop/utils/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/bi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bi;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->h()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bi;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bi;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bi;->d:Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/bi;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->g(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/Object;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v2, v2, Lcom/estrongs/android/pop/utils/bi;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "item_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bj;->a:Lcom/estrongs/android/pop/utils/bi;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bi;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
