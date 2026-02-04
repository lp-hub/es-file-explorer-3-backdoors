.class public Lcom/baidu/share/message/token/TokenShareManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/baidu/share/message/token/TokenShareManager;


# instance fields
.field private mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/share/message/token/TokenShareManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/share/message/token/TokenShareManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/share/message/token/TokenShareManager;->mInstance:Lcom/baidu/share/message/token/TokenShareManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-static {}, Lcom/baidu/share/message/token/a/a;->a()Lcom/baidu/share/message/token/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    return-void
.end method

.method public static final getInstance()Lcom/baidu/share/message/token/TokenShareManager;
    .locals 1

    sget-object v0, Lcom/baidu/share/message/token/TokenShareManager;->mInstance:Lcom/baidu/share/message/token/TokenShareManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/share/message/token/TokenShareManager;

    invoke-direct {v0}, Lcom/baidu/share/message/token/TokenShareManager;-><init>()V

    sput-object v0, Lcom/baidu/share/message/token/TokenShareManager;->mInstance:Lcom/baidu/share/message/token/TokenShareManager;

    :cond_0
    sget-object v0, Lcom/baidu/share/message/token/TokenShareManager;->mInstance:Lcom/baidu/share/message/token/TokenShareManager;

    return-object v0
.end method


# virtual methods
.method public cleanupTokens()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0}, Lcom/baidu/share/message/token/a/a;->c()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0}, Lcom/baidu/share/message/token/a/a;->b()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/share/message/token/TokenShareManager;->mInstance:Lcom/baidu/share/message/token/TokenShareManager;

    return-void
.end method

.method public declared-synchronized getToken(J)Lcom/baidu/share/message/token/ShareToken;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/share/message/token/a/a;->a(J)Lcom/baidu/share/message/token/ShareToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVerifiedShareToken()Lcom/baidu/share/message/token/ShareToken;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0}, Lcom/baidu/share/message/token/a/a;->e()Lcom/baidu/share/message/token/ShareToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/share/message/token/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public setShareTokenListener(Lcom/baidu/share/message/token/ShareTokenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/share/message/token/a/a;->a(Lcom/baidu/share/message/token/ShareTokenListener;)V

    return-void
.end method

.method public setToken(Lcom/baidu/share/message/token/ShareToken;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0, p1}, Lcom/baidu/share/message/token/a/a;->a(Lcom/baidu/share/message/token/ShareToken;)V

    return-void
.end method

.method public syncToken()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/share/message/token/TokenShareManager;->mTokenShareManagerImpl:Lcom/baidu/share/message/token/a/a;

    invoke-virtual {v0}, Lcom/baidu/share/message/token/a/a;->d()V

    return-void
.end method
