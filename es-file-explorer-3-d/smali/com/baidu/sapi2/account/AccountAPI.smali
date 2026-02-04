.class public Lcom/baidu/sapi2/account/AccountAPI;
.super Ljava/lang/Object;


# static fields
.field private static volatile api:Lcom/baidu/sapi2/account/AccountAPI;


# instance fields
.field private agent:Lcom/baidu/sapi2/account/AccountAgent;

.field private threadPools:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/account/AccountAPI;->api:Lcom/baidu/sapi2/account/AccountAPI;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/sapi2/account/AccountAgent;

    invoke-direct {v0, p1}, Lcom/baidu/sapi2/account/AccountAgent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/account/AccountAPI;
    .locals 2

    sget-object v0, Lcom/baidu/sapi2/account/AccountAPI;->api:Lcom/baidu/sapi2/account/AccountAPI;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/sapi2/account/AccountAPI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/sapi2/account/AccountAPI;->api:Lcom/baidu/sapi2/account/AccountAPI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/account/AccountAPI;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/account/AccountAPI;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/account/AccountAPI;->api:Lcom/baidu/sapi2/account/AccountAPI;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/sapi2/account/AccountAPI;->api:Lcom/baidu/sapi2/account/AccountAPI;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public asyncAddAccount(Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/DisplayAccount;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/sapi2/account/AccountThread;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    sget-object v3, Lcom/baidu/sapi2/account/RunType;->ADD_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/baidu/sapi2/account/AccountThread;-><init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Lcom/baidu/sapi2/account/DisplayAccount;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public asyncClearAccount(Lcom/baidu/sapi2/account/LocalAccountsListener;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/sapi2/account/AccountThread;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    sget-object v3, Lcom/baidu/sapi2/account/RunType;->CLEAR_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    invoke-direct {v1, v2, p1, v3}, Lcom/baidu/sapi2/account/AccountThread;-><init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public asyncDeleteByType(Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/AccountType;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/sapi2/account/AccountThread;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    sget-object v3, Lcom/baidu/sapi2/account/RunType;->DELETE_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/baidu/sapi2/account/AccountThread;-><init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Lcom/baidu/sapi2/account/AccountType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public asyncDeleteSingleItem(Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/AccountType;Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/sapi2/account/AccountThread;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    sget-object v3, Lcom/baidu/sapi2/account/RunType;->DELETE_SINGLE_ITEM:Lcom/baidu/sapi2/account/RunType;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/sapi2/account/AccountThread;-><init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Ljava/lang/String;Lcom/baidu/sapi2/account/AccountType;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public asyncGetAccounts(Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/AccountType;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/sapi2/account/AccountThread;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    sget-object v3, Lcom/baidu/sapi2/account/RunType;->GET_ACCOUNT_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/baidu/sapi2/account/AccountThread;-><init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Lcom/baidu/sapi2/account/AccountType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public asyncSaveAccount(Lcom/baidu/sapi2/account/LocalAccountsListener;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->threadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/sapi2/account/AccountThread;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    sget-object v3, Lcom/baidu/sapi2/account/RunType;->SAVE_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    invoke-direct {v1, v2, p1, v3}, Lcom/baidu/sapi2/account/AccountThread;-><init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public blockAddAccount(Lcom/baidu/sapi2/account/DisplayAccount;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/account/AccountAgent;->blockAddAccount(Lcom/baidu/sapi2/account/DisplayAccount;)Z
    :try_end_0
    .catch Landroid/accounts/AccountsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public blockClearAccount()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/AccountAgent;->blockClear()Z

    move-result v0

    return v0
.end method

.method public blockDeleteByType(Lcom/baidu/sapi2/account/AccountType;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/account/AccountAgent;->blockDelete(Lcom/baidu/sapi2/account/AccountType;)Z

    move-result v0

    return v0
.end method

.method public blockDeleteSingleItem(Lcom/baidu/sapi2/account/AccountType;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v0, p2, p1}, Lcom/baidu/sapi2/account/AccountAgent;->blockDelete(Ljava/lang/String;Lcom/baidu/sapi2/account/AccountType;)Z

    move-result v0

    return v0
.end method

.method public blockGetAccounts(Lcom/baidu/sapi2/account/AccountType;)Ljava/util/List;
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

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/account/AccountAgent;->blockGetAccountMap(Lcom/baidu/sapi2/account/AccountType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blockSaveAccount()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountAPI;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v0}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    move-result v0

    return v0
.end method
