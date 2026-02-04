.class public final enum Lcom/baidu/sapi2/account/RunType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/account/RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/sapi2/account/RunType;

.field public static final enum ADD_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

.field public static final enum CLEAR_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

.field public static final enum DELETE_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

.field public static final enum DELETE_SINGLE_ITEM:Lcom/baidu/sapi2/account/RunType;

.field public static final enum GET_ACCOUNT_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

.field public static final enum SAVE_ACCOUNT:Lcom/baidu/sapi2/account/RunType;


# instance fields
.field private runType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/baidu/sapi2/account/RunType;

    const-string v1, "ADD_ACCOUNT"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/sapi2/account/RunType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->ADD_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    new-instance v0, Lcom/baidu/sapi2/account/RunType;

    const-string v1, "GET_ACCOUNT_BY_TYPE"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/sapi2/account/RunType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->GET_ACCOUNT_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    new-instance v0, Lcom/baidu/sapi2/account/RunType;

    const-string v1, "SAVE_ACCOUNT"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/sapi2/account/RunType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->SAVE_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    new-instance v0, Lcom/baidu/sapi2/account/RunType;

    const-string v1, "DELETE_SINGLE_ITEM"

    invoke-direct {v0, v1, v7, v7}, Lcom/baidu/sapi2/account/RunType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->DELETE_SINGLE_ITEM:Lcom/baidu/sapi2/account/RunType;

    new-instance v0, Lcom/baidu/sapi2/account/RunType;

    const-string v1, "DELETE_BY_TYPE"

    invoke-direct {v0, v1, v8, v8}, Lcom/baidu/sapi2/account/RunType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->DELETE_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    new-instance v0, Lcom/baidu/sapi2/account/RunType;

    const-string v1, "CLEAR_ACCOUNT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/account/RunType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->CLEAR_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->ADD_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->GET_ACCOUNT_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->SAVE_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->DELETE_SINGLE_ITEM:Lcom/baidu/sapi2/account/RunType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->DELETE_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/sapi2/account/RunType;->CLEAR_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/sapi2/account/RunType;->$VALUES:[Lcom/baidu/sapi2/account/RunType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/sapi2/account/RunType;->runType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/account/RunType;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/account/RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/account/RunType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/account/RunType;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/account/RunType;->$VALUES:[Lcom/baidu/sapi2/account/RunType;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/account/RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/account/RunType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/baidu/sapi2/account/RunType;->runType:I

    return v0
.end method
