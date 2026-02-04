.class Lcom/estrongs/android/ui/e/fa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const v7, 0x7f0b025e

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/af;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    const v3, 0x7f0b0260

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    const v4, 0x7f0b025f

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/estrongs/android/ui/b/aq;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v4, Lcom/estrongs/android/ui/e/fb;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/ui/e/fb;-><init>(Lcom/estrongs/android/ui/e/fa;Lcom/estrongs/android/pop/app/a/af;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/b/aq;->c(Z)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/fa;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r()V

    return v6
.end method
