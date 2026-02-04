.class Lcom/estrongs/android/ui/e/dk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->b(Lcom/estrongs/android/ui/e/bz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;Lcom/estrongs/fs/g;)Lcom/estrongs/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v1, v2, Lcom/estrongs/fs/b/q;

    if-eqz v1, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/b/q;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/q;->requestStop()V

    invoke-virtual {v2}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "target"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    iget-object v2, v1, Lcom/estrongs/fs/b/q;->e:Ljava/lang/String;

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/a/b/p;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/ui/c/u;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/c/u;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/ui/c/u;->a(Lcom/estrongs/a/a;)Lcom/estrongs/android/ui/c/f;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/estrongs/fs/b/q;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v5

    invoke-virtual {v1}, Lcom/estrongs/fs/b/q;->summary()Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/estrongs/fs/b/q;-><init>(Lcom/estrongs/fs/d;Lorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/q;->reset()V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/q;->execute()V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/c/f;->a(Lcom/estrongs/a/a;)V

    const-string v2, "task"

    invoke-interface {v0, v2, v3}, Lcom/estrongs/fs/g;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/q;->requestStop()V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;Z)V

    invoke-static {}, Lcom/estrongs/a/l;->a()Lcom/estrongs/a/l;

    move-result-object v0

    invoke-virtual {v0, v3, v7}, Lcom/estrongs/a/l;->a(Lcom/estrongs/a/a;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    return v7

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method
