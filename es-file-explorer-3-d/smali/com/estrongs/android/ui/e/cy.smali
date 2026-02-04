.class Lcom/estrongs/android/ui/e/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/bz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->b(Lcom/estrongs/android/ui/e/bz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->H(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->G(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->p(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    new-instance v2, Lcom/estrongs/android/ui/b/bz;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v4}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v4

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/estrongs/android/ui/b/bz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/bz;->a()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    :goto_1
    return v7

    :cond_2
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lcom/estrongs/android/ui/b/cq;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/estrongs/android/ui/b/cq;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/cq;->b()V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/estrongs/android/util/ak;->an(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "box"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "skydrive"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "gdrive"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dropbox"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kanbox"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vdisk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kuaipan"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/bz;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "nettype"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "editServer"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "originalPath"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/bz;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    new-instance v5, Lcom/estrongs/android/ui/a/b;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/estrongs/android/ui/a/b;-><init>(Landroid/content/Context;)V

    move v0, v1

    :goto_2
    invoke-virtual {v5}, Lcom/estrongs/android/ui/a/b;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_a

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/a/b;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/bz;->b:Landroid/content/Context;

    const-string v2, "Unknown netdisk type"

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/estrongs/android/ui/b/cf;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/bz;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/cf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/a/b;->b(I)I

    move-result v2

    invoke-virtual {v5, v0}, Lcom/estrongs/android/ui/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/estrongs/android/ui/b/cf;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/b/cf;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/bz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0249

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/cf;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/b/cf;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vdisk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "s_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/bz;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/bz;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/b/cf;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/b/cf;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/cf;->a()V

    goto/16 :goto_0

    :cond_9
    const-string v2, "l_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_3
.end method
