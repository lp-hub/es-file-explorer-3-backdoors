.class public Lcom/baidu/sapi2/BDAccountManager;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayname"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_PTOKEN:Ljava/lang/String; = "ptoken"

.field public static final KEY_RESULTCODE:Ljava/lang/String; = "sapi_resultcode"

.field public static final KEY_RESULTMSG:Ljava/lang/String; = "sapi_resultmsg"

.field public static final KEY_STOKEN:Ljava/lang/String; = "stoken"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static mInstance:Lcom/baidu/sapi2/BDAccountManager;

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private final BAIDUACCOUNT_TYPE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSapiConfig:Lcom/baidu/sapi2/SapiConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/BDAccountManager;->mInstance:Lcom/baidu/sapi2/BDAccountManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/BDAccountManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.baidu"

    iput-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->BAIDUACCOUNT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/baidu/sapi2/BDAccountManager;
    .locals 2

    sget-object v0, Lcom/baidu/sapi2/BDAccountManager;->mInstance:Lcom/baidu/sapi2/BDAccountManager;

    if-nez v0, :cond_0

    sget-object v1, Lcom/baidu/sapi2/BDAccountManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/baidu/sapi2/BDAccountManager;

    invoke-direct {v0}, Lcom/baidu/sapi2/BDAccountManager;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/BDAccountManager;->mInstance:Lcom/baidu/sapi2/BDAccountManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/BDAccountManager;->mInstance:Lcom/baidu/sapi2/BDAccountManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public blockingGetAuthToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/YiAccountUtils;->blockingGetBaiduAuthToken(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/baidu/sapi2/BDAccountManager;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;)V

    return-void
.end method

.method public getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/baidu/sapi2/BDAccountManager;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;)V

    return-void
.end method

.method public getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/sapi2/BDAccountManager;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;)V

    return-void
.end method

.method public getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/BDAccountManager;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;I)V

    return-void
.end method

.method public getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/sapi2/YiAccountUtils;->getTokenAsync(Ljava/lang/String;Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/BDAccountManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/sapi2/BDAccountManager;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;)V

    invoke-interface {p4}, Lcom/baidu/sapi2/BDAccountManager$OnUnLoginListener;->onUnLogin()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/baidu/sapi2/SapiHelper;->getAuthTokenAsync(Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method public getSapiContext()Lcom/baidu/sapi2/SapiContext;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/YiAccountUtils;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-static {p1}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiConfig;->setClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/sapi2/SapiHelper;->initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z

    iput-object p1, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public invalidateAuthToken()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/sapi2/BDAccountManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    invoke-virtual {p0}, Lcom/baidu/sapi2/BDAccountManager;->blockingGetAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/YiAccountUtils;->invalidateToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->invalidateAuthToken()V

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->isLogin()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->getYunInfo()Z

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v0

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    const-string v1, "com.baidu"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/YiAccountUtils;->setAccount(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/sapi2/BDAccountManager;->invalidateAuthToken()V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->logout()Z

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->invalidToken()V

    goto :goto_0
.end method

.method public setFirstInstallLoginShareListener(Lcom/baidu/sapi2/IFirstInstallLoginShareListener;)V
    .locals 1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->setFirstInstallLoginShareListener(Lcom/baidu/sapi2/IFirstInstallLoginShareListener;)V

    return-void
.end method

.method public startFillNameActivity(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->isEnableYi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/BDAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, v1}, Lcom/baidu/sapi2/YiAccountUtils;->startFillNameActivity(Landroid/app/Activity;IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/SapiHelper;->startFillNameActivity(Landroid/app/Activity;Ljava/lang/Class;I)V

    goto :goto_0
.end method

.method public syncAccountToken(Lcom/baidu/sapi2/loginshare/Token;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->valid()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
