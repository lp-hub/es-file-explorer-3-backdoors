.class public Lcom/baidu/sapi2/SapiClient;
.super Ljava/lang/Object;


# static fields
.field private static mSapiConfig:Lcom/baidu/sapi2/SapiConfig; = null

.field private static final version:Ljava/lang/String; = "5.3"


# instance fields
.field encryptInfo:Ljava/lang/String;

.field private mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

.field private mContext:Landroid/content/Context;

.field private mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/baidu/sapi2/SapiConfig;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/sapi2/SapiClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleRegDataCheckCallBack(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/SapiClient;->realRegDataCheck(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleVerifyCodeImgCallBack(ILcom/baidu/sapi2/SapiCallBack;[B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/sapi2/SapiClient;->realLogout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/sapi2/SapiClient;->handleFillUname(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/SapiClient;->realFillUname(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleDeviceResult(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleDeviceForcedResult(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleQrPCLogin(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleQrAppLogin(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/sapi2/SapiClient;IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/baidu/sapi2/SapiClient;->handleLogin(IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleFastReg(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleAskDynamicPass(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleDownloadLogin(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 1

    invoke-direct/range {p0 .. p11}, Lcom/baidu/sapi2/SapiClient;->realLogin(Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;Lcom/baidu/sapi2/security/EncryptHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiClient;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/sapi2/SapiClient;->handlePhoneReg(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/baidu/sapi2/SapiClient;->realPhoneReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiClient;->getErrorCodeForReg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient;->handleSmsCode(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/baidu/sapi2/SapiClient;->realGetSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z

    move-result v0

    return v0
.end method

.method private getErrorCode(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/16 v0, -0x64

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getErrorCodeForReg(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiClient;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const v1, 0x1adb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sign_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/security/Md5;->md5s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUaInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";android_sapi_v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/SapiClient;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.3"

    return-object v0
.end method

.method private handleAskDynamicPass(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-interface {p2, v0, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleDeviceForcedResult(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_5

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    const-string v3, "device_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "device_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    :cond_0
    iput-object p3, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v0, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_4

    const/16 v0, -0x64

    invoke-interface {p2, v0, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2, p1, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDeviceResult(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_6

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_1

    const-string v0, "force_reg_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/baidu/sapi2/SapiClient;->deviceForcedRegister(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    const-string v3, "device_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "device_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    :cond_2
    iput-object p3, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_3
    if-eqz p2, :cond_4

    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v0, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p2, :cond_5

    const/16 v0, -0x64

    invoke-interface {p2, v0, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleDownloadLogin(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_4

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iput-object p3, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v0, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_3

    const/16 v0, -0x64

    invoke-interface {p2, v0, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2, p1, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleFastReg(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_4

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iput-object p3, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v0, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_3

    const/16 v0, -0x64

    invoke-interface {p2, v0, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2, p1, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleFillUname(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    new-instance v0, Lcom/baidu/sapi2/model/FillUnameResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/FillUnameResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "userinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p5, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "bduss"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mBduss:Ljava/lang/String;

    const-string v1, "ptoken"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mPtoken:Ljava/lang/String;

    const-string v1, "stoken"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mStoken:Ljava/lang/String;

    const-string v1, "displayname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mDisplayname:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mUid:Ljava/lang/String;

    const-string v1, "uname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mUserName:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v1, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v1}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/FillUnameResponse;->mUserName:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_0
    invoke-interface {p2, p1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-interface {p2, v0, v4}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1, v4}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleLogin(IZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_d

    new-instance v3, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v3}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "userinfo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p6, v2}, Lcom/baidu/sapi2/security/EncryptHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "needvcode"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_8

    move v2, v1

    :goto_0
    iput-boolean v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mNeedVerifyCode:Z

    iget-boolean v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mNeedVerifyCode:Z

    if-eqz v2, :cond_0

    const-string v2, "vcodestr"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mVcodeStr:Ljava/lang/String;

    :cond_0
    const-string v2, "displayname"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    const-string v2, "uname"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mEmail:Ljava/lang/String;

    const-string v2, "weakpass"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mWeakPass:I

    const-string v2, "bduss"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    const-string v2, "stoken"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mStoken:Ljava/lang/String;

    const-string v2, "auth"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mAuth:Ljava/lang/String;

    const-string v2, "sdkres_actype"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectType:I

    const-string v2, "sdkres_url"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectURL:Ljava/lang/String;

    if-nez p1, :cond_1

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v5, v3, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/sapi2/model/LoginResponse;->mEmail:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    iget-object v5, v3, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v7, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v2

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/baidu/sapi2/SapiContext;->setLastLoginType(I)V

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/sapi2/SapiContext;->setLastLoginPhone(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p4, :cond_6

    if-eq p1, v7, :cond_5

    if-nez p1, :cond_b

    :cond_5
    iget v0, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectType:I

    if-ne v0, v1, :cond_b

    iget v0, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectType:I

    iget-object v1, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectURL:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Lcom/baidu/sapi2/callback/LoginCallBack;->onMustProtectEvent(ILjava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v1, v3, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    move v2, v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiContext;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/SapiContext;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/baidu/sapi2/SapiContext;->setLastLoginUsername(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz p4, :cond_a

    const/16 v0, -0x64

    invoke-virtual {p4, v0, v6}, Lcom/baidu/sapi2/callback/LoginCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v6}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    :try_start_1
    iget v0, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget v0, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectType:I

    iget-object v1, v3, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectURL:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Lcom/baidu/sapi2/callback/LoginCallBack;->onOptionalProtectEvent(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p4, p1, v3}, Lcom/baidu/sapi2/callback/LoginCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p4, p1, v3}, Lcom/baidu/sapi2/callback/LoginCallBack;->onEvent(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_d
    if-eqz p4, :cond_e

    invoke-virtual {p4, p1, v6}, Lcom/baidu/sapi2/callback/LoginCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v6}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handlePhoneReg(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    new-instance v0, Lcom/baidu/sapi2/model/PhoneRegResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/PhoneRegResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "userinfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p4, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "bduss"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mBduss:Ljava/lang/String;

    const-string v1, "ptoken"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mPtoken:Ljava/lang/String;

    const-string v1, "stoken"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mStoken:Ljava/lang/String;

    const-string v1, "displayname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mDisplayname:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v1, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v1}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v1, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_0
    invoke-interface {p2, p1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v2, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/16 v1, -0x64

    invoke-interface {p2, v1, v4}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v0, v0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2, p1, v4}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v4}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleQrAppLogin(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p3, :cond_4

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "displayname"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    const-string v2, "bduss"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    const-string v2, "ptoken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iput-object p3, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiConfig;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/SapiHelper;->setShowDevice(Z)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->valid()V

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "errno"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v0, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p2, :cond_3

    const/16 v0, -0x64

    invoke-interface {p2, v0, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2, p1, v5}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    invoke-interface {v0, v5}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleQrPCLogin(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/baidu/sapi2/model/QrPcLoginResponse;

    invoke-direct {v2}, Lcom/baidu/sapi2/model/QrPcLoginResponse;-><init>()V

    const-string v3, "provice"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/model/QrPcLoginResponse;->mProvince:Ljava/lang/String;

    const-string v3, "city"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/sapi2/model/QrPcLoginResponse;->mCity:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    invoke-interface {p2, v0, v4}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRegDataCheckCallBack(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p2, p1, p3}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    return-void
.end method

.method private handleSmsCode(ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x101

    if-eq p1, v0, :cond_0

    const v0, 0x1adcf

    if-ne p1, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "vcodestr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, -0x64

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1, p3}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleVerifyCodeImgCallBack(ILcom/baidu/sapi2/SapiCallBack;[B)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p2, p1, p3}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0xc8

    invoke-interface {p2, v0, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private realFillUname(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 4

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crypttype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getCryptType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "bduss"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientid"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->isClientIpValid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "clientip"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "ptoken"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {p7}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, p5, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getFilluname()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$14;

    invoke-direct {v3, p0, p1, p4, p7}, Lcom/baidu/sapi2/SapiClient$14;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private realGetSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 4

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crypttype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getCryptType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "phonenum"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientid"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {p7}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->isClientIpValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "clientip"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "verifycode"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vcodestr"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, p5, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getApplyregcode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$7;

    invoke-direct {v3, p0, p1}, Lcom/baidu/sapi2/SapiClient$7;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    return v0
.end method

.method private realLogin(Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 15

    new-instance v2, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v2, "crypttype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v5}, Lcom/baidu/sapi2/SapiConfig;->getCryptType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tpl"

    sget-object v4, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appid"

    sget-object v4, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "cuid"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cert_id"

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p9, :cond_0

    const-string v2, "isdpass"

    const-string v4, "1"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p10, :cond_1

    invoke-virtual/range {p10 .. p10}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayPassword()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p10 .. p10}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "username"

    move-object/from16 v0, p5

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "isphone"

    if-eqz p4, :cond_3

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    move-object/from16 v0, p6

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "login_type"

    const-string v5, "3"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual/range {p11 .. p11}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdk_version"

    const-string v5, "2"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "pinfo"

    invoke-static {}, Lcom/baidu/sapi2/Utils;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "verifycode"

    move-object/from16 v0, p8

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vcodestr"

    move-object/from16 v0, p7

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/security/EncryptHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    const-string v2, "userinfo"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sig"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v12, v3}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v13, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getLogin()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Lcom/baidu/sapi2/SapiClient$3;

    move-object v3, p0

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p11

    move-object/from16 v8, p1

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/baidu/sapi2/SapiClient$3;-><init>(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;ZLjava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v14, v12, v2}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    const-string v2, "0"

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p10 .. p10}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    invoke-virtual/range {p10 .. p10}, Lcom/baidu/sapi2/account/DisplayAccount;->getKeyChain()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Lcom/baidu/sapi2/security/EncryptHelper;->setAESKey(Ljava/lang/String;)V

    const-string v2, "userinfo"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient;->encryptInfo:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private realLogout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 5

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crypttype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getCryptType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "bduss"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientid"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {p4}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->isClientIpValid()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "clientip"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "bdstoken"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/security/Md5;->md5s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p2, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getLogout()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$12;

    invoke-direct {v3, p0}, Lcom/baidu/sapi2/SapiClient$12;-><init>(Lcom/baidu/sapi2/SapiClient;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private realPhoneReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 5

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crypttype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getCryptType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "phonenum"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "passwd"

    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "smscode"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {p8}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fields"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"username\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "clientid"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->isClientIpValid()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "clientip"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p8, p6, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getPhoneregverify()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$5;

    invoke-direct {v3, p0, p1, p8}, Lcom/baidu/sapi2/SapiClient$5;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    return v0
.end method

.method private realRegDataCheck(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)Z
    .locals 4

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crypttype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getCryptType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cert_id"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "checkall"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "clientid"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "key"

    invoke-virtual {p7}, Lcom/baidu/sapi2/security/EncryptHelper;->getAESKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->isClientIpValid()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "clientip"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "username"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "password"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "phonenum"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v3, "fields"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, p5, v1}, Lcom/baidu/sapi2/security/EncryptHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getRegdatacheck()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$9;

    invoke-direct {v3, p0, p1}, Lcom/baidu/sapi2/SapiClient$9;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    return v0
.end method

.method private setSapiConfig(Lcom/baidu/sapi2/SapiConfig;)V
    .locals 0

    sput-object p1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    return-void
.end method


# virtual methods
.method public askDynamicPass(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    const/16 v1, -0x67

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientip"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAskDynamicPwd()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$22;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/sapi2/SapiClient$22;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public cancelRequest()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/http/AsyncHttpClient;->cancelRequests(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public destory()V
    .locals 0

    return-void
.end method

.method public deviceCheck()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    const-string v2, "device_token"

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/Utils;->createDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_token"

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    const-string v3, "device_token"

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/SapiHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getDeviceCheck()Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDeviceCheck()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$15;

    invoke-direct {v3, p0}, Lcom/baidu/sapi2/SapiClient$15;-><init>(Lcom/baidu/sapi2/SapiClient;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deviceForcedRegister(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getDevicePackageSign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->isShowDevice()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/Utils;->createDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/DeviceCrypto;->encryptDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptpl"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_info"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "force_reg_token"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDeviceForceReg()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$17;

    invoke-direct {v3, p0, p1}, Lcom/baidu/sapi2/SapiClient$17;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deviceLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getDevicePackageSign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->isShowDevice()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/Utils;->createDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/DeviceCrypto;->encryptDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptpl"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_token"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_sign"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDevicePackageSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDeviceLogin()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$18;

    invoke-direct {v3, p0, p1}, Lcom/baidu/sapi2/SapiClient$18;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deviceRegister(Lcom/baidu/sapi2/SapiCallBack;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getDevicePackageSign()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->isShowDevice()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/Utils;->createDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/DeviceCrypto;->encryptDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptpl"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_info"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_sign"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDevicePackageSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDeviceReg()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$16;

    invoke-direct {v3, p0, p1}, Lcom/baidu/sapi2/SapiClient$16;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public downloadLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "loginsign"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientip"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getDownloadLogin()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$23;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/sapi2/SapiClient$23;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public fastReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_0

    const/16 v1, -0x67

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sms"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientip"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getFastReg()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$21;

    invoke-direct {v3, p0, p1, p2}, Lcom/baidu/sapi2/SapiClient$21;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public fillUname(Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v0, -0xc8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/sapi2/callback/LoginCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {v4}, Lcom/baidu/sapi2/security/EncryptHelper;-><init>()V

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v8, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/SapiClient$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient$13;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/callback/LoginCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    move v0, v7

    goto :goto_0
.end method

.method public getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    const/16 v0, -0xc8

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    new-instance v6, Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {v6}, Lcom/baidu/sapi2/security/EncryptHelper;-><init>()V

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v8, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/SapiClient$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient$6;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v8, v9, v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    move v0, v7

    goto :goto_0
.end method

.method public getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    const/16 v0, -0xc8

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "image/png"

    aput-object v3, v2, v0

    const-string v0, "image/jpeg"

    aput-object v0, v2, v1

    const/4 v0, 0x2

    const-string v3, "image/jpg"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "image/gif"

    aput-object v3, v2, v0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfig;->getGenimage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/baidu/sapi2/SapiClient$10;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/baidu/sapi2/SapiClient$10;-><init>(Lcom/baidu/sapi2/SapiClient;[Ljava/lang/String;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    move v0, v1

    goto :goto_0
.end method

.method public getYunInfo()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getYunInfoUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$1;

    invoke-direct {v3, p0}, Lcom/baidu/sapi2/SapiClient$1;-><init>(Lcom/baidu/sapi2/SapiClient;)V

    invoke-virtual {v0, v2, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    move v0, v1

    goto :goto_0
.end method

.method public initial(Landroid/content/Context;Lcom/baidu/sapi2/SapiConfig;)Z
    .locals 1

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/baidu/sapi2/SapiClient;->setSapiConfig(Lcom/baidu/sapi2/SapiConfig;)V

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiClient;->getYunInfo()Z

    const/4 v0, 0x1

    return v0
.end method

.method public login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/sapi2/SapiClient;->login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/baidu/sapi2/callback/LoginCallBack;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)Z
    .locals 13

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, -0xc8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/sapi2/callback/LoginCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {v5}, Lcom/baidu/sapi2/security/EncryptHelper;-><init>()V

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    iget-object v11, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/baidu/sapi2/SapiClient$2;

    move-object v1, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/baidu/sapi2/SapiClient$2;-><init>(Lcom/baidu/sapi2/SapiClient;ZLjava/lang/String;Lcom/baidu/sapi2/callback/LoginCallBack;Lcom/baidu/sapi2/security/EncryptHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/sapi2/account/DisplayAccount;)V

    invoke-virtual {v11, v12, v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public logout(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    new-instance v0, Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {v0}, Lcom/baidu/sapi2/security/EncryptHelper;-><init>()V

    new-instance v1, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$11;

    invoke-direct {v3, p0, p1, v0}, Lcom/baidu/sapi2/SapiClient$11;-><init>(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public phoneReg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/16 v0, -0xc8

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {v3}, Lcom/baidu/sapi2/security/EncryptHelper;-><init>()V

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v8, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/SapiClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/baidu/sapi2/SapiClient$4;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Lcom/baidu/sapi2/security/EncryptHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public qrAppLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    const/16 v1, -0xc8

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    if-eqz p1, :cond_0

    const/16 v1, -0x67

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sign"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cmd"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientid"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientip"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tpl"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v1, v0}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getQRAppLogin()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/sapi2/SapiClient$20;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/baidu/sapi2/SapiClient$20;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public qrPCLogin(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const/16 v1, -0xc8

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    const/16 v1, -0x67

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    const v1, 0x27166

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    :cond_8
    new-instance v1, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/SapiClient;->getUaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "sign"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cmd"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bduss"

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "stoken"

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ptoken"

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clientid"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "clientip"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tpl"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getTpl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appid"

    sget-object v3, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiConfig;->getSignkey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/sapi2/SapiClient;->getPassportSig(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sig"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/baidu/sapi2/http/RequestParams;

    invoke-direct {v9, v1}, Lcom/baidu/sapi2/http/RequestParams;-><init>(Ljava/util/Map;)V

    iget-object v10, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiConfig;->getQrPCLogin()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/baidu/sapi2/SapiClient$19;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/sapi2/SapiClient$19;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v9, v1}, Lcom/baidu/sapi2/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/baidu/sapi2/http/RequestParams;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public regDataCheck(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    const/16 v0, -0xc8

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/sapi2/SapiCallBack;->onEvent(ILjava/lang/Object;)V

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    if-eqz v1, :cond_0

    new-instance v6, Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {v6}, Lcom/baidu/sapi2/security/EncryptHelper;-><init>()V

    new-instance v0, Lcom/baidu/sapi2/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    iget-object v8, p0, Lcom/baidu/sapi2/SapiClient;->mAsyncHttpClient:Lcom/baidu/sapi2/http/AsyncHttpClient;

    sget-object v0, Lcom/baidu/sapi2/SapiClient;->mSapiConfig:Lcom/baidu/sapi2/SapiConfig;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfig;->getLastCert()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/baidu/sapi2/SapiClient$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/sapi2/SapiClient$8;-><init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    invoke-virtual {v8, v9, v0}, Lcom/baidu/sapi2/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V

    move v0, v7

    goto :goto_0
.end method

.method setTokenCallBack(Lcom/baidu/sapi2/ITokenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient;->mTokenCallback:Lcom/baidu/sapi2/ITokenCallback;

    return-void
.end method
