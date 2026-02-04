.class Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;
.super Landroid/os/Handler;


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/sapi2/utils/LoginProtectAcitivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/utils/LoginProtectAcitivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->activity:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/sapi2/model/LoginResponse;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "sapi_resultcode"

    iget v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorCode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sapi_resultmsg"

    iget-object v0, v0, Lcom/baidu/sapi2/model/LoginResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity$MyHandler;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;->setResult(I)V

    goto :goto_0
.end method
