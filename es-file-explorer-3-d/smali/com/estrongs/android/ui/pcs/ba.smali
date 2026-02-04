.class Lcom/estrongs/android/ui/pcs/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/az;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/az;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ba;->a:Lcom/estrongs/android/ui/pcs/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ba;->a:Lcom/estrongs/android/ui/pcs/az;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/az;->a(Lcom/estrongs/android/ui/pcs/az;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->j()Lcom/estrongs/android/ui/pcs/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/a;->a()V

    return-void
.end method
