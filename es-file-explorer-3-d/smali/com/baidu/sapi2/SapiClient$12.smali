.class Lcom/baidu/sapi2/SapiClient$12;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$12;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    return-void
.end method
