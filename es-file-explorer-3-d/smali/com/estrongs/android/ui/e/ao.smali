.class Lcom/estrongs/android/ui/e/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/w;->i(Lcom/estrongs/android/ui/e/w;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    instance-of v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/i/b;->l(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Market"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/ak;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/l;->O:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Press_Logout"

    const-string v2, "Press_Logout"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v4

    :cond_4
    const-string v0, "pcs://"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
