.class Lcom/estrongs/android/ui/pcs/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/cf;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cf;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->b(Lcom/estrongs/android/ui/pcs/bt;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    return-void
.end method
