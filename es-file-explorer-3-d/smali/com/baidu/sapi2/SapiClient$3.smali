.class Lcom/baidu/sapi2/SapiClient$3;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

.field final synthetic val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

.field final synthetic val$isDynamic:Z

.field final synthetic val$isPhone:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;

.field final synthetic val$vcodeStr:Ljava/lang/String;

.field final synthetic val$verifyCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$3;->val$username:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isPhone:Z

    iput-object p4, p0, Lcom/baidu/sapi2/SapiClient$3;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/SapiClient$3;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    iput-object p6, p0, Lcom/baidu/sapi2/SapiClient$3;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iput-object p7, p0, Lcom/baidu/sapi2/SapiClient$3;->val$vcodeStr:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/sapi2/SapiClient$3;->val$verifyCode:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isDynamic:Z

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 8

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

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/PassportDomanGetter;->isMaxDomanUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->access$000()Lcom/baidu/sapi2/SapiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->resetPassportDomainGetter()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$400(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$3;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$3;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$3;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient;->access$200(Lcom/baidu/sapi2/SapiClient;IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$3;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$3;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$3;->val$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$3;->val$vcodeStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$3;->val$verifyCode:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isDynamic:Z

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/sapi2/SapiClient;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    new-instance v1, Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/account/DisplayAccount;-><init>()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->val$username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setAccountName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isPhone:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setAccountType(Lcom/baidu/sapi2/account/AccountType;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->val$username:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayName(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$3;->val$password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/account/DisplayAccount;->setLastLoginTime(J)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v0, p2}, Lcom/baidu/sapi2/SapiClient;->access$400(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountAPI;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/account/AccountAPI;->blockAddAccount(Lcom/baidu/sapi2/account/DisplayAccount;)Z

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountAPI;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/AccountAPI;->blockSaveAccount()Z

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    const-string v1, ""

    iput-object v1, v0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$400(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-boolean v2, p0, Lcom/baidu/sapi2/SapiClient$3;->val$isPhone:Z

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient$3;->val$username:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$3;->val$callBack:Lcom/baidu/sapi2/callback/LoginCallBack;

    iget-object v6, p0, Lcom/baidu/sapi2/SapiClient$3;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient;->access$200(Lcom/baidu/sapi2/SapiClient;IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v0, p2}, Lcom/baidu/sapi2/SapiClient;->access$400(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountAPI;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/account/AccountAPI;->blockAddAccount(Lcom/baidu/sapi2/account/DisplayAccount;)Z

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$3;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiClient;->access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountAPI;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/AccountAPI;->blockSaveAccount()Z

    goto :goto_2
.end method
