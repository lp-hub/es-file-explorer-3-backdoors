.class Lcom/estrongs/android/view/aa;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/estrongs/fs/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/aa;->a(I)Lcom/estrongs/fs/g;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v0, v0, Lcom/estrongs/android/view/x;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f02003a

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0800f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-static {v1}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/d/d;->c(Lcom/estrongs/fs/g;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v1, v1, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    invoke-interface {v1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/view/ab;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/view/ab;-><init>(Lcom/estrongs/android/view/aa;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v3, v3, Lcom/estrongs/android/view/x;->f:Lcom/estrongs/android/d/i;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    invoke-static {v3}, Lcom/estrongs/android/view/x;->a(Lcom/estrongs/android/view/x;)V

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    iget-object v3, v3, Lcom/estrongs/android/view/x;->f:Lcom/estrongs/android/d/i;

    invoke-virtual {v3, p1, v1, v0}, Lcom/estrongs/android/d/i;->a(ILcom/estrongs/fs/g;Landroid/widget/ImageView;)V

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/x;

    invoke-virtual {v0}, Lcom/estrongs/android/view/x;->d()V

    return-void
.end method
