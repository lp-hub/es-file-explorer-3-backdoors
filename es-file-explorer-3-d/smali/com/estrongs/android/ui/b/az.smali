.class Lcom/estrongs/android/ui/b/az;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/av;

.field private b:Lcom/estrongs/android/pop/q;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/b/av;Z)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/b/az;->d:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/az;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/ui/b/av;->a(Lcom/estrongs/android/ui/b/av;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/az;->b:Lcom/estrongs/android/pop/q;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/az;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->O()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/av;->b(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/az;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/av;->a(Lcom/estrongs/android/ui/b/av;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b034b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/av;->b(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/av;->b(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/av;->a(Lcom/estrongs/android/ui/b/av;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f08002f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f08023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/av;->c(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080240

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/b/az;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/az;->c:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/az;->a:Lcom/estrongs/android/ui/b/av;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/av;->b(Lcom/estrongs/android/ui/b/av;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
