.class Lcom/estrongs/android/ui/e/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/et;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/et;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/eu;->a:Lcom/estrongs/android/ui/e/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/eu;->a:Lcom/estrongs/android/ui/e/et;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/et;->a:Lcom/estrongs/android/ui/e/er;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/er;->a(Lcom/estrongs/android/ui/e/er;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r()V

    return-void
.end method
