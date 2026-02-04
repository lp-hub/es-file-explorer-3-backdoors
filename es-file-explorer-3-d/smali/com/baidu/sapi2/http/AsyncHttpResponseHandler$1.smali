.class Lcom/baidu/sapi2/http/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler$1;->this$0:Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler$1;->this$0:Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
