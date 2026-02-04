.class Lcom/estrongs/android/ui/e/fh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ff;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fh;->a:Lcom/estrongs/android/ui/e/ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fh;->a:Lcom/estrongs/android/ui/e/ff;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ff;->c:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/fh;->a:Lcom/estrongs/android/ui/e/ff;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/ff;->c:Lcom/estrongs/android/ui/e/er;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    const v2, 0x7f0b0262

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
