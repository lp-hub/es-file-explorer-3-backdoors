.class public Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field private static h:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;


# instance fields
.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/webkit/WebView;

.field private m:Lcom/estrongs/android/ui/view/o;

.field private n:Landroid/widget/ProgressBar;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Ljava/lang/String;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c:I

    const/4 v0, 0x4

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d:I

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->e:I

    const/4 v0, 0x6

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->f:I

    const/4 v0, 0x7

    sput v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Landroid/webkit/WebView;

    new-instance v0, Lcom/estrongs/android/ui/view/o;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/o;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Lcom/estrongs/android/ui/view/l;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->m:Lcom/estrongs/android/ui/view/o;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->p:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->q:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/view/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/m;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method static synthetic a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/estrongs/fs/impl/i/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Ljava/lang/String;

    const-string v4, "fake"

    const-string v5, "/"

    invoke-static {v3, v2, v4, v5}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v5, v6, v0}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c()Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/os/Handler;

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Ljava/lang/String;

    const-string v1, "box"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "auth_token"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/os/Handler;

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->requestWindowFeature(I)Z

    const v0, 0x7f030085

    invoke-super {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->setContentView(I)V

    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->m:Lcom/estrongs/android/ui/view/o;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->o:Landroid/widget/TextView;

    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->n:Landroid/widget/ProgressBar;

    const v0, 0x7f080292

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->p:Landroid/view/View;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "nettype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Ljava/lang/String;

    const-string v2, "editServer"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->j:Z

    const-string v2, "originalPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->k:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/view/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/l;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/l;->start()V

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sput-object p0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method
