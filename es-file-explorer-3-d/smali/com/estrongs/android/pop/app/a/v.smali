.class Lcom/estrongs/android/pop/app/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/u;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v1

    if-nez p2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/v;->a:Lcom/estrongs/android/pop/app/a/u;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/u;->a:Lcom/estrongs/android/pop/app/a/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/af;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
