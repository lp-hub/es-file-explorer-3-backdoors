.class Lcom/estrongs/android/ui/pcs/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->b(Lcom/estrongs/android/ui/pcs/x;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->c()V

    new-instance v0, Lcom/estrongs/android/ui/pcs/as;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/as;-><init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/x;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/as;->a()V

    return-void
.end method
