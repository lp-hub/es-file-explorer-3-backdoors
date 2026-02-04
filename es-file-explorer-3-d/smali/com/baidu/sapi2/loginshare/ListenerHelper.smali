.class public Lcom/baidu/sapi2/loginshare/ListenerHelper;
.super Ljava/lang/Object;


# instance fields
.field private mListener:Lcom/baidu/sapi2/loginshare/ILoginShareListener;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/ListenerHelper;->mListener:Lcom/baidu/sapi2/loginshare/ILoginShareListener;

    return-void
.end method


# virtual methods
.method declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/baidu/sapi2/loginshare/ListenerHelper;->mListener:Lcom/baidu/sapi2/loginshare/ILoginShareListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/ListenerHelper;->mListener:Lcom/baidu/sapi2/loginshare/ILoginShareListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/ListenerHelper;->mListener:Lcom/baidu/sapi2/loginshare/ILoginShareListener;

    invoke-interface {v0, p1}, Lcom/baidu/sapi2/loginshare/ILoginShareListener;->onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLoginShareListener(Lcom/baidu/sapi2/loginshare/ILoginShareListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/ListenerHelper;->mListener:Lcom/baidu/sapi2/loginshare/ILoginShareListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
