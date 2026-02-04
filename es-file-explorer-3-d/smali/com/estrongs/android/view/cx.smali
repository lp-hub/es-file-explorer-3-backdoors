.class Lcom/estrongs/android/view/cx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    invoke-static {v0}, Lcom/estrongs/android/view/cs;->a(Lcom/estrongs/android/view/cs;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    iget-object v1, v1, Lcom/estrongs/android/view/cs;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->I:Lcom/estrongs/android/view/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->I:Lcom/estrongs/android/view/bs;

    invoke-interface {v0}, Lcom/estrongs/android/view/bs;->b()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cx;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method
