.class Lcom/estrongs/android/ui/e/ec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ec;->a:Lcom/estrongs/android/ui/e/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ec;->a:Lcom/estrongs/android/ui/e/eb;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/eb;->b:Lcom/estrongs/android/ui/e/ea;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ea;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->m()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V

    :cond_0
    return-void
.end method
