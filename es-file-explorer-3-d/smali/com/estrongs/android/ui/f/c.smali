.class Lcom/estrongs/android/ui/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/f/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/c;->a:Lcom/estrongs/android/ui/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->a:Lcom/estrongs/android/ui/f/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/f/a;->a(Lcom/estrongs/android/ui/f/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->a:Lcom/estrongs/android/ui/f/a;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/f/a;->a(Lcom/estrongs/android/ui/f/a;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/c;->a:Lcom/estrongs/android/ui/f/a;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/f/a;->a(Lcom/estrongs/android/ui/f/a;I)I

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(I)V

    :cond_0
    return-void
.end method
