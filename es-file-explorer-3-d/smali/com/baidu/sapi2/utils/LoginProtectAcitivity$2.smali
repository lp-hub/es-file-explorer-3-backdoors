.class Lcom/baidu/sapi2/utils/LoginProtectAcitivity$2;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$2;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$2;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->finish()V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$2;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$000(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
