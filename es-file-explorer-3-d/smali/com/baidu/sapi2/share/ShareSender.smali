.class public Lcom/baidu/sapi2/share/ShareSender;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isValidModel(Lcom/baidu/sapi2/share/ShareModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/baidu/sapi2/share/NativeCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3}, Lcom/baidu/sapi2/share/NativeCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/NativeCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getReceiver()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p4}, Lcom/baidu/sapi2/share/NativeCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/NativeCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    return-void
.end method

.method share(Lcom/baidu/sapi2/share/ShareModel;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/share/ShareSender;->share(Lcom/baidu/sapi2/share/ShareModel;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method share(Lcom/baidu/sapi2/share/ShareModel;Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/share/ShareModel;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/baidu/sapi2/share/ShareSender;->isValidModel(Lcom/baidu/sapi2/share/ShareModel;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v9

    :cond_0
    iget-object v2, p1, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v9

    :goto_1
    if-ge v1, v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getSplit()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getSplit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSyncAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v10

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getNewIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send old and new broadcast!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->d(Ljava/lang/String;)V

    move v1, v10

    :goto_2
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    move v0, v8

    :goto_3
    move v9, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getLogoutAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v10

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getNewIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send old and new broadcast!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->d(Ljava/lang/String;)V

    move v1, v10

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send old broadcast!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->d(Ljava/lang/String;)V

    move v1, v0

    move v0, v8

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getNewIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send new broadcast!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->d(Ljava/lang/String;)V

    move v1, v8

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/sapi2/share/Keystore;->getIntentAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lcom/baidu/sapi2/share/ShareSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send old broadcast!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->d(Ljava/lang/String;)V

    move v1, v0

    move v0, v8

    goto/16 :goto_2

    :cond_7
    move v0, v9

    goto/16 :goto_3
.end method
