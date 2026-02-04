.class Lcom/estrongs/android/ui/pcs/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bw;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bw;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bt;->d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bw;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bt;->h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/bw;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/bt;->c(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bw;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->c()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->a()V

    return-void
.end method
