.class Lcom/estrongs/android/pop/app/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/q;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/estrongs/android/pop/app/b/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/w;Lcom/estrongs/android/pop/app/b/q;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/x;->c:Lcom/estrongs/android/pop/app/b/w;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/x;->a:Lcom/estrongs/android/pop/app/b/q;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/b/x;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/x;->c:Lcom/estrongs/android/pop/app/b/w;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/b/w;->j:Lcom/estrongs/android/pop/app/b/q;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/q;->e(Lcom/estrongs/android/pop/app/b/q;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/x;->c:Lcom/estrongs/android/pop/app/b/w;

    iget v1, v1, Lcom/estrongs/android/pop/app/b/w;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/x;->c:Lcom/estrongs/android/pop/app/b/w;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/b/w;->f:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/x;->c:Lcom/estrongs/android/pop/app/b/w;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/b/w;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/x;->b:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/pop/app/b/y;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/b/y;-><init>(Lcom/estrongs/android/pop/app/b/x;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method
