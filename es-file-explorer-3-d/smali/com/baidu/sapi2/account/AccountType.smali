.class public final enum Lcom/baidu/sapi2/account/AccountType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/account/AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/sapi2/account/AccountType;

.field public static final enum DEFAULT:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum DEVICE:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum DYNAMICPWD:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum FASTREG:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum NORMAL:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum PHONE:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum QR:Lcom/baidu/sapi2/account/AccountType;

.field public static final enum SOCIAL:Lcom/baidu/sapi2/account/AccountType;


# instance fields
.field private accountType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->DEFAULT:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "SOCIAL"

    invoke-direct {v0, v1, v7, v7}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->SOCIAL:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "QR"

    invoke-direct {v0, v1, v8, v8}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->QR:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "DEVICE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->DEVICE:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "FASTREG"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->FASTREG:Lcom/baidu/sapi2/account/AccountType;

    new-instance v0, Lcom/baidu/sapi2/account/AccountType;

    const-string v1, "DYNAMICPWD"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/sapi2/account/AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->DYNAMICPWD:Lcom/baidu/sapi2/account/AccountType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/baidu/sapi2/account/AccountType;

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->DEFAULT:Lcom/baidu/sapi2/account/AccountType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->SOCIAL:Lcom/baidu/sapi2/account/AccountType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->QR:Lcom/baidu/sapi2/account/AccountType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/sapi2/account/AccountType;->DEVICE:Lcom/baidu/sapi2/account/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/sapi2/account/AccountType;->FASTREG:Lcom/baidu/sapi2/account/AccountType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/sapi2/account/AccountType;->DYNAMICPWD:Lcom/baidu/sapi2/account/AccountType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/sapi2/account/AccountType;->$VALUES:[Lcom/baidu/sapi2/account/AccountType;

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

    iput p3, p0, Lcom/baidu/sapi2/account/AccountType;->accountType:I

    return-void
.end method

.method public static getAccountType(I)Lcom/baidu/sapi2/account/AccountType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->DEFAULT:Lcom/baidu/sapi2/account/AccountType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->SOCIAL:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->QR:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->DEVICE:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->FASTREG:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->DYNAMICPWD:Lcom/baidu/sapi2/account/AccountType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/account/AccountType;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/account/AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/account/AccountType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/account/AccountType;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->$VALUES:[Lcom/baidu/sapi2/account/AccountType;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/account/AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/account/AccountType;

    return-object v0
.end method


# virtual methods
.method public getTypeID()I
    .locals 1

    iget v0, p0, Lcom/baidu/sapi2/account/AccountType;->accountType:I

    return v0
.end method
