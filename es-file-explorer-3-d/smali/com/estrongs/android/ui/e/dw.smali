.class Lcom/estrongs/android/ui/e/dw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/dv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/dv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dw;->a:Lcom/estrongs/android/ui/e/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dw;->a:Lcom/estrongs/android/ui/e/dv;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dv;->b:Lcom/estrongs/android/ui/e/dt;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/dt;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/e/dx;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/e/dx;-><init>(Lcom/estrongs/android/ui/e/dw;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
