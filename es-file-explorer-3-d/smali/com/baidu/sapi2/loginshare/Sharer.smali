.class public Lcom/baidu/sapi2/loginshare/Sharer;
.super Ljava/lang/Object;


# static fields
.field private static final DELAYED_TIME:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

.field private mEnableFalse:Ljava/lang/String;

.field private mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

.field private mEnableTrue:Ljava/lang/String;

.field private volatile mIsInit:Z

.field private volatile mIsNetChecking:Z

.field private mIsSocialFalse:Ljava/lang/String;

.field private mIsSocialTrue:Ljava/lang/String;

.field private mListenerHelper:Lcom/baidu/sapi2/loginshare/ListenerHelper;

.field private mNetCheckHelper:Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;

.field private mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

.field private mShareListener:Lcom/baidu/sapi2/share/IShareListener;

.field private mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

.field private mToken:Lcom/baidu/sapi2/loginshare/Token;

.field private mValidFalse:Ljava/lang/String;

.field private mValidTrue:Ljava/lang/String;

.field private mWaitingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/sapi2/share/ShareModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    new-instance v0, Lcom/baidu/sapi2/loginshare/EnableHelper;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/EnableHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    new-instance v0, Lcom/baidu/sapi2/loginshare/ListenerHelper;

    invoke-direct {v0}, Lcom/baidu/sapi2/loginshare/ListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mListenerHelper:Lcom/baidu/sapi2/loginshare/ListenerHelper;

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mValidTrue:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mValidFalse:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialFalse:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableTrue:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableFalse:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mNetCheckHelper:Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;

    iput-boolean v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsNetChecking:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mWaitingList:Ljava/util/ArrayList;

    new-instance v0, Lcom/baidu/sapi2/loginshare/Sharer$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/loginshare/Sharer$1;-><init>(Lcom/baidu/sapi2/loginshare/Sharer;)V

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareListener:Lcom/baidu/sapi2/share/IShareListener;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->handleLogin(Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->handleLogout(Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableFalse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mWaitingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/share/ShareAssistant;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/StatisticsHelper;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->handleSync(Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->handleSyncReply(Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/Token;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/sapi2/loginshare/Sharer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/sapi2/loginshare/Sharer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsNetChecking:Z

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/EnableHelper;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/FileStorage;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/sapi2/loginshare/Sharer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableTrue:Ljava/lang/String;

    return-object v0
.end method

.method private check(Lcom/baidu/sapi2/share/ShareModel;ZLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->isShare()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/sapi2/loginshare/Sharer;->hasCheckToday()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    invoke-virtual {v1}, Lcom/baidu/sapi2/loginshare/EnableHelper;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    invoke-virtual {v1, p1}, Lcom/baidu/sapi2/share/ShareAssistant;->share(Lcom/baidu/sapi2/share/ShareModel;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    invoke-virtual {v2, v0, p3}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->doUpload(ILjava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mWaitingList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mWaitingList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsNetChecking:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;

    invoke-direct {v1, p0, p2, p3}, Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;-><init>(Lcom/baidu/sapi2/loginshare/Sharer;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mNetCheckHelper:Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mNetCheckHelper:Lcom/baidu/sapi2/loginshare/Sharer$NetCheckHelper;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSocialAccount(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/sapi2/social/config/SocialType;",
            "Lcom/baidu/sapi2/social/model/SocialToken;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v4, Lcom/baidu/sapi2/social/model/SocialToken;

    invoke-direct {v4}, Lcom/baidu/sapi2/social/model/SocialToken;-><init>()V

    const-string v5, "isBinded"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/baidu/sapi2/social/model/SocialToken;->isBinded:Z

    const-string v5, "username"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/social/model/SocialToken;->username:Ljava/lang/String;

    const-string v5, "sex"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/baidu/sapi2/social/config/Sex;->getSex(I)Lcom/baidu/sapi2/social/config/Sex;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/social/model/SocialToken;->sex:Lcom/baidu/sapi2/social/config/Sex;

    const-string v5, "headURL"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/sapi2/social/model/SocialToken;->headURL:Ljava/lang/String;

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/baidu/sapi2/social/config/SocialType;->getSocialType(I)Lcom/baidu/sapi2/social/config/SocialType;

    move-result-object v3

    iput-object v3, v4, Lcom/baidu/sapi2/social/model/SocialToken;->type:Lcom/baidu/sapi2/social/config/SocialType;

    iget-object v3, v4, Lcom/baidu/sapi2/social/model/SocialToken;->type:Lcom/baidu/sapi2/social/config/SocialType;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getSocialAccount(Ljava/util/HashMap;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/sapi2/social/config/SocialType;",
            "Lcom/baidu/sapi2/social/model/SocialToken;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "isBinded"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/social/model/SocialToken;

    iget-boolean v1, v1, Lcom/baidu/sapi2/social/model/SocialToken;->isBinded:Z

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "username"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/social/model/SocialToken;

    iget-object v1, v1, Lcom/baidu/sapi2/social/model/SocialToken;->username:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sex"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/social/model/SocialToken;

    iget-object v1, v1, Lcom/baidu/sapi2/social/model/SocialToken;->sex:Lcom/baidu/sapi2/social/config/Sex;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "headURL"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/social/model/SocialToken;

    iget-object v1, v1, Lcom/baidu/sapi2/social/model/SocialToken;->headURL:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/social/model/SocialToken;

    iget-object v0, v0, Lcom/baidu/sapi2/social/model/SocialToken;->type:Lcom/baidu/sapi2/social/config/SocialType;

    invoke-virtual {v0}, Lcom/baidu/sapi2/social/config/SocialType;->getType()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private handleLogin(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 14

    iget-object v2, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    new-instance v13, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v13}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v13, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v13, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    invoke-static {v13}, Lcom/baidu/sapi2/loginshare/Sharer;->isValid(Lcom/baidu/sapi2/loginshare/Token;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v13, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-nez v0, :cond_e

    iget-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x1

    iget-object v2, v13, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v13, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iget-object v4, v13, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    iget-object v5, v13, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    iget-object v6, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v7, v13, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iget-object v8, v13, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    iget-object v9, v13, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    iget-boolean v10, v13, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iget-object v11, v13, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    iget-object v12, v13, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z

    sget-object v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    iput-object v13, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    const/4 v1, 0x2

    iget-object v2, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->doUpload(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mListenerHelper:Lcom/baidu/sapi2/loginshare/ListenerHelper;

    invoke-virtual {v0, v13}, Lcom/baidu/sapi2/loginshare/ListenerHelper;->onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V

    goto/16 :goto_1
.end method

.method private handleLogout(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 14

    iget-object v2, p1, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    new-instance v13, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v13}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v13, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v13, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    invoke-static {v13}, Lcom/baidu/sapi2/loginshare/Sharer;->isValid(Lcom/baidu/sapi2/loginshare/Token;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v13, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-nez v0, :cond_d

    iget-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_d
    sget-object v0, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    iput-object v0, v13, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    const/4 v1, 0x0

    iget-object v2, v13, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    iget-object v3, v13, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iget-object v4, v13, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    iget-object v5, v13, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    iget-object v6, v13, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iget-object v7, v13, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iget-object v8, v13, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    iget-object v9, v13, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    iget-boolean v10, v13, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iget-object v11, v13, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    iget-object v12, v13, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z

    iput-object v13, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mListenerHelper:Lcom/baidu/sapi2/loginshare/ListenerHelper;

    invoke-virtual {v0, v13}, Lcom/baidu/sapi2/loginshare/ListenerHelper;->onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V

    goto/16 :goto_1
.end method

.method private handleSync(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 8

    iget-object v0, p1, Lcom/baidu/sapi2/share/ShareModel;->mFrom:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/baidu/sapi2/share/ShareModel;

    invoke-direct {v2}, Lcom/baidu/sapi2/share/ShareModel;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSyncReplyAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    iget-object v3, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getExtra()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/sapi2/share/ShareAssistant;->share(Lcom/baidu/sapi2/share/ShareModel;Ljava/util/ArrayList;)Z

    goto/16 :goto_0
.end method

.method private handleSyncReply(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    new-instance v14, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v14}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v1, v13}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v15}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v7}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v9}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iput-object v12, v14, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mValidTrue:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    :goto_2
    iput-object v1, v14, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    iput-object v4, v14, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iput-object v5, v14, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    iput-object v6, v14, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    iput-object v7, v14, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iput-object v8, v14, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    iput-object v3, v14, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v14, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v14, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v11, v14, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    :cond_4
    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v1

    iget-boolean v1, v1, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v14, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-nez v1, :cond_6

    iget-object v1, v14, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mValidTrue:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v10, v14, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    iget-object v11, v14, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    iget-object v12, v14, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mListenerHelper:Lcom/baidu/sapi2/loginshare/ListenerHelper;

    invoke-virtual {v1, v14}, Lcom/baidu/sapi2/loginshare/ListenerHelper;->onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V

    goto/16 :goto_0
.end method

.method private hasCheckToday()Z
    .locals 6

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/EnableHelper;->getCheckTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3, v4}, Ljava/util/Date;-><init>(III)V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValid(Lcom/baidu/sapi2/loginshare/Token;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncStorage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iget-boolean v0, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getOtherBduss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->commit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/sapi2/social/config/SocialType;",
            "Lcom/baidu/sapi2/social/model/SocialToken;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p8}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p8}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz p9, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p10}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p11}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->commit()Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    const-string v0, "0"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialFalse:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/sapi2/social/config/SocialType;",
            "Lcom/baidu/sapi2/social/model/SocialToken;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p9}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz p10, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p11}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-static {p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p12}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/FileStorage;->commit()Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    const-string v0, "0"

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialFalse:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareListener:Lcom/baidu/sapi2/share/IShareListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareListener:Lcom/baidu/sapi2/share/IShareListener;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/share/ShareAssistant;->unRegistListener(Lcom/baidu/sapi2/share/IShareListener;)Z

    iput-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    :cond_0
    iput-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    iput-object v2, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    return-void
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    const-string v1, "device_token"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getLastToken()Lcom/baidu/sapi2/loginshare/Token;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    return-object v0
.end method

.method public getOtherBduss()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getOtherBduss()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "params cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/sapi2/share/ShareAssistant;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/share/ShareAssistant;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareAssistant:Lcom/baidu/sapi2/share/ShareAssistant;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mShareListener:Lcom/baidu/sapi2/share/IShareListener;

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/share/ShareAssistant;->registListener(Lcom/baidu/sapi2/share/IShareListener;)Z

    new-instance v2, Lcom/baidu/sapi2/loginshare/FileStorage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/baidu/sapi2/loginshare/FileStorage;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsValid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mValidFalse:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsEnable()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableTrue:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/sapi2/loginshare/FileStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-virtual {v2}, Lcom/baidu/sapi2/loginshare/FileStorage;->commit()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/loginshare/EnableHelper;->setEnable(Z)V

    new-instance v2, Lcom/baidu/sapi2/loginshare/Sharer$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/sapi2/loginshare/Sharer$2;-><init>(Lcom/baidu/sapi2/loginshare/Sharer;)V

    invoke-virtual {v2}, Lcom/baidu/sapi2/loginshare/Sharer$2;->start()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsEnable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getCheckTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableTrue:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/baidu/sapi2/loginshare/EnableHelper;->setEnable(Z)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mEnableHelper:Lcom/baidu/sapi2/loginshare/EnableHelper;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/baidu/sapi2/loginshare/EnableHelper;->setCheckTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getExtra()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getJson()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mDataStorage:Lcom/baidu/sapi2/loginshare/FileStorage;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/loginshare/FileStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    :cond_4
    new-instance v2, Lcom/baidu/sapi2/loginshare/Token;

    invoke-direct {v2}, Lcom/baidu/sapi2/loginshare/Token;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mValidTrue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    :goto_3
    iput-object v2, v15, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v4, v2, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v5, v2, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v6, v2, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v7, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v8, v2, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v14, v2, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v9, v2, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v10, v2, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-boolean v11, v2, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    iput-object v13, v2, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    goto :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method invalid(Lcom/baidu/sapi2/loginshare/Token;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/baidu/sapi2/loginshare/Sharer;->isValid(Lcom/baidu/sapi2/loginshare/Token;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v13, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v15, v8}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v19, Lcom/baidu/sapi2/share/ShareModel;

    invoke-direct/range {v19 .. v19}, Lcom/baidu/sapi2/share/ShareModel;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getLogoutAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getJson()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialFalse:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(Ljava/lang/String;)Z

    sget-object v2, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2, v8}, Lcom/baidu/sapi2/loginshare/Sharer;->check(Lcom/baidu/sapi2/share/ShareModel;ZLjava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method onActivityCreate()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mStatisticsHelper:Lcom/baidu/sapi2/loginshare/StatisticsHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/loginshare/StatisticsHelper;->onActivityCreate()V

    :cond_0
    return-void
.end method

.method setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer;->mListenerHelper:Lcom/baidu/sapi2/loginshare/ListenerHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/loginshare/ListenerHelper;->setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V

    return-void
.end method

.method valid(Lcom/baidu/sapi2/loginshare/Token;)Z
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsInit:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/baidu/sapi2/loginshare/Sharer;->isValid(Lcom/baidu/sapi2/loginshare/Token;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/baidu/sapi2/loginshare/Token;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/baidu/sapi2/loginshare/Token;->mPtoken:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/sapi2/loginshare/Token;->mDisplayname:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialTrue:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/baidu/sapi2/loginshare/Sharer;->getSocialAccount(Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v13, v6}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    invoke-static {v15, v8}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v9}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v19, Lcom/baidu/sapi2/share/ShareModel;

    invoke-direct/range {v19 .. v19}, Lcom/baidu/sapi2/share/ShareModel;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getLoginAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getUsername()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getEmail()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getBduss()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getPtoken()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getJson()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDisplayname()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v18

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getIsSocialAccount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSocialAccounts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v11, v3}, Lcom/baidu/sapi2/loginshare/LoginShareCrypto;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/baidu/sapi2/share/ShareModel;->mData:Ljava/util/HashMap;

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/sapi2/loginshare/Sharer;->mIsSocialFalse:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/sapi2/loginshare/Token;->mExtras:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/baidu/sapi2/loginshare/Token;->mJson:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/baidu/sapi2/loginshare/Token;->isSocialAccount:Z

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/baidu/sapi2/loginshare/Token;->socialTokenMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/baidu/sapi2/loginshare/Token;->deviceToken:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/baidu/sapi2/loginshare/Sharer;->syncStorage(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/HashMap;Ljava/lang/String;)Z

    sget-object v2, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/sapi2/loginshare/Sharer;->mToken:Lcom/baidu/sapi2/loginshare/Token;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2, v8}, Lcom/baidu/sapi2/loginshare/Sharer;->check(Lcom/baidu/sapi2/share/ShareModel;ZLjava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method
