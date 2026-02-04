.class Lcom/estrongs/android/ui/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/a/b;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/b;->b(I)I

    move-result v2

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/a/b;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "baidu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void

    :cond_1
    const-string v3, "box"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "skydrive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gdrive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "dropbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "kuaipan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "megacloud"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "kanbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vdisk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "nettype"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v3, "pcs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "pcs"

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v2, "force_reg_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "force_reg_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "pcs"

    invoke-static {v1, v0, v2}, Lcom/estrongs/fs/impl/i/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bduss"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    const-string v2, "pcs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quikreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v3, Lcom/estrongs/android/ui/b/cf;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-static {v4}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/b/cf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, v1, v0}, Lcom/estrongs/android/ui/b/cf;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/b/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/x;->a:Lcom/estrongs/android/ui/b/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/w;->a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/cf;->b(Ljava/lang/String;)Lcom/estrongs/android/ui/b/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/cf;->a()V

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method
