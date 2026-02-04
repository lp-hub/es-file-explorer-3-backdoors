.class Lcom/baidu/sapi2/SapiHelper$LoginShareListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/loginshare/ILoginShareListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiHelper;


# direct methods
.method private constructor <init>(Lcom/baidu/sapi2/SapiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;->this$0:Lcom/baidu/sapi2/SapiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/sapi2/SapiHelper;Lcom/baidu/sapi2/SapiHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;-><init>(Lcom/baidu/sapi2/SapiHelper;)V

    return-void
.end method


# virtual methods
.method public onLoginShareEvent(Lcom/baidu/sapi2/loginshare/Token;)V
    .locals 2

    iget-object v0, p1, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->VALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;->this$0:Lcom/baidu/sapi2/SapiHelper;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiHelper;->access$102(Lcom/baidu/sapi2/SapiHelper;Lcom/baidu/sapi2/loginshare/Token;)Lcom/baidu/sapi2/loginshare/Token;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;->this$0:Lcom/baidu/sapi2/SapiHelper;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiHelper;->access$200(Lcom/baidu/sapi2/SapiHelper;)Lcom/baidu/sapi2/IFirstInstallLoginShareListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;->this$0:Lcom/baidu/sapi2/SapiHelper;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiHelper;->access$200(Lcom/baidu/sapi2/SapiHelper;)Lcom/baidu/sapi2/IFirstInstallLoginShareListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/IFirstInstallLoginShareListener;->onSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/baidu/sapi2/loginshare/Token;->mEvent:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    sget-object v1, Lcom/baidu/sapi2/loginshare/LoginShareEvent;->INVALID:Lcom/baidu/sapi2/loginshare/LoginShareEvent;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiHelper$LoginShareListener;->this$0:Lcom/baidu/sapi2/SapiHelper;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->invalidToken()V

    goto :goto_0
.end method
