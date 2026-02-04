.class Lcom/estrongs/android/ui/pcs/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/q;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/q;->a:Lcom/estrongs/android/ui/pcs/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/q;->a:Lcom/estrongs/android/ui/pcs/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/q;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/d;->i(Lcom/estrongs/android/ui/pcs/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
