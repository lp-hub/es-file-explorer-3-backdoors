.class Lcom/estrongs/android/ui/a/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;II)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/bn;->c:Lcom/estrongs/android/ui/a/s;

    iput p2, p0, Lcom/estrongs/android/ui/a/bn;->a:I

    iput p3, p0, Lcom/estrongs/android/ui/a/bn;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/estrongs/android/ui/a/bn;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/estrongs/android/ui/a/bn;->b:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/ui/a/bn;->c:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->e(Lcom/estrongs/android/ui/a/s;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
