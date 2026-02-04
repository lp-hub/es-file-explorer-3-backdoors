.class Lcom/baidu/sapi2/SapiClient$13;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$bduss:Ljava/lang/String;

.field final synthetic val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

.field final synthetic val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

.field final synthetic val$ptoken:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$13;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$13;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiClient$13;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiClient$13;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    iput-object p5, p0, Lcom/baidu/sapi2/SapiClient$13;->val$bduss:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/SapiClient$13;->val$ptoken:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, ""

    :try_start_0
    const-string v1, "failure_info"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/PassportDomanGetter;->getNextDoman()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/social/config/Domain;->setURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfig;->setDomain(Lcom/baidu/sapi2/social/config/Domain;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/PassportDomanGetter;->isMaxDomanUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$13;->this$0:Lcom/baidu/sapi2/SapiClient;

    const/16 v1, -0x64

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$13;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$13;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$13;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/SapiClient;->access$1400(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$13;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$13;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$13;->val$bduss:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$13;->val$ptoken:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$13;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/sapi2/SapiClient;->fillUname(Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

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

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$13;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$13;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$13;->val$bduss:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$13;->val$ptoken:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$13;->val$username:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/SapiClient$13;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/SapiClient;->access$1500(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$13;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$13;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$13;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$13;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$13;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/SapiClient;->access$1400(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
