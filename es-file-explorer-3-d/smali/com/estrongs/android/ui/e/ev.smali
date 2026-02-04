.class Lcom/estrongs/android/ui/e/ev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/et;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/et;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ev;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ev;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ev;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ag;

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/util/List;Lcom/estrongs/android/pop/app/a/ag;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/b/bv;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    const v4, 0x7f0b03d6

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4}, Lcom/estrongs/android/ui/b/bv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/ui/e/ew;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/e/ew;-><init>(Lcom/estrongs/android/ui/e/ev;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/bv;->a(Lcom/estrongs/android/ui/b/by;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/bv;->show()V

    goto :goto_0
.end method
