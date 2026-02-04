.class Lcom/estrongs/android/ui/e/fz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/e/fy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/fy;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fz;->b:Lcom/estrongs/android/ui/e/fy;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/fs/g;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/ar;->a(Z)V

    goto :goto_0
.end method
