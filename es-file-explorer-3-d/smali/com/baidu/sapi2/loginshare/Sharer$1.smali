.class Lcom/baidu/sapi2/loginshare/Sharer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/share/IShareListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/sapi2/loginshare/Sharer;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/loginshare/Sharer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/loginshare/Sharer$1;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareEvent(Lcom/baidu/sapi2/share/ShareModel;)V
    .locals 2

    iget-object v0, p1, Lcom/baidu/sapi2/share/ShareModel;->mAction:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/loginshare/Utils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getLoginAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$1;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$000(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getLogoutAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$1;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$100(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSyncAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$1;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$200(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/baidu/sapi2/loginshare/Keystore;->getSyncReplyAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/loginshare/Sharer$1;->this$0:Lcom/baidu/sapi2/loginshare/Sharer;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/loginshare/Sharer;->access$300(Lcom/baidu/sapi2/loginshare/Sharer;Lcom/baidu/sapi2/share/ShareModel;)V

    goto :goto_0
.end method
