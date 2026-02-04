.class Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/baidu/sapi2/ITokenCallback;

.field private mIfAddAccount:Z

.field public mytoken:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/sapi2/YiAccountUtils;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/YiAccountUtils;Lcom/baidu/sapi2/ITokenCallback;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/sapi2/YiAccountUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/sapi2/ITokenCallback;

    iput-object p2, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/sapi2/ITokenCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mAccountType:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mIfAddAccount:Z

    iput-object p5, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private endAll()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/sapi2/ITokenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/sapi2/ITokenCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.account"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.baidu.account.key"

    iget-object v2, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/sapi2/YiAccountUtils;

    invoke-static {v0}, Lcom/baidu/sapi2/YiAccountUtils;->access$000(Lcom/baidu/sapi2/YiAccountUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mIfAddAccount:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    if-nez v2, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "BDUSS"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->endAll()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;->endAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
