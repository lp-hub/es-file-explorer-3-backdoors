.class public Lcom/baidu/sapi2/social/model/FillUProfileResponse;
.super Ljava/lang/Object;


# instance fields
.field private bduid:Ljava/lang/String;

.field private bduss:Ljava/lang/String;

.field private displayname:Ljava/lang/String;

.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private ptoken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorMsg:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->displayname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduss:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->ptoken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorCode:I

    iput-object p2, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->displayname:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduss:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->ptoken:Ljava/lang/String;

    iput-object p8, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBduid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduid:Ljava/lang/String;

    return-object v0
.end method

.method public getBduss()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduss:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->displayname:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getPtoken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->ptoken:Ljava/lang/String;

    return-object v0
.end method

.method public setBduid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduid:Ljava/lang/String;

    return-void
.end method

.method public setBduss(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->bduss:Ljava/lang/String;

    return-void
.end method

.method public setDisplayname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->displayname:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setPtoken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/model/FillUProfileResponse;->ptoken:Ljava/lang/String;

    return-void
.end method
