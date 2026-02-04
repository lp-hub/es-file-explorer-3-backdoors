.class Lcom/estrongs/android/ui/e/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ca;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cb;->a:Lcom/estrongs/android/ui/e/ca;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/ca;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0344

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
