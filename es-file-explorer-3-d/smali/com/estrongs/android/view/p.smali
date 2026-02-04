.class Lcom/estrongs/android/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/view/n;->j()V

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->e()V

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    const-string v1, "paste_mode"

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/az;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    const-string v1, "normal_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/p;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s:Z

    :cond_1
    return-void
.end method
