.class Lcom/estrongs/android/ui/e/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-array v1, v5, [Lcom/estrongs/android/ui/b/de;

    new-instance v2, Lcom/estrongs/android/ui/e/ag;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/e/ag;-><init>(Lcom/estrongs/android/ui/e/af;[Lcom/estrongs/android/ui/b/de;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/estrongs/android/ui/e/ah;

    invoke-direct {v2, p0, v0, v1}, Lcom/estrongs/android/ui/e/ah;-><init>(Lcom/estrongs/android/ui/e/af;Landroid/os/Handler;[Lcom/estrongs/android/ui/b/de;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/ah;->start()V

    :goto_0
    return v5

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
