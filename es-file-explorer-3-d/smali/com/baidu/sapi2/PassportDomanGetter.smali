.class public Lcom/baidu/sapi2/PassportDomanGetter;
.super Ljava/lang/Object;


# instance fields
.field private mMaxDoman:I

.field private mPassportDomans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPassportIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRandom:Ljava/util/Random;

.field private usedDomans:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->usedDomans:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mMaxDoman:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportIps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportDomans:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportDomans:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/baidu/sapi2/PassportDomanGetter;->fillDomans()V

    return-void
.end method


# virtual methods
.method public fillDomans()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->usedDomans:I

    iget-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportIps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportIps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportDomans:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method getNextDoman()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportIps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportIps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mPassportIps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->usedDomans:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->usedDomans:I

    goto :goto_0
.end method

.method isMaxDomanUsed()Z
    .locals 2

    iget v0, p0, Lcom/baidu/sapi2/PassportDomanGetter;->usedDomans:I

    iget v1, p0, Lcom/baidu/sapi2/PassportDomanGetter;->mMaxDoman:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
