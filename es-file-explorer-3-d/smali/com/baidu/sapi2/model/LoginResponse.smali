.class public Lcom/baidu/sapi2/model/LoginResponse;
.super Ljava/lang/Object;


# static fields
.field public static final LOGINPROTECT_TYPE_MUST:I = 0x1

.field public static final LOGINPROTECT_TYPE_NO:I = 0x0

.field public static final LOGINPROTECT_TYPE_OPTIONAL:I = 0x2


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public mAuth:Ljava/lang/String;

.field public mBduss:Ljava/lang/String;

.field public mDisplayname:Ljava/lang/String;

.field public mEmail:Ljava/lang/String;

.field public mLoginProtectType:I

.field public mLoginProtectURL:Ljava/lang/String;

.field public mNeedVerifyCode:Z

.field public mPtoken:Ljava/lang/String;

.field public mStoken:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mUsername:Ljava/lang/String;

.field public mVcodeStr:Ljava/lang/String;

.field public mWeakPass:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/model/LoginResponse;->errorMsg:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/sapi2/model/LoginResponse;->mNeedVerifyCode:Z

    iput v2, p0, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectType:I

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mLoginProtectURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mVcodeStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mEmail:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/sapi2/model/LoginResponse;->mWeakPass:I

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mStoken:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mAuth:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toToken()Lcom/baidu/sapi2/loginshare/Token;
    .locals 2

    new-instance v0, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    iput-object v1, v0, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    iget-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mDisplayname:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/model/LoginResponse;->mPtoken:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    return-object v0
.end method
