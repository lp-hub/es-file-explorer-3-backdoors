.class Lcom/estrongs/android/ui/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ao;->a:Lcom/estrongs/android/ui/a/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ao;->a:Lcom/estrongs/android/ui/a/an;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/an;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->c(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->u(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ao;->a:Lcom/estrongs/android/ui/a/an;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/an;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const-string v1, "recycle://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    return-void
.end method
