.class Lcom/estrongs/android/ui/f/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/f/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/f;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/p;->b:Lcom/estrongs/android/ui/f/f;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/p;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/p;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/p;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v2, Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/p;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x10001020

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/p;->b:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/f/f;->a(Z)V

    return v3
.end method
