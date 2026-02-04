.class Lcom/estrongs/android/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->e()V

    iget-object v0, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/q;->a:Lcom/estrongs/android/view/n;

    invoke-static {v0}, Lcom/estrongs/android/view/n;->a(Lcom/estrongs/android/view/n;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    :cond_0
    return-void
.end method
