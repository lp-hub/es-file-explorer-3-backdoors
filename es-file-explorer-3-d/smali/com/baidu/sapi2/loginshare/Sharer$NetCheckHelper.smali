.class Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final KEY_APPCOMMUNICATE:Ljava/lang/String; = "appcommunicate"

.field private static final TIME_OUT:I = 0x1388


# instance fields
.field private mBduss:Ljava/lang/String;

.field private mIsValid:Z

.field final synthetic this$0:Lcom/baidu/sapi2/loginshare/Sharer;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/loginshare/Sharer;ZLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->mBduss:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->mIsValid:Z

    iput-boolean p2, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->mIsValid:Z

    iput-object p3, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->mBduss:Ljava/lang/String;

    return-void
.end method

.method private asyncConnect()Ljava/lang/Boolean;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "appcommunicate"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private onFinish(Ljava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v3}, Lcom/baidu/sapi2/loginshare/Sharer;->access$700(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/EnableHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/loginshare/EnableHelper;->setEnable(Z)V

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v3}, Lcom/baidu/sapi2/loginshare/Sharer;->access$700(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/EnableHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/baidu/sapi2/loginshare/EnableHelper;->setCheckTime(J)V

    iget-object v3, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v3}, Lcom/baidu/sapi2/loginshare/Sharer;->access$800(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/FileStorage;

    move-result-object v3

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getCheckTime()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$800(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/FileStorage;

    move-result-object v1

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsEnable()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$900(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$800(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/FileStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->commit()Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1100(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v2}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1100(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1100(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/ShareModel;

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v2}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1100(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1200(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/share/ShareAssistant;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1200(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/share/ShareAssistant;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/share/ShareAssistant;->share(Lcom/baidu/sapi2/share/ShareModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->mIsValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1300(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->mBduss:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->doUpload(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$1000(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$602(Lcom/baidu/sapi2/loginshare/Sharer;Z)Z

    invoke-direct {p0}, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->asyncConnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->onFinish(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$602(Lcom/baidu/sapi2/loginshare/Sharer;Z)Z

    return-void
.end method
