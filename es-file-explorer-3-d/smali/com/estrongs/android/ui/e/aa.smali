.class Lcom/estrongs/android/ui/e/aa;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/e/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/z;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/aa;->b:Lcom/estrongs/android/ui/e/z;

    iput p2, p0, Lcom/estrongs/android/ui/e/aa;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/aa;->b:Lcom/estrongs/android/ui/e/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/z;->a:Lcom/estrongs/android/ui/e/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/e;

    iget v1, p0, Lcom/estrongs/android/ui/e/aa;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
