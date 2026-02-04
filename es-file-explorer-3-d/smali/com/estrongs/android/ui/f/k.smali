.class Lcom/estrongs/android/ui/f/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/estrongs/android/ui/f/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/f;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/k;->b:Lcom/estrongs/android/ui/f/f;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/k;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/f/k;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method
