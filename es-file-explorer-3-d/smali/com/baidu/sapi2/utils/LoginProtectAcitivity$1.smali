.class Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$000(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$000(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$000(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$100(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$1;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$200(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u9875\u9762\u52a0\u8f7d\u5931\u8d25\uff0c\u70b9\u51fb\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
