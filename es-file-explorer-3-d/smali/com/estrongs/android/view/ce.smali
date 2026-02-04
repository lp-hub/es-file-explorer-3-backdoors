.class public Lcom/estrongs/android/view/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/d;


# instance fields
.field a:I

.field final synthetic b:Lcom/estrongs/android/view/bu;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/bu;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/ce;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/g;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    iget-object v0, v0, Lcom/estrongs/android/view/bu;->af:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->r()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    iget-object v0, v0, Lcom/estrongs/android/view/bu;->af:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->al()I

    move-result v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/cg;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/estrongs/android/view/cg;

    invoke-direct {v1}, Lcom/estrongs/android/view/cg;-><init>()V

    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/view/cg;->h:Landroid/widget/TextView;

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/cg;->g:Landroid/widget/ImageView;

    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/view/cg;->i:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/estrongs/android/view/cg;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/cg;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object p1, v1, Lcom/estrongs/android/view/cg;->f:Landroid/view/View;

    const v0, 0x7f080201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    :cond_0
    return-object v1
.end method

.method public a(Lcom/estrongs/android/widget/e;I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/bu;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "item_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v2}, Lcom/estrongs/android/view/bu;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->at(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    instance-of v1, v0, Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;

    if-nez v1, :cond_10

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->i:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v2}, Lcom/estrongs/android/view/bu;->A()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v2, p2}, Lcom/estrongs/android/view/bu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->p()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/estrongs/android/view/cg;

    iget-object v2, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->az(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->ag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_4
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/d;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0, v6}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/fs/g;Z)Lcom/estrongs/fs/g;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    const v2, -0x5a5a5b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {v1, v6}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->E()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->p()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->ah(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200d9

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->ai(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200d6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->aj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->ak(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/estrongs/android/view/cg;->g:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    const v3, 0x7f0200da

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    iget-object v1, v1, Lcom/estrongs/android/view/cg;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_c
    if-eqz v1, :cond_d

    invoke-static {v1}, Lcom/estrongs/android/d/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-array v0, v6, [Z

    aput-boolean v5, v0, v5

    invoke-static {v1, v6, v0}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v6}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0

    :cond_d
    if-nez p2, :cond_e

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/estrongs/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "makeAndAddView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_f

    :cond_e
    if-lez p2, :cond_0

    :cond_f
    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/bu;->i(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->Y()Lcom/estrongs/android/d/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/ce;->b:Lcom/estrongs/android/view/bu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bu;->Y()Lcom/estrongs/android/d/i;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, p2, v0, v2}, Lcom/estrongs/android/d/i;->a(ILcom/estrongs/fs/g;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/estrongs/android/d/d;->e(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/e;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/widget/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ce;->a(Landroid/view/View;)Lcom/estrongs/android/view/cg;

    move-result-object v0

    return-object v0
.end method
