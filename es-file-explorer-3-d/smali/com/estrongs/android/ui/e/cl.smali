.class Lcom/estrongs/android/ui/e/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->b(Lcom/estrongs/android/ui/e/bz;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/aw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    const/4 v0, 0x1

    return v0
.end method
