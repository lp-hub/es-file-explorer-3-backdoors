.class Lcom/estrongs/android/ui/pcs/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ad;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ad;->a:Lcom/estrongs/android/ui/pcs/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ad;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->l(Lcom/estrongs/android/ui/pcs/x;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ad;->a:Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ad;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->m(Lcom/estrongs/android/ui/pcs/x;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
