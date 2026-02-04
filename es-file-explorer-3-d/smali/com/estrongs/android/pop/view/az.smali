.class Lcom/estrongs/android/pop/view/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/at;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/at;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/az;->a:Lcom/estrongs/android/pop/view/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/az;->a:Lcom/estrongs/android/pop/view/at;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/az;->a:Lcom/estrongs/android/pop/view/at;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    :cond_0
    return-void
.end method
