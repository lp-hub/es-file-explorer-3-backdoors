.class Lcom/estrongs/android/ui/view/an;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/view/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/an;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth_code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/an;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/an;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
