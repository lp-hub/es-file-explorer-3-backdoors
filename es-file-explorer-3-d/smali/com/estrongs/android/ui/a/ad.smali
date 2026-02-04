.class Lcom/estrongs/android/ui/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/ad;->a:Lcom/estrongs/android/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ad;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ad;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->d(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/ad;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->d(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/util/a;

    move-result-object v0

    const-string v1, "AppManager_Show"

    const-string v2, "AppManager_Show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
