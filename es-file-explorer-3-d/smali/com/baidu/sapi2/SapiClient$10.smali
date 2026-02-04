.class Lcom/baidu/sapi2/SapiClient$10;
.super Lcom/baidu/sapi2/http/BinaryHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/SapiCallBack;

.field final synthetic val$vcodeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;[Ljava/lang/String;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$10;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiClient$10;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiClient$10;->val$vcodeStr:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/baidu/sapi2/http/BinaryHttpResponseHandler;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4

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

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$10;->this$0:Lcom/baidu/sapi2/SapiClient;

    const/16 v1, -0x64

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$10;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiClient;->access$1200(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$10;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$10;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$10;->val$vcodeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiClient;->getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onSuccess([B)V
    .locals 3

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$10;->this$0:Lcom/baidu/sapi2/SapiClient;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$10;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, v1, v2, p1}, Lcom/baidu/sapi2/SapiClient;->access$1200(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;[B)V

    return-void
.end method
