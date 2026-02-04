.class Lcom/estrongs/android/view/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/g;

.field final synthetic b:Lcom/estrongs/android/view/bv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bv;Lcom/estrongs/fs/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/by;->b:Lcom/estrongs/android/view/bv;

    iput-object p2, p0, Lcom/estrongs/android/view/by;->a:Lcom/estrongs/fs/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/view/by;->b:Lcom/estrongs/android/view/bv;

    iget-object v1, v1, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/android/view/bu;

    iget-object v1, v1, Lcom/estrongs/android/view/bu;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/view/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bz;-><init>(Lcom/estrongs/android/view/by;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->a()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
