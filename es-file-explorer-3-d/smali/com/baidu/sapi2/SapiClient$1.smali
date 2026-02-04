.class Lcom/baidu/sapi2/SapiClient$1;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiClient;->getYunInfo()Z

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v1

    const-string v2, "loginMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiContext;->setLoginMode(I)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v1

    const-string v2, "tabDefault"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiContext;->setTabDefault(I)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v1

    const-string v2, "firstTabText"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiContext;->setFirstTabText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v1

    const-string v2, "accountTitle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiContext;->setAccountTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$1;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v1

    const-string v2, "accountPlaceholder"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiContext;->setAccountPlaceholder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
