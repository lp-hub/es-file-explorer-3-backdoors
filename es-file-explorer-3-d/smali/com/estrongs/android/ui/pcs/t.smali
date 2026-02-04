.class Lcom/estrongs/android/ui/pcs/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/ui/pcs/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/t;->b:Lcom/estrongs/android/ui/pcs/d;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/pcs/t;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/t;->b:Lcom/estrongs/android/ui/pcs/d;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/t;->a:Z

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/t;->b:Lcom/estrongs/android/ui/pcs/d;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/d;->n(Lcom/estrongs/android/ui/pcs/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/d;ZLjava/lang/String;)V

    return-void
.end method
