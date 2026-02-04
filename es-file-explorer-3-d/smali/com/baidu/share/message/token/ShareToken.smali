.class public Lcom/baidu/share/message/token/ShareToken;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final NORMALIZED_TOKEN:Ljava/lang/String; = "_Normalized_Token_"

.field public static final STATUS_INVALID:I = 0x2

.field public static final STATUS_PREVERIFIED:I = 0x0

.field public static final STATUS_VALID:I = 0x1


# instance fields
.field public mStatus:I

.field public mTimestamp:J

.field public mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/share/message/token/ShareToken;->mStatus:I

    iput-object p1, p0, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    iput p4, p0, Lcom/baidu/share/message/token/ShareToken;->mStatus:I

    return-void
.end method


# virtual methods
.method public toHashMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "token"

    iget-object v2, p0, Lcom/baidu/share/message/token/ShareToken;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/baidu/share/message/token/ShareToken;->mTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
