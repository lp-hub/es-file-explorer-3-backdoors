.class public Lcom/baidu/sapi2/share/ListenerHelper;
.super Ljava/lang/Object;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/sapi2/share/IShareListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    iget-object v1, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onShareEvent(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/share/IShareListener;

    invoke-interface {v0, p1}, Lcom/baidu/sapi2/share/IShareListener;->onShareEvent(Lcom/baidu/sapi2/share/ShareModel;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registListener(Lcom/baidu/sapi2/share/IShareListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method unRegistListener(Lcom/baidu/sapi2/share/IShareListener;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/share/ListenerHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
