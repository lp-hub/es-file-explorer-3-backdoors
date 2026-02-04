.class Lcom/estrongs/android/pop/app/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/by;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/af;

.field final synthetic b:Lcom/estrongs/android/pop/app/a/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/k;Lcom/estrongs/android/pop/app/a/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/l;->b:Lcom/estrongs/android/pop/app/a/k;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/l;->a:Lcom/estrongs/android/pop/app/a/af;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/l;->b:Lcom/estrongs/android/pop/app/a/k;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/k;->b:Lcom/estrongs/android/pop/app/a/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03d7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/l;->b:Lcom/estrongs/android/pop/app/a/k;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/k;->b:Lcom/estrongs/android/pop/app/a/j;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/j;->a:Lcom/estrongs/android/pop/app/a/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/l;->a:Lcom/estrongs/android/pop/app/a/af;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;Lcom/estrongs/android/pop/app/a/af;Lcom/estrongs/android/pop/app/a/ag;)V

    goto :goto_0
.end method
