.class Lcom/estrongs/android/pop/app/de;
.super Lcom/estrongs/android/ui/view/IndicatorView;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/dd;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/view/IndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "playlist"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/dd;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/dd;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/az;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eq v0, p1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/app/de;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/dd;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/dd;->a(I)V

    :cond_1
    return-void
.end method
