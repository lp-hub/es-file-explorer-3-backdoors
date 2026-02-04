.class public Lcom/baidu/sapi2/account/DisplayAccount;
.super Ljava/lang/Object;


# static fields
.field private static final DISPLAY_ACCOUNT_DISPLAYNAME:Ljava/lang/String; = "displayname"

.field private static final DISPLAY_ACCOUNT_DISPLAYPWD:Ljava/lang/String; = "displaypassword"

.field private static final DISPLAY_ACCOUNT_KEYCHAIN:Ljava/lang/String; = "keychain"

.field private static final DISPLAY_ACCOUNT_LASTTIME:Ljava/lang/String; = "lasttime"

.field private static final DISPLAY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final DISPLAY_ACCOUNT_PWD:Ljava/lang/String; = "password"

.field private static final DISPLAY_ACCOUNT_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Lcom/baidu/sapi2/account/AccountType;

.field private displayName:Ljava/lang/String;

.field private displayPassword:Ljava/lang/String;

.field private encryptPassword:Ljava/lang/String;

.field private keyChain:Ljava/lang/String;

.field private lastLoginTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDisplayAccount(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/sapi2/account/DisplayAccount;
    .locals 6

    new-instance v1, Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/account/DisplayAccount;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setAccountName(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/baidu/sapi2/account/AccountType;->getAccountType(I)Lcom/baidu/sapi2/account/AccountType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setAccountType(Lcom/baidu/sapi2/account/AccountType;)V

    const-string v0, "displayname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayName(Ljava/lang/String;)V

    const-string v0, "displaypassword"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    const-string v0, "lasttime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/account/DisplayAccount;->setLastLoginTime(J)V

    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    const-string v0, "keychain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/DisplayAccount;->getKeyChain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/sapi2/account/AccountEncrypt;->decryptPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toJsonObject(Landroid/content/Context;Lcom/baidu/sapi2/account/DisplayAccount;)Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getKeyChain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setDisplayPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setEncryptPassword(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/baidu/sapi2/account/DisplayAccount;->setKeyChain(Ljava/lang/String;)V

    :cond_1
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getAccountType()Lcom/baidu/sapi2/account/AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/account/AccountType;->getTypeID()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "displayname"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "displaypassword"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getDisplayPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "password"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lasttime"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getLastLoginTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "keychain"

    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getKeyChain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/baidu/sapi2/account/DisplayAccount;->getEncryptPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/sapi2/account/AccountEncrypt;->encryptPassword(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Lcom/baidu/sapi2/account/AccountType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->accountType:Lcom/baidu/sapi2/account/AccountType;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->displayPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->encryptPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyChain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->keyChain:Ljava/lang/String;

    return-object v0
.end method

.method public getLastLoginTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/sapi2/account/DisplayAccount;->lastLoginTime:J

    return-wide v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(Lcom/baidu/sapi2/account/AccountType;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->accountType:Lcom/baidu/sapi2/account/AccountType;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->displayPassword:Ljava/lang/String;

    return-void
.end method

.method public setEncryptPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->encryptPassword:Ljava/lang/String;

    return-void
.end method

.method public setKeyChain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->keyChain:Ljava/lang/String;

    return-void
.end method

.method public setLastLoginTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/sapi2/account/DisplayAccount;->lastLoginTime:J

    return-void
.end method
