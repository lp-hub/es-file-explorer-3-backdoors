.class Lcom/estrongs/android/ui/b/dl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/df;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/df;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dl;->a:Lcom/estrongs/android/ui/b/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dl;->a:Lcom/estrongs/android/ui/b/df;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/df;->c(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/ui/b/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/dl;->a:Lcom/estrongs/android/ui/b/df;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/df;->c(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/ui/b/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/dn;->b()V

    return-void
.end method
