.class Lcom/estrongs/android/ui/pcs/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/au;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/au;->a:Lcom/estrongs/android/ui/pcs/as;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/au;->a:Lcom/estrongs/android/ui/pcs/as;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/as;->b(Lcom/estrongs/android/ui/pcs/as;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/as;->b(Lcom/estrongs/android/ui/pcs/as;Ljava/lang/String;)V

    return-void
.end method
