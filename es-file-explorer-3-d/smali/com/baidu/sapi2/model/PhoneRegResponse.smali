.class public Lcom/baidu/sapi2/model/PhoneRegResponse;
.super Ljava/lang/Object;


# instance fields
.field public mBduss:Ljava/lang/String;

.field public mDisplayname:Ljava/lang/String;

.field public mPtoken:Ljava/lang/String;

.field public mStoken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mBduss:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mPtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mDisplayname:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/model/PhoneRegResponse;->mStoken:Ljava/lang/String;

    return-void
.end method
