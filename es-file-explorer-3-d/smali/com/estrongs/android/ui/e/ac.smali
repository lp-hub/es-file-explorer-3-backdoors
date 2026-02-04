.class Lcom/estrongs/android/ui/e/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/view/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/az;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/cz;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    new-instance v1, Lcom/estrongs/android/ui/b/cz;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/cz;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/cz;)Lcom/estrongs/android/ui/b/cz;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/ad;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ad;-><init>(Lcom/estrongs/android/ui/e/ac;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/cz;->a(Lcom/estrongs/android/ui/b/dd;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ae;-><init>(Lcom/estrongs/android/ui/e/ac;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/cz;->a(Lcom/estrongs/android/ui/b/dc;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/cz;->show()V

    goto :goto_0
.end method
