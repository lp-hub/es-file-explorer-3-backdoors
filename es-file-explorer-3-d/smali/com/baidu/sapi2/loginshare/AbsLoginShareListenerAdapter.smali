.class public abstract Lcom/baidu/sapi2/loginshare/AbsLoginShareListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/loginshare/ILoginShareListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInvalid(Lcom/baidu/sapi2/loginshare/Token;)V
.end method

.method public onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V
    .locals 2

    iget-object v0, p1, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiHelper;->invalid(Z)V

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/loginshare/AbsLoginShareListenerAdapter;->onInvalid(Lcom/baidu/sapi2/loginshare/Token;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->setToken(Lcom/baidu/sapi2/loginshare/Token;)V

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/loginshare/AbsLoginShareListenerAdapter;->onValid(Lcom/baidu/sapi2/loginshare/Token;)V

    goto :goto_0
.end method

.method public abstract onValid(Lcom/baidu/sapi2/loginshare/Token;)V
.end method
