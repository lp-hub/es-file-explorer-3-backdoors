.class public Lcom/baidu/sapi2/loginshare/StatisticsHelper;
.super Ljava/lang/Object;


# static fields
.field static final ACTION_APP:I = 0x2

.field static final ACTION_USER:I = 0x1

.field private static final SNAME_APP:Ljava/lang/String; = "ServiceAppCount"

.field private static final SNAME_USER:Ljava/lang/String; = "EffectUserCount"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mEnable:Z

.field private mTpl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mTpl:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mEnable:Z

    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mTpl:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mAppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/sapi2/loginshare/StatisticsHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/sapi2/loginshare/StatisticsHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mTpl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mTpl:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mAppId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mEnable:Z

    return-void
.end method

.method doUpload(ILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mEnable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getStatisticsUserUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EffectUserCount"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;-><init>(Lcom/baidu/sapi2/loginshare/StatisticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getStatisticsAppUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceAppCount"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/baidu/sapi2/loginshare/StatisticsHelper$UploadTask;-><init>(Lcom/baidu/sapi2/loginshare/StatisticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onActivityCreate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->mEnable:Z

    return-void
.end method
