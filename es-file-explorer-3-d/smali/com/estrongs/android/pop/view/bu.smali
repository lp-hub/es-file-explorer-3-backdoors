.class Lcom/estrongs/android/pop/view/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/util/aw;->a(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/p;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, v0, Lcom/estrongs/android/util/p;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/util/p;Z)V

    :goto_1
    if-nez v1, :cond_0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bu;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/p;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/util/p;->a:Ljava/lang/Object;

    check-cast v1, Lcom/estrongs/android/view/ar;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/estrongs/android/ui/pcs/az;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/estrongs/android/util/p;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/estrongs/android/ui/pcs/az;

    iget-object v0, v0, Lcom/estrongs/android/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/az;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method
