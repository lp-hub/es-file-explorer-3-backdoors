.class public final enum Lcom/baidu/sapi2/social/config/Display;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/social/config/Display;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/sapi2/social/config/Display;

.field public static final enum NATIVE:Lcom/baidu/sapi2/social/config/Display;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/sapi2/social/config/Display;

    const-string v1, "NATIVE"

    const-string v2, "native"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/sapi2/social/config/Display;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/social/config/Display;->NATIVE:Lcom/baidu/sapi2/social/config/Display;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/sapi2/social/config/Display;

    sget-object v1, Lcom/baidu/sapi2/social/config/Display;->NATIVE:Lcom/baidu/sapi2/social/config/Display;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/sapi2/social/config/Display;->$VALUES:[Lcom/baidu/sapi2/social/config/Display;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/sapi2/social/config/Display;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/social/config/Display;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/social/config/Display;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/social/config/Display;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/social/config/Display;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/social/config/Display;->$VALUES:[Lcom/baidu/sapi2/social/config/Display;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/social/config/Display;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/social/config/Display;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/config/Display;->name:Ljava/lang/String;

    return-object v0
.end method
