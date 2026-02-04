.class Lcom/estrongs/android/ui/pcs/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/j;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/j;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->d(Lcom/estrongs/android/ui/pcs/d;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/j;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/d;->e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/k;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/pcs/k;-><init>(Lcom/estrongs/android/ui/pcs/j;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
