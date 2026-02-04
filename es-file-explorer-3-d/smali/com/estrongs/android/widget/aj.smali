.class Lcom/estrongs/android/widget/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/aj;->a:Lcom/estrongs/android/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/aj;->a:Lcom/estrongs/android/widget/ah;

    iget-object v0, v0, Lcom/estrongs/android/widget/ah;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->a_()V

    return-void
.end method
