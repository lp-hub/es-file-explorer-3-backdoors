.class public final enum Lcom/baidu/sapi2/social/config/Domain;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/sapi2/social/config/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/sapi2/social/config/Domain;

.field public static final enum DOMAIN_ONLINE:Lcom/baidu/sapi2/social/config/Domain;

.field public static final enum DOMAIN_QA:Lcom/baidu/sapi2/social/config/Domain;

.field public static final enum DOMAIN_RD:Lcom/baidu/sapi2/social/config/Domain;

.field public static final enum DOMAIN_SAFEBOX:Lcom/baidu/sapi2/social/config/Domain;


# instance fields
.field private deviceUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wap:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/sapi2/social/config/Domain;

    const-string v1, "DOMAIN_ONLINE"

    const-string v3, "http://passport.baidu.com"

    const-string v4, "http://wappass.baidu.com"

    const-string v5, "https://openapi.baidu.com"

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/social/config/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/social/config/Domain;

    new-instance v3, Lcom/baidu/sapi2/social/config/Domain;

    const-string v4, "DOMAIN_RD"

    const-string v6, "http://passport.rdtest.baidu.com"

    const-string v7, "http://passport.rdtest.baidu.com"

    const-string v8, "http://dbl-chunlei-rd26.vm.baidu.com:8080"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/sapi2/social/config/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/social/config/Domain;

    new-instance v3, Lcom/baidu/sapi2/social/config/Domain;

    const-string v4, "DOMAIN_QA"

    const-string v6, "http://passport.qatest.baidu.com"

    const-string v7, "http://wappass.qatest.baidu.com"

    const-string v8, "http://db-infbk-online-17.db01.baidu.com:8080"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/baidu/sapi2/social/config/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/social/config/Domain;

    new-instance v3, Lcom/baidu/sapi2/social/config/Domain;

    const-string v4, "DOMAIN_SAFEBOX"

    const-string v6, "http://10.23.238.184"

    const-string v7, "http://10.23.238.184"

    const-string v8, "http://10.23.238.184"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/baidu/sapi2/social/config/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_SAFEBOX:Lcom/baidu/sapi2/social/config/Domain;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/sapi2/social/config/Domain;

    sget-object v1, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/social/config/Domain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_RD:Lcom/baidu/sapi2/social/config/Domain;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_QA:Lcom/baidu/sapi2/social/config/Domain;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/sapi2/social/config/Domain;->DOMAIN_SAFEBOX:Lcom/baidu/sapi2/social/config/Domain;

    aput-object v1, v0, v11

    sput-object v0, Lcom/baidu/sapi2/social/config/Domain;->$VALUES:[Lcom/baidu/sapi2/social/config/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/sapi2/social/config/Domain;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/social/config/Domain;->wap:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/social/config/Domain;->deviceUrl:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/sapi2/social/config/Domain;
    .locals 1

    const-class v0, Lcom/baidu/sapi2/social/config/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/social/config/Domain;

    return-object v0
.end method

.method public static values()[Lcom/baidu/sapi2/social/config/Domain;
    .locals 1

    sget-object v0, Lcom/baidu/sapi2/social/config/Domain;->$VALUES:[Lcom/baidu/sapi2/social/config/Domain;

    invoke-virtual {v0}, [Lcom/baidu/sapi2/social/config/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/sapi2/social/config/Domain;

    return-object v0
.end method


# virtual methods
.method public getDeviceUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/config/Domain;->deviceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/config/Domain;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/social/config/Domain;->wap:Ljava/lang/String;

    return-object v0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/social/config/Domain;->url:Ljava/lang/String;

    return-void
.end method
