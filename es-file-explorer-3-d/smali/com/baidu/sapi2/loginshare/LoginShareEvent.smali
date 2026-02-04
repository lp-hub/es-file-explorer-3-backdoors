.class public final enum Lcom/baidu/sapi2/loginshare/LoginShareEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/loginshare/LoginShareEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/sapi2/loginshare/LoginShareEvent;

.field public static final enum INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

.field public static final enum VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v2}, Lcom/baidu/sapi2/loginshare/LoginShareEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    new-instance v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/baidu/sapi2/loginshare/LoginShareEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->$VALUES:[Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/loginshare/LoginShareEvent;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/loginshare/LoginShareEvent;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->$VALUES:[Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/loginshare/LoginShareEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    return-object v0
.end method
