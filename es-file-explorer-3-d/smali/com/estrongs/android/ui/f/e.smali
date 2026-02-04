.class Lcom/estrongs/android/ui/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bn;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/e;->a:Lcom/estrongs/android/ui/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->a:Lcom/estrongs/android/ui/f/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/a;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/e;->a:Lcom/estrongs/android/ui/f/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/a;->b(Lcom/estrongs/android/ui/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(I)V

    :cond_0
    return-void
.end method
