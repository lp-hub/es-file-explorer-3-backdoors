.class Lcom/estrongs/android/ui/b/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ap;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/b/ar;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/b/ar;->a(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ar;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ap;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ag;->access$300(Lcom/estrongs/android/ui/b/ag;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ap;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
