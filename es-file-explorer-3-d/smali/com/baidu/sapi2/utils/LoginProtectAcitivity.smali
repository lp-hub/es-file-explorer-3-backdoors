.class public Lcom/baidu/sapi2/utils/LoginProtectAcitivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field static final SAPI_JS_BACK:I = 0x0

.field static final SAPI_JS_PROTECT_RESPONSE:I = 0x1


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefresh:Landroid/widget/TextView;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mWebView:Landroid/webkit/WebView;

.field private protectURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mRefresh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->initData()V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initData()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mRefresh:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->protectURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ViewSwitcher;

    invoke-direct {v1, p0}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mRefresh:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mRefresh:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u60a8\u7684\u68c0\u67e5\u7f51\u7edc"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "protect_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->protectURL:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->setupViews()V

    invoke-direct {p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected setupViews()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance v0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;

    new-instance v1, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;->showSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "local_obj"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;

    new-instance v1, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;)V

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "sapi_obj"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$2;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$3;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$3;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->mRefresh:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$4;-><init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
