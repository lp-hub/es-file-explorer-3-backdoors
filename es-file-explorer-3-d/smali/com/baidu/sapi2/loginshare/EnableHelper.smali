.class public Lcom/baidu/sapi2/loginshare/EnableHelper;
.super Ljava/lang/Object;


# instance fields
.field private mCheckTime:J

.field private volatile mEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/EnableHelper;->mEnable:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/sapi2/loginshare/EnableHelper;->mCheckTime:J

    return-void
.end method


# virtual methods
.method getCheckTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/sapi2/loginshare/EnableHelper;->mCheckTime:J

    return-wide v0
.end method

.method isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/loginshare/EnableHelper;->mEnable:Z

    return v0
.end method

.method setCheckTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/sapi2/loginshare/EnableHelper;->mCheckTime:J

    return-void
.end method

.method setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/loginshare/EnableHelper;->mEnable:Z

    return-void
.end method
