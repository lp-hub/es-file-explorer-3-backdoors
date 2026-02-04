.class Lcom/estrongs/android/ui/e/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ah;->b:[Lcom/estrongs/android/ui/b/de;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ah;->b:[Lcom/estrongs/android/ui/b/de;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/de;->hide()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/ah;->c:Lcom/estrongs/android/ui/e/af;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/ah;->c:Lcom/estrongs/android/ui/e/af;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/af;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
