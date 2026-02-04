.class final Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;
.super Ljava/lang/Object;


# instance fields
.field handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

.field final synthetic this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

    return-void
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public protect_response(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    if-nez p1, :cond_0

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    const-string v2, "<client>([\\S\\s]*?)</client>"

    invoke-static {v1, v2, p1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$400(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/sapi2/SapiHelper;->loginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;

    move-result-object v1

    iput v3, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$SapiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
