.class public Lcom/baidu/sapi2/SapiHelper;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/baidu/sapi2/SapiHelper;


# instance fields
.field private isEnableUserShare:Z

.field private mFirstInstallLoginShareListener:Lcom/baidu/sapi2/IFirstInstallLoginShareListener;

.field private mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

.field private mLoginShareListener:Lcom/baidu/sapi2/SapiHelper$LoginShareListener;

.field private mSapiClient:Lcom/baidu/sapi2/SapiClient;

.field private mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

.field private mToken:Lcom/baidu/sapi2/loginshare/Token;

.field private sapiConfig:Lcom/baidu/sapi2/SapiConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiHelper;->mInstance:Lcom/baidu/sapi2/SapiHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    iput-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    new-instance v0, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;

    invoke-direct {v0, p0, v1}, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;-><init>(Lcom/baidu/sapi2/SapiHelper;Lcom/baidu/sapi2/SapiHelper$1;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareListener:Lcom/baidu/sapi2/SapiHelper$LoginShareListener;

    iput-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mFirstInstallLoginShareListener:Lcom/baidu/sapi2/IFirstInstallLoginShareListener;

    new-instance v0, Lcom/baidu/sapi2/SapiClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    new-instance v0, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    new-instance v0, Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-direct {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    return-void
.end method

.method static synthetic access$102(Lcom/baidu/sapi2/SapiHelper;Lcom/baidu/sapi2/loginshare/Token;)Lcom/baidu/sapi2/loginshare/Token;
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/sapi2/SapiHelper;)Lcom/baidu/sapi2/IFirstInstallLoginShareListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mFirstInstallLoginShareListener:Lcom/baidu/sapi2/IFirstInstallLoginShareListener;

    return-object v0
.end method

.method private deviceCheck()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiClient;->deviceCheck()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/sapi2/SapiHelper;
    .locals 2

    const-class v1, Lcom/baidu/sapi2/SapiHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/sapi2/SapiHelper;->mInstance:Lcom/baidu/sapi2/SapiHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiHelper;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiHelper;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiHelper;->mInstance:Lcom/baidu/sapi2/SapiHelper;

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/SapiHelper;->mInstance:Lcom/baidu/sapi2/SapiHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTokenCallBack(Lcom/baidu/sapi2/ITokenCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiClient;->setTokenCallBack(Lcom/baidu/sapi2/ITokenCallback;)V

    return-void
.end method


# virtual methods
.method public authResult(Ljava/lang/String;Lcom/baidu/sapi2/social/config/SocialType;)Lcom/baidu/sapi2/social/model/SocialResponse;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/social/utils/SocialHelper;->authResult(Ljava/lang/String;Lcom/baidu/sapi2/social/config/SocialType;)Lcom/baidu/sapi2/social/model/SocialResponse;

    move-result-object v0

    return-object v0
.end method

.method public blockingGetAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    goto :goto_0
.end method

.method public cancelRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiClient;->cancelRequest()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiClient;->destory()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->destroy()V

    :cond_1
    return-void
.end method

.method public deviceLoginAndReg(Lcom/baidu/sapi2/SapiCallBack;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->isShowDevice()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ""

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiClient;->deviceRegister(Lcom/baidu/sapi2/SapiCallBack;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/sapi2/SapiClient;->deviceLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public disableUserShare()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    return-void
.end method

.method public downloadLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/SapiClient;->downloadLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableUserShare()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    return-void
.end method

.method public fillUProfileResult(Ljava/lang/String;)Lcom/baidu/sapi2/social/model/FillUProfileResponse;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/social/utils/SocialHelper;->fillUProfileResult(Ljava/lang/String;)Lcom/baidu/sapi2/social/model/FillUProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public fillUname(Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/SapiClient;->fillUname(Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAskDynamicPass(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/SapiClient;->askDynamicPass(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/sapi2/SapiHelper;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method

.method getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/sapi2/SapiHelper;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;I)V

    return-void
.end method

.method getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiClient;->getYunInfo()Z

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiHelper;->onLoginShareActivityCreate()V

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiHelper;->setTokenCallBack(Lcom/baidu/sapi2/ITokenCallback;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public getBDUSSCookieString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BDUSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";domain=baidu.com;path=/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFastReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/SapiClient;->fastReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIsUserShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    return v0
.end method

.method public getLoginProtectFinishUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getLoginProtectFinishUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPtokenCookieString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PTOKEN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";path=/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQrAppLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->qrAppLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getQrPCLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient;->qrPCLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/baidu/sapi2/SapiClient;->getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/SapiClient;->getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSocialAfterAuthUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlAfterAuth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialBindUrl(Lcom/baidu/sapi2/social/config/SocialType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlBind(Lcom/baidu/sapi2/social/config/SocialType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialBindUrl(Lcom/baidu/sapi2/social/config/SocialType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlBind(Lcom/baidu/sapi2/social/config/SocialType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialFillFinishUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlFillFinish()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialFillStartUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlFillStart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialFinishBindUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlFinishBind()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialSSOFinishUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/utils/SocialHelper;->getUrlSSOFinish()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Lcom/baidu/sapi2/loginshare/Token;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "device_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "ptoken"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/SapiClient;->getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getYunInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiClient;->getYunInfo()Z

    move-result v0

    return v0
.end method

.method initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/SapiClient;->initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {p2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/social/utils/SocialHelper;->initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z

    invoke-virtual {p2}, Lcom/baidu/sapi2/SapiConfig;->getDevicePackageSign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiHelper;->deviceCheck()Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->getLastToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->getLastToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->getLastToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareListener:Lcom/baidu/sapi2/SapiHelper$LoginShareListener;

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiHelper;->setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V

    iput-object p2, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    const/4 v0, 0x1

    return v0
.end method

.method public invalid(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->invalid(Lcom/baidu/sapi2/loginshare/Token;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiHelper;->invalidToken()V

    return-void
.end method

.method invalidToken()V
    .locals 1

    new-instance v0, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    return-void
.end method

.method public invalidateAuthToken()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->invalid(Lcom/baidu/sapi2/loginshare/Token;)Z

    return-void
.end method

.method public isDebuggable()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isDebuggable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShare()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isShare()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isShowDevice()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/sapi2/SapiClient;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)Z
    .locals 9

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/sapi2/SapiClient;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/sapi2/SapiClient;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSocialHelper:Lcom/baidu/sapi2/social/utils/SocialHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/social/utils/SocialHelper;->loginProtectResult(Ljava/lang/String;)Lcom/baidu/sapi2/model/LoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public logout()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiClient;->getYunInfo()Z

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-boolean v1, v1, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v1, v1, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiClient;->logout(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v2, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiClient;->logout(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v2}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->getOtherBduss()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiClient;->logout(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLoginShareActivityCreate()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->onActivityCreate()V

    return-void
.end method

.method public phoneReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/SapiClient;->phoneReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public regDataCheck(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mSapiClient:Lcom/baidu/sapi2/SapiClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/SapiClient;->regDataCheck(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setFirstInstallLoginShareListener(Lcom/baidu/sapi2/IFirstInstallLoginShareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiHelper;->mFirstInstallLoginShareListener:Lcom/baidu/sapi2/IFirstInstallLoginShareListener;

    return-void
.end method

.method public setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V

    goto :goto_0
.end method

.method public setShowDevice(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->sapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    return-void
.end method

.method public setToken(Lcom/baidu/sapi2/loginshare/Token;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    return-void
.end method

.method startFillNameActivity(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public valid()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiHelper;->isEnableUserShare:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper;->mLoginShareAssistant:Lcom/baidu/sapi2/loginshare/LoginShareAssistant;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiHelper;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/loginshare/LoginShareAssistant;->valid(Lcom/baidu/sapi2/loginshare/Token;)Z

    :cond_0
    return-void
.end method
