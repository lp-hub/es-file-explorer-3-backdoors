.class public Lcom/estrongs/android/view/cs;
.super Lcom/estrongs/android/view/ar;


# instance fields
.field protected a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/android/view/bs;)V
    .locals 4

    const/4 v0, 0x0

    const v3, 0x7f0800d9

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cs;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ESViewStub;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->b(I)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/ESViewStub;->a(I)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ESViewStub;->a(Landroid/view/LayoutInflater;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ESViewStub;->a()Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/cs;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f0800e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/view/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ct;-><init>(Lcom/estrongs/android/view/cs;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/view/cu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cu;-><init>(Lcom/estrongs/android/view/cs;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/view/cv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cv;-><init>(Lcom/estrongs/android/view/cs;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/cs;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public P()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/view/cy;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/cy;-><init>(Lcom/estrongs/android/view/cs;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/cs;->w:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/cw;

    iget-object v1, p0, Lcom/estrongs/android/view/cs;->w:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/cw;-><init>(Lcom/estrongs/android/view/cs;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cs;->x:Lcom/estrongs/fs/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cs;->b(Z)V

    return-void
.end method

.method public a_()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->ad:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/view/cx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cx;-><init>(Lcom/estrongs/android/view/cs;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->w:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->x:Lcom/estrongs/fs/g;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public p()Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    iget-object v0, p0, Lcom/estrongs/android/view/cs;->x:Lcom/estrongs/fs/g;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
