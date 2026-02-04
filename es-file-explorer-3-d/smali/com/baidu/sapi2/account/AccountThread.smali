.class public Lcom/baidu/sapi2/account/AccountThread;
.super Ljava/lang/Thread;


# instance fields
.field private account:Lcom/baidu/sapi2/account/DisplayAccount;

.field private accountName:Ljava/lang/String;

.field private accountType:Lcom/baidu/sapi2/account/AccountType;

.field private agent:Lcom/baidu/sapi2/account/AccountAgent;

.field private mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

.field private type:Lcom/baidu/sapi2/account/RunType;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iput-object p3, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    iput-object p2, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Lcom/baidu/sapi2/account/AccountType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iput-object p2, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iput-object p3, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    iput-object p4, p0, Lcom/baidu/sapi2/account/AccountThread;->accountType:Lcom/baidu/sapi2/account/AccountType;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Lcom/baidu/sapi2/account/DisplayAccount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iput-object p2, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iput-object p3, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    iput-object p4, p0, Lcom/baidu/sapi2/account/AccountThread;->account:Lcom/baidu/sapi2/account/DisplayAccount;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/sapi2/account/AccountAgent;Lcom/baidu/sapi2/account/LocalAccountsListener;Lcom/baidu/sapi2/account/RunType;Ljava/lang/String;Lcom/baidu/sapi2/account/AccountType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iput-object p2, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iput-object p3, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    iput-object p5, p0, Lcom/baidu/sapi2/account/AccountThread;->accountType:Lcom/baidu/sapi2/account/AccountType;

    iput-object p4, p0, Lcom/baidu/sapi2/account/AccountThread;->accountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->ADD_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountThread;->account:Lcom/baidu/sapi2/account/DisplayAccount;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/account/AccountAgent;->blockAddAccount(Lcom/baidu/sapi2/account/DisplayAccount;)Z
    :try_end_0
    .catch Landroid/accounts/AccountsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/account/LocalAccountsListener;->getResult(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->GET_ACCOUNT_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountThread;->accountType:Lcom/baidu/sapi2/account/AccountType;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/account/AccountAgent;->blockGetAccountMap(Lcom/baidu/sapi2/account/AccountType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/account/LocalAccountsListener;->getResult(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->SAVE_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/AccountAgent;->blockSave()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/account/LocalAccountsListener;->getResult(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->DELETE_SINGLE_ITEM:Lcom/baidu/sapi2/account/RunType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountThread;->accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/account/AccountThread;->accountType:Lcom/baidu/sapi2/account/AccountType;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/sapi2/account/AccountAgent;->blockDelete(Ljava/lang/String;Lcom/baidu/sapi2/account/AccountType;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/account/LocalAccountsListener;->getResult(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->DELETE_BY_TYPE:Lcom/baidu/sapi2/account/RunType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    iget-object v2, p0, Lcom/baidu/sapi2/account/AccountThread;->accountType:Lcom/baidu/sapi2/account/AccountType;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/account/AccountAgent;->blockDelete(Lcom/baidu/sapi2/account/AccountType;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/account/LocalAccountsListener;->getResult(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->type:Lcom/baidu/sapi2/account/RunType;

    sget-object v1, Lcom/baidu/sapi2/account/RunType;->CLEAR_ACCOUNT:Lcom/baidu/sapi2/account/RunType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/account/AccountThread;->mListener:Lcom/baidu/sapi2/account/LocalAccountsListener;

    iget-object v1, p0, Lcom/baidu/sapi2/account/AccountThread;->agent:Lcom/baidu/sapi2/account/AccountAgent;

    invoke-virtual {v1}, Lcom/baidu/sapi2/account/AccountAgent;->blockClear()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/account/LocalAccountsListener;->getResult(Z)V

    goto :goto_0
.end method
