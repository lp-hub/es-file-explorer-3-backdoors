.class public Lcom/baidu/sapi2/social/model/SocialResponse;
.super Ljava/lang/Object;


# instance fields
.field private baidu_uname:Ljava/lang/String;

.field private bduid:Ljava/lang/String;

.field private bduss:Ljava/lang/String;

.field private displayname:Ljava/lang/String;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private isBinded:Z

.field private ptoken:Ljava/lang/String;

.field private social_headurl:Ljava/lang/String;

.field private social_sex:Lcom/baidu/sapi2/social/config/Sex;

.field private social_type:Lcom/baidu/sapi2/social/config/SocialType;

.field private social_uname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorMsg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->displayname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->ptoken:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->isBinded:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduss:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->baidu_uname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_uname:Ljava/lang/String;

    sget-object v0, Lcom/baidu/sapi2/social/config/Sex;->UNKNOWN:Lcom/baidu/sapi2/social/config/Sex;

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_sex:Lcom/baidu/sapi2/social/config/Sex;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_headurl:Ljava/lang/String;

    sget-object v0, Lcom/baidu/sapi2/social/config/SocialType;->UNKNOWN:Lcom/baidu/sapi2/social/config/SocialType;

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_type:Lcom/baidu/sapi2/social/config/SocialType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/social/config/Sex;Ljava/lang/String;Lcom/baidu/sapi2/social/config/SocialType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorCode:I

    iput-object p2, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->displayname:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduid:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->ptoken:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->isBinded:Z

    iput-object p7, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduss:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->baidu_uname:Ljava/lang/String;

    iput-object p9, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_uname:Ljava/lang/String;

    iput-object p10, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_sex:Lcom/baidu/sapi2/social/config/Sex;

    iput-object p11, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_headurl:Ljava/lang/String;

    iput-object p12, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_type:Lcom/baidu/sapi2/social/config/SocialType;

    return-void
.end method


# virtual methods
.method public getBaidu_uname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->baidu_uname:Ljava/lang/String;

    return-object v0
.end method

.method public getBduid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduid:Ljava/lang/String;

    return-object v0
.end method

.method public getBduss()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduss:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->displayname:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPtoken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->ptoken:Ljava/lang/String;

    return-object v0
.end method

.method public getSocial_headurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_headurl:Ljava/lang/String;

    return-object v0
.end method

.method public getSocial_sex()Lcom/baidu/sapi2/social/config/Sex;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_sex:Lcom/baidu/sapi2/social/config/Sex;

    return-object v0
.end method

.method public getSocial_type()Lcom/baidu/sapi2/social/config/SocialType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_type:Lcom/baidu/sapi2/social/config/SocialType;

    return-object v0
.end method

.method public getSocial_uname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_uname:Ljava/lang/String;

    return-object v0
.end method

.method public isBinded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->isBinded:Z

    return v0
.end method

.method public setBaidu_uname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->baidu_uname:Ljava/lang/String;

    return-void
.end method

.method public setBduid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduid:Ljava/lang/String;

    return-void
.end method

.method public setBduss(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->bduss:Ljava/lang/String;

    return-void
.end method

.method public setBinded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->isBinded:Z

    return-void
.end method

.method public setDisplayname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->displayname:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setPtoken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->ptoken:Ljava/lang/String;

    return-void
.end method

.method public setSocial_headurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_headurl:Ljava/lang/String;

    return-void
.end method

.method public setSocial_sex(Lcom/baidu/sapi2/social/config/Sex;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_sex:Lcom/baidu/sapi2/social/config/Sex;

    return-void
.end method

.method public setSocial_type(Lcom/baidu/sapi2/social/config/SocialType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_type:Lcom/baidu/sapi2/social/config/SocialType;

    return-void
.end method

.method public setSocial_uname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/SocialResponse;->social_uname:Ljava/lang/String;

    return-void
.end method
