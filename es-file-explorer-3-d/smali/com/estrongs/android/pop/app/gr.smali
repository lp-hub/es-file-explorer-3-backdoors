.class Lcom/estrongs/android/pop/app/gr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/e/gg;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Landroid/widget/ImageView;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gr;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    return-void
.end method
