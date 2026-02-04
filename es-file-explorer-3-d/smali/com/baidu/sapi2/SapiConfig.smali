.class public Lcom/baidu/sapi2/SapiConfig;
.super Ljava/lang/Object;


# static fields
.field public static final SSL_AES:I = 0x6


# instance fields
.field private DISPLAY:Lcom/baidu/sapi2/social/config/Display;

.field private deviceInfo:Ljava/lang/String;

.field private devicePackageSign:Ljava/lang/String;

.field private enableYi:Z

.field private isDebuggable:Z

.field private isShare:Z

.field private isShowDevice:Z

.field private mAppId:Ljava/lang/String;

.field private mBindType:Lcom/baidu/sapi2/social/config/BindType;

.field private mClientId:Ljava/lang/String;

.field private mClientIp:Ljava/lang/String;

.field private mCppUtils:Lcom/baidu/sapi2/CppUtils;

.field private mDomain:Lcom/baidu/sapi2/social/config/Domain;

.field private mSignKey:Ljava/lang/String;

.field private mTpl:Ljava/lang/String;

.field private passportDomanGetter:Lcom/baidu/sapi2/PassportDomanGetter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;)V
    .locals 8

    const/4 v6, 0x1

    sget-object v5, Lcom/baidu/sapi2/social/config/BindType;->IMPLICIT:Lcom/baidu/sapi2/social/config/BindType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/SapiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;Lcom/baidu/sapi2/social/config/BindType;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;Lcom/baidu/sapi2/social/config/BindType;)V
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/SapiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;Lcom/baidu/sapi2/social/config/BindType;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;Lcom/baidu/sapi2/social/config/BindType;Z)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/SapiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;Lcom/baidu/sapi2/social/config/BindType;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Domain;Lcom/baidu/sapi2/social/config/BindType;ZZ)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/social/config/Domain;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mDomain:Lcom/baidu/sapi2/social/config/Domain;

    sget-object v0, Lcom/baidu/sapi2/social/config/BindType;->IMPLICIT:Lcom/baidu/sapi2/social/config/BindType;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mBindType:Lcom/baidu/sapi2/social/config/BindType;

    sget-object v0, Lcom/baidu/sapi2/social/config/Display;->NATIVE:Lcom/baidu/sapi2/social/config/Display;

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->DISPLAY:Lcom/baidu/sapi2/social/config/Display;

    iput-boolean v2, p0, Lcom/baidu/sapi2/SapiConfig;->isShare:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfig;->isDebuggable:Z

    iput-boolean v1, p0, Lcom/baidu/sapi2/SapiConfig;->isShowDevice:Z

    iput-boolean v2, p0, Lcom/baidu/sapi2/SapiConfig;->enableYi:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->deviceInfo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->devicePackageSign:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfig;->mTpl:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiConfig;->mAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiConfig;->mSignKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiConfig;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mClientIp:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiConfig;->mDomain:Lcom/baidu/sapi2/social/config/Domain;

    iput-object p5, p0, Lcom/baidu/sapi2/SapiConfig;->mBindType:Lcom/baidu/sapi2/social/config/BindType;

    new-instance v0, Lcom/baidu/sapi2/CppUtils;

    invoke-direct {v0}, Lcom/baidu/sapi2/CppUtils;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    iput-boolean p6, p0, Lcom/baidu/sapi2/SapiConfig;->isShare:Z

    iput-boolean p7, p0, Lcom/baidu/sapi2/SapiConfig;->enableYi:Z

    invoke-virtual {p4}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/social/config/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/baidu/sapi2/SapiConfig;->isDebuggable:Z

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/Utils;->createDeviceInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->deviceInfo:Ljava/lang/String;

    return-void
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplyregcode()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigApplyregcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAskDynamicPwd()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeAskDynamicPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindType()Lcom/baidu/sapi2/social/config/BindType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mBindType:Lcom/baidu/sapi2/social/config/BindType;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mClientId:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mClientId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "123456789"

    goto :goto_0
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mClientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getCryptType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getDeviceCheck()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetDeviceCheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceForceReg()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetDeviceForceReg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->deviceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceLogin()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetDeviceLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePackageSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->devicePackageSign:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceReg()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getDeviceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetDeviceReg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplay()Lcom/baidu/sapi2/social/config/Display;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->DISPLAY:Lcom/baidu/sapi2/social/config/Display;

    return-object v0
.end method

.method public getDomain()Lcom/baidu/sapi2/social/config/Domain;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mDomain:Lcom/baidu/sapi2/social/config/Domain;

    return-object v0
.end method

.method public getDomainSSOFinish()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfig;->isDebuggable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    const-string v3, "https://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSSOFinish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSSOFinish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDomainSSOStart()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfig;->isDebuggable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    const-string v3, "https://"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSSOStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSSOStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDomanAfterAuth()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSocialAfterAuth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomanFillFinish()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetFillFinish()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomanFillStart()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getWap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetFillStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomanFinishBind()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSocialFinishAuth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomanStart()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetSocialStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadLogin()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetDownloadLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastReg()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetFastReg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilluname()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/center/filluname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenimage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cgi-bin/genimage?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCert()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sslcrypt/get_last_cert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginProtectFinishUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wp/login/proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogout()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigLogout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassportDomanGetter()Lcom/baidu/sapi2/PassportDomanGetter;
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mDomain:Lcom/baidu/sapi2/social/config/Domain;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mDomain:Lcom/baidu/sapi2/social/config/Domain;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/social/config/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->passportDomanGetter:Lcom/baidu/sapi2/PassportDomanGetter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPassDoman1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPassDoman2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPassDoman3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/baidu/sapi2/PassportDomanGetter;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/baidu/sapi2/PassportDomanGetter;-><init>(Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->passportDomanGetter:Lcom/baidu/sapi2/PassportDomanGetter;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->passportDomanGetter:Lcom/baidu/sapi2/PassportDomanGetter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->passportDomanGetter:Lcom/baidu/sapi2/PassportDomanGetter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneregverify()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPhoneregverify()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQRAppLogin()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetQrAppLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQrPCLogin()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeGetQrPCLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegdatacheck()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigRegdatacheck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mSignKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mTpl:Ljava/lang/String;

    return-object v0
.end method

.method public getYunInfoUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/social/config/Domain;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v2/sapi/loginsdkcontrol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClientIpValid()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mClientIp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiConfig;->mClientIp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDebuggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfig;->isDebuggable:Z

    return v0
.end method

.method public isEnableYi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfig;->enableYi:Z

    return v0
.end method

.method public isShare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfig;->isShare:Z

    return v0
.end method

.method public isShowDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/SapiConfig;->isShowDevice:Z

    return v0
.end method

.method public resetPassportDomainGetter()V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiConfig;->getDomain()Lcom/baidu/sapi2/social/config/Domain;

    move-result-object v0

    const-string v1, "http://passport.baidu.com"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/social/config/Domain;->setURL(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPassDoman1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPassDoman2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->mCppUtils:Lcom/baidu/sapi2/CppUtils;

    invoke-virtual {v1}, Lcom/baidu/sapi2/CppUtils;->nativeConfigPassDoman3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/baidu/sapi2/PassportDomanGetter;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/baidu/sapi2/PassportDomanGetter;-><init>(Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiConfig;->passportDomanGetter:Lcom/baidu/sapi2/PassportDomanGetter;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfig;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setDevicePackageSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfig;->devicePackageSign:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Lcom/baidu/sapi2/social/config/Domain;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiConfig;->mDomain:Lcom/baidu/sapi2/social/config/Domain;

    return-void
.end method

.method public setEnableYi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfig;->enableYi:Z

    return-void
.end method

.method public setShowDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/SapiConfig;->isShowDevice:Z

    return-void
.end method
