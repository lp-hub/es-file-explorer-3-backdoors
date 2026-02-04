.class Lcom/estrongs/android/view/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aj;->a:Lcom/estrongs/android/view/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/aj;->a:Lcom/estrongs/android/view/ah;

    iget-object v0, v0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-static {v0}, Lcom/estrongs/android/view/af;->y(Lcom/estrongs/android/view/af;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
