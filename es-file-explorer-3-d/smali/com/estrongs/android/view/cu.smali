.class Lcom/estrongs/android/view/cu;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cu;->a:Lcom/estrongs/android/view/cs;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cu;->a:Lcom/estrongs/android/view/cs;

    invoke-static {v0}, Lcom/estrongs/android/view/cs;->a(Lcom/estrongs/android/view/cs;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cu;->a:Lcom/estrongs/android/view/cs;

    invoke-static {v0}, Lcom/estrongs/android/view/cs;->a(Lcom/estrongs/android/view/cs;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
