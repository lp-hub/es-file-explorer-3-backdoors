.class final Lcom/estrongs/android/ui/e/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field final synthetic b:Lcom/estrongs/android/ui/b/de;

.field final synthetic c:Lcom/estrongs/fs/b/m;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/b/de;Lcom/estrongs/fs/b/m;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/cm;->b:Lcom/estrongs/android/ui/b/de;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/cm;->c:Lcom/estrongs/fs/b/m;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/e/cm;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cm;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/e/cn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/cn;-><init>(Lcom/estrongs/android/ui/e/cm;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
