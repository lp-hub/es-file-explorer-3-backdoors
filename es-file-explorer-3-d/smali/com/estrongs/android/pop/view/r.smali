.class Lcom/estrongs/android/pop/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/az;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/n;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/view/n;->a:Lcom/estrongs/android/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/SlidingDrawer;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/r;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->j()Lcom/estrongs/fs/g;

    goto :goto_0
.end method
