.class Lcom/estrongs/android/ui/e/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/co;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/co;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/co;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/bz;->b(Lcom/estrongs/android/ui/e/bz;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/aw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;ZLjava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/co;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    return v2
.end method
