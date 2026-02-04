.class Lcom/baidu/sapi2/loginshare/Sharer$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/loginshare/Sharer;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/loginshare/Sharer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/Sharer$2;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/baidu/sapi2/loginshare/Sharer$2;->sleep(J)V

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$2;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$400(Lcom/baidu/sapi2/loginshare/Sharer;)Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$2;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Sharer;->access$500(Lcom/baidu/sapi2/loginshare/Sharer;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/share/ShareModel;

    invoke-direct {v0}, Lcom/baidu/sapi2/share/ShareModel;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSyncAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/loginshare/Sharer$2;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$500(Lcom/baidu/sapi2/loginshare/Sharer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/sapi2/share/ShareAssistant;->getInstance(Landroid/content/Context;)Lcom/baidu/sapi2/share/ShareAssistant;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/share/ShareAssistant;->share(Lcom/baidu/sapi2/share/ShareModel;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/sapi2/log/Logger;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
