.class Lcom/estrongs/android/pop/view/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/view/dm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/a;

.field final synthetic b:Lcom/estrongs/android/pop/view/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/v;Lcom/estrongs/android/ui/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/w;->a:Lcom/estrongs/android/ui/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->a:Lcom/estrongs/android/ui/g/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/a;->g()V

    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->O(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->au(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/v;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/v;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/v;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->K(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/v;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/v;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/w;->b:Lcom/estrongs/android/pop/view/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/v;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
