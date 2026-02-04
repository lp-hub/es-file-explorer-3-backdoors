.class public Lcom/baidu/sapi2/loginshare/FileStorage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/loginshare/IDataStorage;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private mIsChange:Z

.field private mJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/sapi2/loginshare/FileStorage;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEngyptFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v4}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/baidu/sapi2/loginshare/FileStorage;->commit()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    :goto_7
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_5
    :goto_9
    throw v0

    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_9
    move-exception v3

    goto :goto_4

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public commit()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    :goto_3
    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/FileStorage;->mIsChange:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
