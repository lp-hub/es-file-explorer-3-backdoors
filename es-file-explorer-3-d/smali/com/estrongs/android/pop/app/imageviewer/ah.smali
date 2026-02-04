.class final Lcom/estrongs/android/pop/app/imageviewer/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/aq;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/aq;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->a:Lcom/estrongs/android/ui/b/aq;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->a:Lcom/estrongs/android/ui/b/aq;

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ah;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method
