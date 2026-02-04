.class Lcom/estrongs/android/ui/pcs/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bv;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bv;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bv;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bv;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->c()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->a()V

    const-string v0, "http://wappass.baidu.com/passport/?getpass"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bv;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
