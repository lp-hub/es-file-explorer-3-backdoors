.class Lcom/estrongs/android/pop/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/drag/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/drag/j;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p2, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M()Lcom/estrongs/android/pop/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    :cond_1
    return-void
.end method

.method public b(Lcom/estrongs/android/ui/drag/j;Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f03003d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/DragLayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/drag/DragLayer;)Lcom/estrongs/android/ui/drag/DragLayer;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragLayer;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/drag/l;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/ui/drag/l;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/drag/DragLayer;Lcom/estrongs/android/ui/drag/d;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/ui/drag/l;)Lcom/estrongs/android/ui/drag/l;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragLayer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/l;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/n;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragLayer;->setVisibility(I)V

    goto :goto_1
.end method
