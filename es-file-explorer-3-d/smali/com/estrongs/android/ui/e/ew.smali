.class Lcom/estrongs/android/ui/e/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/by;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/ev;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ev;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ew;->b:Lcom/estrongs/android/ui/e/ev;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ew;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/a/aj;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ew;->b:Lcom/estrongs/android/ui/e/ev;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03d7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/ew;->b:Lcom/estrongs/android/ui/e/ev;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/ev;->b:Lcom/estrongs/android/ui/e/et;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ew;->a:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/util/List;Lcom/estrongs/android/pop/app/a/ag;)V

    goto :goto_0
.end method
