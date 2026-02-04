.class Lcom/baidu/sapi2/SapiClient$2;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

.field final synthetic val$displayAccount:Lcom/baidu/sapi2/account/DisplayAccount;

.field final synthetic val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

.field final synthetic val$isDynamicPwd:Z

.field final synthetic val$isPhone:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;

.field final synthetic val$vcodeStr:Ljava/lang/String;

.field final synthetic val$verifyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;ZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Lcom/baidu/sapi2/security/EncryptHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$2;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-boolean p2, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isPhone:Z

    iput-object p3, p0, Lcom/baidu/sapi2/SapiClient$2;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiClient$2;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iput-object p5, p0, Lcom/baidu/sapi2/SapiClient$2;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    iput-object p6, p0, Lcom/baidu/sapi2/SapiClient$2;->val$password:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/sapi2/SapiClient$2;->val$vcodeStr:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/sapi2/SapiClient$2;->val$verifyCode:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isDynamicPwd:Z

    iput-object p10, p0, Lcom/baidu/sapi2/SapiClient$2;->val$displayAccount:Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    const/16 v1, -0x64

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, ""

    :try_start_0
    const-string v2, "failure_info"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

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

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/social/config/Domain;->setURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/SapiConfig;->setDomain(Lcom/baidu/sapi2/social/config/Domain;)V

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

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$2;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$2;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$2;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$2;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-static/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient;->access$200(Lcom/baidu/sapi2/SapiClient;IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$2;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$2;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$2;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$2;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-static/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient;->access$200(Lcom/baidu/sapi2/SapiClient;IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-static {v7}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$2;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$2;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$2;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$2;->val$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$2;->val$vcodeStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$2;->val$verifyCode:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isDynamicPwd:Z

    iget-object v8, p0, Lcom/baidu/sapi2/SapiClient$2;->val$displayAccount:Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/sapi2/SapiClient;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)Z

    goto :goto_1
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 12

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cert"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "cert_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$2;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$2;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-boolean v4, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isPhone:Z

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$2;->val$username:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$2;->val$password:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/sapi2/SapiClient$2;->val$vcodeStr:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/sapi2/SapiClient$2;->val$verifyCode:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isDynamicPwd:Z

    iget-object v10, p0, Lcom/baidu/sapi2/SapiClient$2;->val$displayAccount:Lcom/baidu/sapi2/account/DisplayAccount;

    iget-object v11, p0, Lcom/baidu/sapi2/SapiClient$2;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-static/range {v0 .. v11}, Lcom/baidu/sapi2/SapiClient;->access$300(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$2;->this$0:Lcom/baidu/sapi2/SapiClient;

    const/16 v1, -0x64

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$2;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$2;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$2;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$2;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient;->access$200(Lcom/baidu/sapi2/SapiClient;IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
