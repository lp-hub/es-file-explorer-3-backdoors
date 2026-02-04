.class Lcom/baidu/sapi2/SapiClient$7;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/SapiCallBack;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$7;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$7;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$7;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$7;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$7;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/SapiClient;->access$800(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$7;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$7;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$7;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/sapi2/SapiClient;->access$800(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)V

    return-void
.end method
