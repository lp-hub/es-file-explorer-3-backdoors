.class Lcom/estrongs/android/pop/app/gq;
.super Lcom/estrongs/android/ui/e/gc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gq;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/e/gc;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/e/gc;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gq;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return-void
.end method
