.class Lcom/baidu/sapi2/http/SyncHttpClient$1;
.super Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/http/SyncHttpClient;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/http/SyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/http/SyncHttpClient$1;->this$0:Lcom/baidu/sapi2/http/SyncHttpClient;

    invoke-direct {p0}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/http/SyncHttpClient$1;->this$0:Lcom/baidu/sapi2/http/SyncHttpClient;

    iget-object v1, p0, Lcom/baidu/sapi2/http/SyncHttpClient$1;->this$0:Lcom/baidu/sapi2/http/SyncHttpClient;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/sapi2/http/SyncHttpClient;->onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/http/SyncHttpClient;->access$102(Lcom/baidu/sapi2/http/SyncHttpClient;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/http/SyncHttpClient$1;->this$0:Lcom/baidu/sapi2/http/SyncHttpClient;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/http/SyncHttpClient;->access$102(Lcom/baidu/sapi2/http/SyncHttpClient;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/sapi2/http/SyncHttpClient$1;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/http/SyncHttpClient$1;->this$0:Lcom/baidu/sapi2/http/SyncHttpClient;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/http/SyncHttpClient;->access$002(Lcom/baidu/sapi2/http/SyncHttpClient;I)I

    invoke-super {p0, p1}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    return-void
.end method
