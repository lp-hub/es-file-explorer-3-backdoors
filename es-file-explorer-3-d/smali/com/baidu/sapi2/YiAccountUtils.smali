.class public Lcom/baidu/sapi2/YiAccountUtils;
.super Ljava/lang/Object;


# static fields
.field public static final BAIDUACCOUNT_ACTION:Ljava/lang/String; = "com.baidu.account"

.field public static final BAIDUACCOUNT_KEY:Ljava/lang/String; = "com.baidu.account.key"

.field public static final BAIDUACCOUNT_TYPE:Ljava/lang/String; = "com.baidu"

.field private static mInstance:Lcom/baidu/sapi2/YiAccountUtils;

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/sapi2/YiAccountUtils;->mInstance:Lcom/baidu/sapi2/YiAccountUtils;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/YiAccountUtils;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    iput-boolean v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mIsActivity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/sapi2/YiAccountUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mIsActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBaiduAccountDisplayName()Ljava/lang/String;
    .locals 2

    const-string v0, "displayname"

    invoke-direct {p0, v0}, Lcom/baidu/sapi2/YiAccountUtils;->getYiUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/baidu/sapi2/YiAccountUtils;->getUserName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/YiAccountUtils;
    .locals 2

    sget-object v1, Lcom/baidu/sapi2/YiAccountUtils;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/sapi2/YiAccountUtils;->mInstance:Lcom/baidu/sapi2/YiAccountUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/YiAccountUtils;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/YiAccountUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/sapi2/YiAccountUtils;->mInstance:Lcom/baidu/sapi2/YiAccountUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/baidu/sapi2/YiAccountUtils;->mInstance:Lcom/baidu/sapi2/YiAccountUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.baidu"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getYiUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const-string v0, "content://com.baidu.account.provider.AccountInfoProvider/accountInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public blockingGetBaiduAuthToken(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/sapi2/YiAccountUtils;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.baidu"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    aget-object v1, v1, v2

    const-string v2, "BDUSS"

    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getNumOfAccounts(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "com.baidu"

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getTokenAsync(Ljava/lang/String;Lcom/baidu/sapi2/ITokenCallback;Landroid/app/Activity;)V
    .locals 15

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    const-string v4, "com.baidu"

    :goto_0
    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/baidu/sapi2/YiAccountUtils;->getActivity()Landroid/app/Activity;

    move-result-object v6

    :goto_1
    iget-object v2, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PASSWDCK"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;

    array-length v2, v8

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :goto_2
    move-object v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/sapi2/YiAccountUtils$MyAccountManagerCallback;-><init>(Lcom/baidu/sapi2/YiAccountUtils;Lcom/baidu/sapi2/ITokenCallback;Ljava/lang/String;ZLandroid/app/Activity;)V

    array-length v2, v8

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    aget-object v3, v8, v2

    const-string v4, "BDUSS"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, v7

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_1
    :goto_3
    return-void

    :cond_2
    move-object/from16 v6, p3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const-string v9, "BDUSS"

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v8, v4

    move-object v12, v6

    move-object v13, v1

    invoke-virtual/range {v7 .. v14}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object/from16 v4, p1

    goto :goto_0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "username"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/baidu/sapi2/YiAccountUtils;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "displayname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/baidu/sapi2/YiAccountUtils;->getBaiduAccountDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/YiAccountUtils;->getYiUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasYiAccount()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v5, "com.baidu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public invalidateToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "com.baidu"

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public isLogin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/sapi2/YiAccountUtils;->hasYiAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.baidu"

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/YiAccountUtils;->getNumOfAccounts(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manageAccount()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public removeAccount()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.baidu"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lcom/baidu/sapi2/YiAccountUtils$1;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/YiAccountUtils$1;-><init>(Lcom/baidu/sapi2/YiAccountUtils;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "com.baidu"

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "account"

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/sapi2/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public startFillNameActivity(Landroid/app/Activity;IZ)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.account.FILL_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "show_dialog"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
