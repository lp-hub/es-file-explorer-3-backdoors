.class Lcom/estrongs/android/ui/b/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/az;

.field final synthetic b:Lcom/estrongs/android/ui/b/av;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/av;Lcom/estrongs/android/ui/b/az;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/aw;->b:Lcom/estrongs/android/ui/b/av;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/aw;->a:Lcom/estrongs/android/ui/b/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/b/aw;->a:Lcom/estrongs/android/ui/b/az;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/b/az;->a(I)V

    return-void
.end method
