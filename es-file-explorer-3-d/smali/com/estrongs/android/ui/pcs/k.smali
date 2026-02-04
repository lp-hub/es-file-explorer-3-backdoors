.class Lcom/estrongs/android/ui/pcs/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/j;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/k;->b:Lcom/estrongs/android/ui/pcs/j;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/k;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
