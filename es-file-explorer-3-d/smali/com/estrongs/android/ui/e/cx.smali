.class Lcom/estrongs/android/ui/e/cx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->f()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->i()Lcom/estrongs/android/view/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/x;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->h()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cx;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->e()V

    goto :goto_0
.end method
