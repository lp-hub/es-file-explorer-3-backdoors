.class final Lcom/estrongs/android/pop/utils/az;
.super Lcom/estrongs/fs/b/i;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/g;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;Landroid/app/Activity;)V
    .locals 0

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/az;->a:Lcom/estrongs/fs/g;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/az;->b:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V

    return-void
.end method


# virtual methods
.method public task()Z
    .locals 4

    invoke-super {p0}, Lcom/estrongs/fs/b/i;->task()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/az;->a:Lcom/estrongs/fs/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/g;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/az;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/az;->b:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/az;->b:Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/android/pop/utils/ba;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/utils/ba;-><init>(Lcom/estrongs/android/pop/utils/az;Lcom/estrongs/android/view/ar;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return v1
.end method
