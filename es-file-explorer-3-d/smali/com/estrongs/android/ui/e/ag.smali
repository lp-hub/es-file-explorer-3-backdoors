.class Lcom/estrongs/android/ui/e/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/estrongs/android/ui/b/de;

.field final synthetic b:Lcom/estrongs/android/ui/e/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/af;[Lcom/estrongs/android/ui/b/de;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ag;->b:Lcom/estrongs/android/ui/e/af;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ag;->a:[Lcom/estrongs/android/ui/b/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ag;->a:[Lcom/estrongs/android/ui/b/de;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ag;->b:Lcom/estrongs/android/ui/e/af;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ag;->b:Lcom/estrongs/android/ui/e/af;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b0342

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ag;->b:Lcom/estrongs/android/ui/e/af;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b0343

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/estrongs/android/ui/b/de;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/estrongs/android/ui/b/de;

    move-result-object v1

    aput-object v1, v0, v5

    :cond_0
    return-void
.end method
