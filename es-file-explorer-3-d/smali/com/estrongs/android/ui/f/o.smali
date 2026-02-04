.class Lcom/estrongs/android/ui/f/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/high16 v4, 0x10000000

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.baidu.appsearch"

    iget-object v1, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/f/f;->a(Z)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Recommend_Show"

    const-string v2, "Recommend_Show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/o;->a:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
