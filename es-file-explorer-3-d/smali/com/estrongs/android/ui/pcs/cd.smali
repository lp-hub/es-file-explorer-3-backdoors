.class Lcom/estrongs/android/ui/pcs/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/cd;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/cd;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bt;->g(Lcom/estrongs/android/ui/pcs/bt;)V

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cd;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/cd;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->c()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->a()V

    return-void
.end method
