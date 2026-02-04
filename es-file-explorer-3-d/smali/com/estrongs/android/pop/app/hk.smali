.class Lcom/estrongs/android/pop/app/hk;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommAcitivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/hk;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/hk;->a:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->a(Lcom/estrongs/android/pop/app/RecommAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
