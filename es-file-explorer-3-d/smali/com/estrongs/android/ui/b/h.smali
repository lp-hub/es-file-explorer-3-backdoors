.class Lcom/estrongs/android/ui/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/b/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/g;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/h;->b:Lcom/estrongs/android/ui/b/g;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/h;->b:Lcom/estrongs/android/ui/b/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/g;->a:Lcom/estrongs/android/ui/b/f;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/h;->b:Lcom/estrongs/android/ui/b/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/g;->a:Lcom/estrongs/android/ui/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/f;->d:Lcom/estrongs/android/ui/b/i;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/h;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/h;->b:Lcom/estrongs/android/ui/b/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/g;->a:Lcom/estrongs/android/ui/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/f;->d:Lcom/estrongs/android/ui/b/i;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/i;->notifyDataSetChanged()V

    return-void
.end method
