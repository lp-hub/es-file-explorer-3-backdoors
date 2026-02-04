.class Lcom/estrongs/android/pop/view/bg;
.super Lcom/estrongs/android/view/bu;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/view/bu;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    return-void
.end method


# virtual methods
.method public j()Lcom/estrongs/fs/g;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bg;->x:Lcom/estrongs/fs/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bg;->x:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bg;->x:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->at(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bg;->x:Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/view/bu;->j()Lcom/estrongs/fs/g;

    move-result-object v0

    goto :goto_0
.end method
