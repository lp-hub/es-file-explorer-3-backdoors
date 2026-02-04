.class Lcom/estrongs/android/pop/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/br;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/pop/view/a;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v5

    if-nez p1, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v5, Lcom/estrongs/android/view/ar;->v:Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v3, "New"

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v2, v0, v2

    const/4 v1, 0x1

    aget-object v4, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/view/b;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/view/b;-><init>(Lcom/estrongs/android/pop/view/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/view/ar;ZZI)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    move-object v3, p1

    goto :goto_0

    :cond_4
    move-object v3, p1

    goto :goto_1
.end method
