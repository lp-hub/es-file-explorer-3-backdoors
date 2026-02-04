.class Lcom/baidu/sapi2/SapiClient$8;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/SapiCallBack;

.field final synthetic val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$phoneNum:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$8;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$8;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiClient$8;->val$phoneNum:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiClient$8;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/SapiClient$8;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/SapiClient$8;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, ""

    :try_start_0
    const-string v2, "failure_info"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/PassportDomanGetter;->getNextDoman()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/social/config/Domain;->setURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfig;->setDomain(Lcom/baidu/sapi2/social/config/Domain;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/PassportDomanGetter;->isMaxDomanUsed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$8;->this$0:Lcom/baidu/sapi2/SapiClient;

    const/16 v2, -0x64

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$8;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/sapi2/SapiClient;->access$1000(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$8;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$8;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$8;->val$phoneNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$8;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$8;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/SapiClient;->regDataCheck(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cert"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "cert_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$8;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$8;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$8;->val$phoneNum:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$8;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$8;->val$password:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/SapiClient$8;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/SapiClient;->access$1100(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$8;->this$0:Lcom/baidu/sapi2/SapiClient;

    const/16 v1, -0x64

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$8;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiClient;->access$1000(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    goto :goto_0
.end method
