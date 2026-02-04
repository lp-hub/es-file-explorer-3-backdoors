.class public Lcom/baidu/sapi2/account/AccountAgent;
.super Ljava/lang/Object;


# static fields
.field private static final RETAIN_ACCOUNT_MAX:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mobileAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;"
        }
    .end annotation
.end field

.field private normalAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blockRetainLastAccount(Ljava/util/HashMap;I)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_6

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/account/DisplayAccount;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_2

    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v3, v1

    move-object v4, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    if-eqz v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/account/DisplayAccount;

    move-object v4, v1

    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_5
    if-eq v0, v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v2, v0

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    return-object p1
.end method

.method private createOrderedList(Ljava/util/HashMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/baidu/sapi2/account/AccountAgent$1;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/account/AccountAgent$1;-><init>(Lcom/baidu/sapi2/account/AccountAgent;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private initAccountMap()V
    .locals 7

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountStorage;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/AccountStorage;->blockReceive()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/baidu/sapi2/account/DisplayAccount;->toDisplayAccount(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/sapi2/account/DisplayAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getKeyChain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x240c8400

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    :cond_3
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountType()Lcom/baidu/sapi2/account/AccountType;

    move-result-object v3

    sget-object v4, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountType()Lcom/baidu/sapi2/account/AccountType;

    move-result-object v3

    sget-object v4, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected blockAddAccount(Lcom/baidu/sapi2/account/DisplayAccount;)Z
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/accounts/AccountsException;

    const-string v1, "Account format is illegal."

    invoke-direct {v0, v1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getKeyChain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/baidu/sapi2/account/AccountAgent;->initAccountMap()V

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountType()Lcom/baidu/sapi2/account/AccountType;

    move-result-object v2

    sget-object v3, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lt v2, v6, :cond_4

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v2, v7, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    move v0, v1

    :goto_2
    return v0

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/account/AccountAgent;->blockRetainLastAccount(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountType()Lcom/baidu/sapi2/account/AccountType;

    move-result-object v2

    sget-object v3, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lt v2, v6, :cond_8

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, v7, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    move v0, v1

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-direct {p0, v2, v0}, Lcom/baidu/sapi2/account/AccountAgent;->blockRetainLastAccount(Ljava/util/HashMap;I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected blockClear()Z
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountStorage;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/AccountStorage;->blockClear()Z

    move-result v0

    return v0
.end method

.method protected blockDelete(Lcom/baidu/sapi2/account/AccountType;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected blockDelete(Ljava/lang/String;Lcom/baidu/sapi2/account/AccountType;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected blockGetAccountMap(Lcom/baidu/sapi2/account/AccountType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/account/AccountType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/account/DisplayAccount;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->NORMAL:Lcom/baidu/sapi2/account/AccountType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/account/AccountAgent;->createOrderedList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/baidu/sapi2/account/AccountAgent;->initAccountMap()V

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/account/AccountAgent;->createOrderedList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/sapi2/account/AccountType;->PHONE:Lcom/baidu/sapi2/account/AccountType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/account/AccountAgent;->createOrderedList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/baidu/sapi2/account/AccountAgent;->initAccountMap()V

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/account/AccountAgent;->createOrderedList(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected blockSave()Z
    .locals 5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->normalAccountMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->toJsonObject(Landroid/content/Context;Lcom/baidu/sapi2/account/DisplayAccount;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mobileAccountMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->toJsonObject(Landroid/content/Context;Lcom/baidu/sapi2/account/DisplayAccount;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountStorage;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountStorage;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/account/AccountStorage;->blockUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
