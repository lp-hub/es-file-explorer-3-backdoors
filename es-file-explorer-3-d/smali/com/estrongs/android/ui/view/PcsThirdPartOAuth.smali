.class public Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field private static b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;


# instance fields
.field a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/webkit/WebView;

.field private i:Lcom/estrongs/android/ui/view/ap;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ScrollView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/ui/view/ap;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/ap;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Lcom/estrongs/android/ui/view/al;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i:Lcom/estrongs/android/ui/view/ap;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->k:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->l:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/view/am;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/am;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eq v2, v5, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    array-length v2, v0

    if-ne v2, v5, :cond_2

    aget-object v0, v0, v6

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, v3, v6

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c:Ljava/lang/String;

    const-string v1, "fake"

    const-string v2, "/"

    invoke-static {v0, p1, v1, v2}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "pcs"

    invoke-static {v0, p1}, Lcom/estrongs/fs/impl/i/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->requestWindowFeature(I)Z

    const v0, 0x7f03008d

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth$MyHandler;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->o:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth$MyHandler;-><init>(Landroid/os/Handler;)V

    const-string v2, "handler"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i:Lcom/estrongs/android/ui/view/ap;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->k:Landroid/widget/TextView;

    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f080292

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->l:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "nettype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c:Ljava/lang/String;

    const-string v2, "ostype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    const-string v2, "login"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "sinaweibo"

    iput-object v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d:Ljava/lang/String;

    :cond_1
    const-string v2, "editServer"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f:Z

    const-string v2, "originalPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/view/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/al;-><init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/al;->start()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sput-object p0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
