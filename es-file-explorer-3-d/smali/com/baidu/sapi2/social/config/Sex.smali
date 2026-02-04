.class public final enum Lcom/baidu/sapi2/social/config/Sex;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/social/config/Sex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/sapi2/social/config/Sex;

.field public static final enum FEMALE:Lcom/baidu/sapi2/social/config/Sex;

.field public static final enum MALE:Lcom/baidu/sapi2/social/config/Sex;

.field public static final enum UNKNOWN:Lcom/baidu/sapi2/social/config/Sex;


# instance fields
.field private name:Ljava/lang/String;

.field private sexType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/sapi2/social/config/Sex;

    const-string v1, "UNKNOWN"

    const-string v2, "\u672a\u77e5"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/baidu/sapi2/social/config/Sex;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/social/config/Sex;->UNKNOWN:Lcom/baidu/sapi2/social/config/Sex;

    new-instance v0, Lcom/baidu/sapi2/social/config/Sex;

    const-string v1, "MALE"

    const-string v2, "\u7537"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/baidu/sapi2/social/config/Sex;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/social/config/Sex;->MALE:Lcom/baidu/sapi2/social/config/Sex;

    new-instance v0, Lcom/baidu/sapi2/social/config/Sex;

    const-string v1, "FEMALE"

    const-string v2, "\u5973"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/baidu/sapi2/social/config/Sex;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/social/config/Sex;->FEMALE:Lcom/baidu/sapi2/social/config/Sex;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/sapi2/social/config/Sex;

    sget-object v1, Lcom/baidu/sapi2/social/config/Sex;->UNKNOWN:Lcom/baidu/sapi2/social/config/Sex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/sapi2/social/config/Sex;->MALE:Lcom/baidu/sapi2/social/config/Sex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/social/config/Sex;->FEMALE:Lcom/baidu/sapi2/social/config/Sex;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/sapi2/social/config/Sex;->$VALUES:[Lcom/baidu/sapi2/social/config/Sex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/sapi2/social/config/Sex;->sexType:I

    iput-object p4, p0, Lcom/baidu/sapi2/social/config/Sex;->name:Ljava/lang/String;

    return-void
.end method

.method public static getSex(I)Lcom/baidu/sapi2/social/config/Sex;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/baidu/sapi2/social/config/Sex;->UNKNOWN:Lcom/baidu/sapi2/social/config/Sex;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/baidu/sapi2/social/config/Sex;->MALE:Lcom/baidu/sapi2/social/config/Sex;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/baidu/sapi2/social/config/Sex;->FEMALE:Lcom/baidu/sapi2/social/config/Sex;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/social/config/Sex;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/social/config/Sex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/social/config/Sex;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/social/config/Sex;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/social/config/Sex;->$VALUES:[Lcom/baidu/sapi2/social/config/Sex;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/social/config/Sex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/social/config/Sex;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/config/Sex;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSexType()I
    .locals 1

    iget v0, p0, Lcom/baidu/sapi2/social/config/Sex;->sexType:I

    return v0
.end method
