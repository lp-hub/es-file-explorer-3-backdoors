.class Lcom/estrongs/android/ui/a/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cs;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/b/av;

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cs;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/cp;->b(Lcom/estrongs/android/ui/a/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/av;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/av;->a()V

    const/4 v0, 0x0

    return v0
.end method
