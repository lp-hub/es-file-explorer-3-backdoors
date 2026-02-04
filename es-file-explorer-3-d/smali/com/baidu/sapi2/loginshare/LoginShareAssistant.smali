.class public Lcom/baidu/sapi2/loginshare/LoginShareAssistant;
.super Ljava/lang/Object;


# instance fields
.field private mSharer:Lcom/baidu/sapi2/loginshare/Sharer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    new-instance v0, Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/Sharer;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    return-void
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastToken()Lcom/baidu/sapi2/loginshare/Token;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->getLastToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOtherBduss()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->getOtherBduss()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/loginshare/Sharer;->initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public invalid(Lcom/baidu/sapi2/loginshare/Token;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->invalid(Lcom/baidu/sapi2/loginshare/Token;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreate()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->onActivityCreate()V

    :cond_0
    return-void
.end method

.method public setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public valid(Lcom/baidu/sapi2/loginshare/Token;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->mSharer:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->valid(Lcom/baidu/sapi2/loginshare/Token;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
