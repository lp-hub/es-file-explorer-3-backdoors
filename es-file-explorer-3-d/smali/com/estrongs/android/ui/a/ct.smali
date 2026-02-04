.class Lcom/estrongs/android/ui/a/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ct;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/ct;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/cp;->b(Lcom/estrongs/android/ui/a/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b030f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b034d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v2, Lcom/estrongs/android/ui/a/cu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/a/cu;-><init>(Lcom/estrongs/android/ui/a/ct;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    const/4 v0, 0x0

    return v0
.end method
