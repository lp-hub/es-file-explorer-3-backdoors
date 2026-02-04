.class Lcom/estrongs/android/pop/view/i;
.super Lcom/estrongs/android/widget/ContentViewSwitcher;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2}, Lcom/estrongs/android/widget/ContentViewSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/i;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ContentViewSwitcher;->a(I)V

    return-void
.end method
