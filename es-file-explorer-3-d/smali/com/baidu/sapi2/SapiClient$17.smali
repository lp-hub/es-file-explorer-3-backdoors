.class Lcom/baidu/sapi2/SapiClient$17;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/SapiCallBack;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$17;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$17;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$17;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$17;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$17;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/SapiClient;->access$1700(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$17;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$17;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, p1, v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$1700(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void
.end method
