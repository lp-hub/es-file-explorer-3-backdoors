.class Lcom/estrongs/android/ui/f/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bn;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/f/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/g;Lcom/estrongs/android/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/i;->b:Lcom/estrongs/android/ui/f/g;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/f/i;->b:Lcom/estrongs/android/ui/f/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/f/g;->b:Lcom/estrongs/android/ui/f/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/f;->b(Lcom/estrongs/android/ui/f/f;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v1, "pcs://"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/ak;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    :goto_3
    const-string v0, "bt://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/b/a;->a()Lcom/estrongs/android/pop/app/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/a;->c()V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->K(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->M(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/f/i;->a:Lcom/estrongs/android/ui/a/a;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto/16 :goto_2
.end method
