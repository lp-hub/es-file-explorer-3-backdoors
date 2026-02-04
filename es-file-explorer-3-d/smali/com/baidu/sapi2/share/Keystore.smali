.class public Lcom/baidu/sapi2/share/Keystore;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "action"

    return-object v0
.end method

.method static getCacheSize()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method static getData()Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    return-object v0
.end method

.method static getFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "share.json"

    return-object v0
.end method

.method static getFrom()Ljava/lang/String;
    .locals 1

    const-string v0, "from"

    return-object v0
.end method

.method static getIntentAction()Ljava/lang/String;
    .locals 1

    const-string v0, "baidu.intent.action.SHARE"

    return-object v0
.end method

.method static getNewIntentAction()Ljava/lang/String;
    .locals 1

    const-string v0, "baidu.intent.action.NEWSHARE"

    return-object v0
.end method

.method static getPermission()Ljava/lang/String;
    .locals 1

    const-string v0, "com.baidu.permission.SHARE"

    return-object v0
.end method

.method static getReceiver()Ljava/lang/String;
    .locals 1

    const-string v0, "receiver"

    return-object v0
.end method

.method static getSplit()Ljava/lang/String;
    .locals 1

    const-string v0, ";"

    return-object v0
.end method

.method static getTimestamp()Ljava/lang/String;
    .locals 1

    const-string v0, "timestamp"

    return-object v0
.end method
