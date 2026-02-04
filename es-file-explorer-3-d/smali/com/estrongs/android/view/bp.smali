.class public Lcom/estrongs/android/view/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/d;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/view/ar;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/view/ar;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/bp;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v1, 0x7f0b027b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bp;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v1, 0x7f0b027c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bp;->c:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/view/View;)Lcom/estrongs/android/view/bn;
    .locals 3

    const/4 v2, 0x0

    new-instance v1, Lcom/estrongs/android/view/bn;

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-direct {v1, v0}, Lcom/estrongs/android/view/bn;-><init>(Lcom/estrongs/android/view/ar;)V

    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/view/bn;->h:Landroid/widget/TextView;

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/view/bn;->g:Landroid/widget/ImageView;

    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/view/bn;->i:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/estrongs/android/view/bn;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/bn;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Lcom/estrongs/android/view/bn;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v2, v2, Lcom/estrongs/android/view/ar;->ab:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p1, v1, Lcom/estrongs/android/view/bn;->f:Landroid/view/View;

    return-object v1
.end method

.method private d(Landroid/view/View;)Lcom/estrongs/android/view/bn;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/estrongs/android/view/bn;

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-direct {v3, v0}, Lcom/estrongs/android/view/bn;-><init>(Lcom/estrongs/android/view/ar;)V

    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/view/bn;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ca;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    iget-object v0, v3, Lcom/estrongs/android/view/bn;->h:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    iget-object v0, v3, Lcom/estrongs/android/view/bn;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v1, v1, Lcom/estrongs/android/view/ar;->ab:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v3, Lcom/estrongs/android/view/bn;->i:Landroid/widget/CheckBox;

    iget-object v0, v3, Lcom/estrongs/android/view/bn;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, v3, Lcom/estrongs/android/view/bn;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-object p1, v3, Lcom/estrongs/android/view/bn;->f:Landroid/view/View;

    const v0, 0x7f0800f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/estrongs/android/view/bn;->g:Landroid/widget/ImageView;

    const v0, 0x7f080202

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    const v0, 0x7f080203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/view/bn;->a:Landroid/widget/TextView;

    const v0, 0x7f080204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/estrongs/android/view/bn;->b:Landroid/widget/TextView;

    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 7

    const v6, 0x7f08001a

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030055

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v2}, Lcom/estrongs/android/view/ar;->f(Lcom/estrongs/android/view/ar;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v3}, Lcom/estrongs/android/view/ar;->B()F

    move-result v3

    const-string v4, "abcwwww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/ar;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/ar;F)F

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v2}, Lcom/estrongs/android/view/ar;->f(Lcom/estrongs/android/view/ar;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f03005c

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v2}, Lcom/estrongs/android/view/ar;->g(Lcom/estrongs/android/view/ar;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v3}, Lcom/estrongs/android/view/ar;->B()F

    move-result v3

    const-string v4, "abcwww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/ar;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/ar;->b(Lcom/estrongs/android/view/ar;F)F

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v2}, Lcom/estrongs/android/view/ar;->g(Lcom/estrongs/android/view/ar;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput v5, p0, Lcom/estrongs/android/view/bp;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v2}, Lcom/estrongs/android/view/ar;->h(Lcom/estrongs/android/view/ar;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v3}, Lcom/estrongs/android/view/ar;->B()F

    move-result v3

    const-string v4, "abcww"

    invoke-static {v2, v0, v3, v4}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/android/view/ar;Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v3, v2}, Lcom/estrongs/android/view/ar;->c(Lcom/estrongs/android/view/ar;F)F

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v2}, Lcom/estrongs/android/view/ar;->h(Lcom/estrongs/android/view/ar;)F

    move-result v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iput v3, p0, Lcom/estrongs/android/view/bp;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030059

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    iput v3, p0, Lcom/estrongs/android/view/bp;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f03005a

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iput v3, p0, Lcom/estrongs/android/view/bp;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f03005b

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    iput v3, p0, Lcom/estrongs/android/view/bp;->a:I

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030057

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030058

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->af:Landroid/view/LayoutInflater;

    const v1, 0x7f030059

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/fs/g;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/bp;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcom/estrongs/android/view/bn;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v0, v0, Lcom/estrongs/android/view/ar;->k:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/bp;->c(Landroid/view/View;)Lcom/estrongs/android/view/bn;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v1, v1, Lcom/estrongs/android/view/ar;->k:I

    iput v1, v0, Lcom/estrongs/android/view/bn;->d:I

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/view/bp;->d(Landroid/view/View;)Lcom/estrongs/android/view/bn;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/e;I)V
    .locals 12

    const/4 v11, 0x0

    const v10, 0x7f020041

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/view/bn;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ar;->e(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, v1, Lcom/estrongs/fs/impl/m/a;

    if-eqz v2, :cond_26

    check-cast v1, Lcom/estrongs/fs/impl/m/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/m/a;->a()Lcom/estrongs/fs/g;

    move-result-object v2

    :goto_1
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->f:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/DragGrid;->a(Lcom/estrongs/fs/g;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    instance-of v1, v1, Lcom/estrongs/android/view/EllipsizedTextView;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    check-cast v1, Lcom/estrongs/android/view/EllipsizedTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/EllipsizedTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    check-cast v1, Lcom/estrongs/android/view/EllipsizedTextView;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/android/view/EllipsizedTextView;->a(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v3, v3, Lcom/estrongs/android/view/ar;->ab:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    instance-of v1, v2, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/c;->d()I

    move-result v1

    const/4 v3, 0x3

    if-ne v3, v1, :cond_d

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v3}, Lcom/estrongs/android/view/ar;->i(Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v3

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_3
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/d/d;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/estrongs/android/d/d;->d(Lcom/estrongs/fs/g;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/android/d/d;->c(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-static {v2, v9}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_4
    invoke-static {v2}, Lcom/estrongs/fs/c/d;->c(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02016a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_5
    instance-of v1, v2, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/ui/pcs/bt;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f02016e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v1}, Lcom/estrongs/android/view/ar;->j(Lcom/estrongs/android/view/ar;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    sget-object v3, Lcom/estrongs/fs/l;->i:Lcom/estrongs/fs/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/estrongs/fs/l;->j:Lcom/estrongs/fs/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_6
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    const v3, 0x7f0b019a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v1}, Lcom/estrongs/android/view/ar;->j(Lcom/estrongs/android/view/ar;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/estrongs/android/view/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_7
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v1}, Lcom/estrongs/android/view/ar;->j(Lcom/estrongs/android/view/ar;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, v0, Lcom/estrongs/android/view/bn;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_8
    iget-object v0, p1, Lcom/estrongs/android/widget/e;->i:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-boolean v1, v1, Lcom/estrongs/android/view/ar;->l:Z

    if-eqz v1, :cond_24

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ar;->h(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez p2, :cond_21

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ar;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/h;

    if-nez v0, :cond_25

    new-instance v1, Lcom/estrongs/android/ui/drag/h;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/h;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/h;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/h;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->o:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v3, p2}, Lcom/estrongs/android/view/ar;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    new-instance v3, Lcom/estrongs/android/ui/drag/h;

    invoke-direct {v3}, Lcom/estrongs/android/ui/drag/h;-><init>()V

    invoke-virtual {v3, p2}, Lcom/estrongs/android/ui/drag/h;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/drag/h;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/android/ui/drag/h;->a(Landroid/graphics/Rect;Lcom/estrongs/android/ui/drag/h;Landroid/view/View;)V

    :cond_a
    :goto_a
    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02010b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_b
    sget-boolean v1, Lcom/estrongs/android/pop/m;->W:Z

    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_c
    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x2

    if-ne v3, v1, :cond_2

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-static {v3}, Lcom/estrongs/android/view/ar;->i(Lcom/estrongs/android/view/ar;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v3

    const v4, 0x7f090024

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_e
    invoke-static {v2}, Lcom/estrongs/android/d/d;->b(Lcom/estrongs/fs/g;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-array v1, v9, [Z

    aput-boolean v8, v1, v8

    invoke-static {v2, v9, v1}, Lcom/estrongs/android/d/d;->a(Lcom/estrongs/fs/g;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    aget-boolean v1, v1, v8

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/estrongs/android/d/d;->f(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v9}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_4

    :cond_f
    if-nez p2, :cond_10

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/estrongs/a/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "makeAndAddView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_11

    :cond_10
    if-lez p2, :cond_3

    :cond_11
    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ar;->i(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->J:Lcom/estrongs/android/d/i;

    iget-object v3, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, p2, v2, v3}, Lcom/estrongs/android/d/i;->a(ILcom/estrongs/fs/g;Landroid/widget/ImageView;)V

    goto/16 :goto_4

    :cond_12
    invoke-interface {v2}, Lcom/estrongs/fs/g;->isLink()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->g:Landroid/widget/ImageView;

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_13
    sget-object v3, Lcom/estrongs/fs/l;->k:Lcom/estrongs/fs/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/estrongs/fs/l;->l:Lcom/estrongs/fs/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    const v3, 0x7f0b004a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_15
    sget-object v3, Lcom/estrongs/fs/l;->m:Lcom/estrongs/fs/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    sget-object v3, Lcom/estrongs/fs/l;->n:Lcom/estrongs/fs/l;

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    const v3, 0x7f0b01a1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_17
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_18
    invoke-interface {v2}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "child_count"

    invoke-interface {v2, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child_count"

    invoke-interface {v2, v4}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/bp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_19
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    const v3, 0x7f0b005e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_1a
    instance-of v1, v2, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_1b

    iget-object v3, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Lcom/estrongs/fs/impl/b/c;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1b
    invoke-interface {v2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-gez v1, :cond_1c

    instance-of v1, v2, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    const v3, 0x7f0b007d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_6

    :cond_1c
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->c:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_1d
    instance-of v1, v2, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/estrongs/android/view/bn;->a:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_1e
    iget-object v1, v0, Lcom/estrongs/android/view/bn;->a:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/estrongs/fs/c/d;->a(Lcom/estrongs/fs/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/estrongs/android/view/bn;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_1f
    iget-object v3, v0, Lcom/estrongs/android/view/bn;->b:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_20

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v1, v1, Lcom/estrongs/android/view/ar;->ad:Landroid/app/Activity;

    const v2, 0x7f0b04e5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/estrongs/android/view/bn;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_20
    sget-object v1, Lcom/estrongs/android/view/ar;->H:Ljava/text/DateFormat;

    invoke-interface {v2}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ar;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/h;

    if-nez v0, :cond_22

    new-instance v1, Lcom/estrongs/android/ui/drag/h;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/h;-><init>()V

    invoke-virtual {v1, p2}, Lcom/estrongs/android/ui/drag/h;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/h;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/h;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->o:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v2, p2}, Lcom/estrongs/android/view/ar;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_22
    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/drag/h;->a(I)V

    iget-object v1, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    check-cast v1, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/h;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/h;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/drag/DragGrid;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/drag/h;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/h;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragGrid;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_23
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget-object v0, v0, Lcom/estrongs/android/view/ar;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/view/ar;->e(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/h;->e()V

    goto/16 :goto_0

    :cond_24
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p1, Lcom/estrongs/android/widget/e;->f:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_25
    move-object v1, v0

    goto/16 :goto_9

    :cond_26
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public a(Lcom/estrongs/android/widget/e;)Z
    .locals 2

    if-eqz p1, :cond_0

    check-cast p1, Lcom/estrongs/android/view/bn;

    iget v0, p1, Lcom/estrongs/android/view/bn;->d:I

    iget-object v1, p0, Lcom/estrongs/android/view/bp;->d:Lcom/estrongs/android/view/ar;

    iget v1, v1, Lcom/estrongs/android/view/ar;->k:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Landroid/view/View;)Lcom/estrongs/android/widget/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/bp;->a(Landroid/view/View;)Lcom/estrongs/android/view/bn;

    move-result-object v0

    return-object v0
.end method
