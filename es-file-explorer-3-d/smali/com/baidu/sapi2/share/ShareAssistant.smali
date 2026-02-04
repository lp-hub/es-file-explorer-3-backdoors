.class public Lcom/baidu/sapi2/share/ShareAssistant;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/baidu/sapi2/share/ShareAssistant;


# instance fields
.field private mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

.field private mSender:Lcom/baidu/sapi2/share/ShareSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/share/ShareAssistant;->mInstance:Lcom/baidu/sapi2/share/ShareAssistant;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/sapi2/share/ListenerHelper;

    invoke-direct {v0}, Lcom/baidu/sapi2/share/ListenerHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mSender:Lcom/baidu/sapi2/share/ShareSender;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/baidu/sapi2/share/ShareSender;

    invoke-direct {v0, p1}, Lcom/baidu/sapi2/share/ShareSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mSender:Lcom/baidu/sapi2/share/ShareSender;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/share/ShareAssistant;
    .locals 2

    const-class v1, Lcom/baidu/sapi2/share/ShareAssistant;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/sapi2/share/ShareAssistant;->mInstance:Lcom/baidu/sapi2/share/ShareAssistant;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/share/ShareAssistant;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/share/ShareAssistant;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/share/ShareAssistant;->mInstance:Lcom/baidu/sapi2/share/ShareAssistant;

    :cond_0
    sget-object v0, Lcom/baidu/sapi2/share/ShareAssistant;->mInstance:Lcom/baidu/sapi2/share/ShareAssistant;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/share/ListenerHelper;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mSender:Lcom/baidu/sapi2/share/ShareSender;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mSender:Lcom/baidu/sapi2/share/ShareSender;

    invoke-virtual {v0}, Lcom/baidu/sapi2/share/ShareSender;->destroy()V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/share/NativeCrypto;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/share/ShareAssistant;->mInstance:Lcom/baidu/sapi2/share/ShareAssistant;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method onShareEvent(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/ListenerHelper;->onShareEvent(Lcom/baidu/sapi2/share/ShareModel;)V

    return-void
.end method

.method public registListener(Lcom/baidu/sapi2/share/IShareListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/ListenerHelper;->registListener(Lcom/baidu/sapi2/share/IShareListener;)Z

    move-result v0

    return v0
.end method

.method public share(Lcom/baidu/sapi2/share/ShareModel;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mSender:Lcom/baidu/sapi2/share/ShareSender;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/ShareSender;->share(Lcom/baidu/sapi2/share/ShareModel;)Z

    move-result v0

    return v0
.end method

.method public share(Lcom/baidu/sapi2/share/ShareModel;Ljava/util/ArrayList;)Z
    .locals 1
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

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mSender:Lcom/baidu/sapi2/share/ShareSender;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/share/ShareSender;->share(Lcom/baidu/sapi2/share/ShareModel;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public unRegistListener(Lcom/baidu/sapi2/share/IShareListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ShareAssistant;->mListenerHelper:Lcom/baidu/sapi2/share/ListenerHelper;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/share/ListenerHelper;->unRegistListener(Lcom/baidu/sapi2/share/IShareListener;)Z

    move-result v0

    return v0
.end method
