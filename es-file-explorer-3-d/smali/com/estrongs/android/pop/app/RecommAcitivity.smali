.class public Lcom/estrongs/android/pop/app/RecommAcitivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/estrongs/android/ui/view/RecommendListView;

.field private c:Lcom/estrongs/android/ui/theme/al;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/webkit/WebView;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Z

    new-instance v0, Lcom/estrongs/android/pop/app/ho;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ho;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/RecommAcitivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()Z
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/RecommAcitivity;)Lcom/estrongs/android/ui/view/RecommendListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/RecommAcitivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/RecommAcitivity;->requestWindowFeature(I)Z

    const v0, 0x7f0300a8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->setContentView(I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->c:Lcom/estrongs/android/ui/theme/al;

    const v0, 0x7f08031d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->d:Landroid/view/View;

    const v0, 0x7f08031e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/hj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hj;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080320

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f080321

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080322

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Z

    const v0, 0x7f08031a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->f:Landroid/widget/ProgressBar;

    const v0, 0x7f08031b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const v0, 0x7f08031c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/hk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hk;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/hl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hl;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/pop/app/hm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hm;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    const-string v1, "http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Handler;)Landroid/os/Handler;

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a(Landroid/os/Handler;[Lcom/estrongs/android/pop/view/utils/v;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->c()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    new-instance v1, Lcom/estrongs/android/pop/app/hn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hn;-><init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const v1, 0x7f0b0499

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->f()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/RecommAcitivity;->b:Lcom/estrongs/android/ui/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/RecommendListView;->a()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
