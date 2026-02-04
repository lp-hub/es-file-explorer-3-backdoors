.class Lcom/estrongs/android/ui/e/dp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->b(Lcom/estrongs/android/ui/e/bz;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    const-string v2, "task"

    invoke-interface {v0, v2}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/a/a;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/estrongs/android/ui/c/d;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-direct {v2, v3, v0}, Lcom/estrongs/android/ui/c/d;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/c/d;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dp;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    return v4
.end method
