.class Lcom/estrongs/android/ui/view/ao;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/view/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/am;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ao;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->a:Ljava/lang/String;

    const-string v1, "<is_binded>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->a:Ljava/lang/String;

    const-string v2, "</is_binded>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ao;->a:Ljava/lang/String;

    const-string v3, "<is_binded>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sinaweibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Sina_Register"

    const-string v2, "Sina_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thirdpart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ao;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "QQ_Register"

    const-string v2, "QQ_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "renren"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RenRen_Register"

    const-string v2, "RenRen_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ao;->b:Lcom/estrongs/android/ui/view/am;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/am;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->c(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method
