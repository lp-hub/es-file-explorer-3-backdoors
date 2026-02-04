.class Lcom/estrongs/android/ui/a/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/ct;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cu;->a:Lcom/estrongs/android/ui/a/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/a/cu;->a:Lcom/estrongs/android/ui/a/ct;

    iget-object v3, v3, Lcom/estrongs/android/ui/a/ct;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-static {v3}, Lcom/estrongs/android/ui/a/cp;->b(Lcom/estrongs/android/ui/a/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cu;->a:Lcom/estrongs/android/ui/a/ct;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ct;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/cp;->b(Lcom/estrongs/android/ui/a/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cu;->a:Lcom/estrongs/android/ui/a/ct;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/ct;->a:Lcom/estrongs/android/ui/a/cp;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/cp;->b()V

    return-void
.end method
