.class Lcom/baidu/sapi2/SapiClient$15;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$15;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fulfilbind"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "reg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    goto :goto_0
.end method
