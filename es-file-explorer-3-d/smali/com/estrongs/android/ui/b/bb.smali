.class Lcom/estrongs/android/ui/b/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/b/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ba;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bb;->b:Lcom/estrongs/android/ui/b/ba;

    iput p2, p0, Lcom/estrongs/android/ui/b/bb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bb;->b:Lcom/estrongs/android/ui/b/ba;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ba;->a(Lcom/estrongs/android/ui/b/ba;)Lcom/estrongs/android/ui/b/bc;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/b/ba;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/p;

    iget-object v1, v0, Lcom/estrongs/android/util/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Lcom/estrongs/android/ui/b/bb;->a:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bb;->b:Lcom/estrongs/android/ui/b/ba;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ba;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/estrongs/android/util/p;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bb;->b:Lcom/estrongs/android/ui/b/ba;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/ba;->a(Lcom/estrongs/android/ui/b/ba;)Lcom/estrongs/android/ui/b/bc;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/estrongs/android/ui/b/bc;->a(I)V

    :cond_1
    return-void
.end method
