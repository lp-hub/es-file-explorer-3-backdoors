.class Lcom/estrongs/android/ui/pcs/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/h;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/h;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/i;-><init>(Lcom/estrongs/android/ui/pcs/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/h;->a:Lcom/estrongs/android/ui/pcs/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    return-void
.end method
