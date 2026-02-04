.class Lcom/baidu/sapi2/SapiClient$23;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/SapiCallBack;

.field final synthetic val$loginsign:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$23;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$23;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiClient$23;->val$loginsign:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

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

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$23;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$23;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$23;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/SapiClient;->access$2200(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$23;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$23;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$23;->val$loginsign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiClient;->downloadLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$23;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$23;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, p1, v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$2200(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void
.end method
