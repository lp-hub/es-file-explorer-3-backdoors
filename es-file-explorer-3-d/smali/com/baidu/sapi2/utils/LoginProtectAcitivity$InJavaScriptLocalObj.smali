.class final Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;
.super Ljava/lang/Object;


# instance fields
.field handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;

.field final synthetic this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;

    return-void
.end method


# virtual methods
.method public showSource(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;->this$0:Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    const-string v1, "<client>([\\S\\s]*?)</client>"

    invoke-static {v0, v1, p1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->access$400(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->loginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$InJavaScriptLocalObj;->handler:Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
