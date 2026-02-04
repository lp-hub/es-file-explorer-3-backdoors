.class Lcom/estrongs/android/ui/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bn;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/f/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/f/g;Lcom/estrongs/android/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/f/h;->b:Lcom/estrongs/android/ui/f/g;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/h;->a:Lcom/estrongs/android/ui/a/a;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/a;->d:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
