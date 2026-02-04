.class Lcom/baidu/sapi2/SapiClient$14;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/SapiClient;

.field final synthetic val$callBack:Lcom/baidu/sapi2/SapiCallBack;

.field final synthetic val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiClient;Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiClient$14;->this$0:Lcom/baidu/sapi2/SapiClient;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiClient$14;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiClient$14;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiClient$14;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$14;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$14;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$14;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$14;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$14;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/SapiClient;->access$1400(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiClient$14;->this$0:Lcom/baidu/sapi2/SapiClient;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiClient$14;->this$0:Lcom/baidu/sapi2/SapiClient;

    invoke-static {v1, p2}, Lcom/baidu/sapi2/SapiClient;->access$700(Lcom/baidu/sapi2/SapiClient;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiClient$14;->val$callBack:Lcom/baidu/sapi2/SapiCallBack;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiClient$14;->val$username:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiClient$14;->val$helper:Lcom/baidu/sapi2/security/EncryptHelper;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/SapiClient;->access$1400(Lcom/baidu/sapi2/SapiClient;ILcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/sapi2/security/EncryptHelper;)V

    return-void
.end method
